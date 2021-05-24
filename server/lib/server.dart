import 'package:mongo_dart/mongo_dart.dart';
import 'package:sevr/sevr.dart';

void start() async {
  // ignore: todo
  // TODO Log into database
  final db = await Db.create(
      'mongodb+srv://coffeeStockAdmin:COFFEEstock(!20102@cluster-coffeestock-0.gdkjx.mongodb.net/coffeestock?retryWrites=true&w=majority');
  await db.open();
  final coll = db.collection('coffee');

  // Create server
  const port = 8081;
  final serv = Sevr();

  final corsPaths = ['/', '/:id'];
  for (var route in corsPaths) {
    serv.options(route, [
      (req, res) {
        setCors(req, res);
        return res.status(200);
      }
    ]);
  }

  serv.get('/', [
    setCors,
    (ServRequest req, ServResponse res) async {
      final coffee = await coll.find().toList();
      return res.status(200).json({'coffee': coffee});
    }
  ]);

  serv.post('/', [
    setCors,
    (ServRequest req, ServResponse res) async {
      await coll.insertOne(req.body);
      return res.json (
        await coll.findOne(where.eq('name', req.body['name'])),
      );
    }
  ]);

  serv.delete('/:id', [
    setCors,
    (ServRequest req, ServResponse res) async {
      await coll
          .remove(where.eq('_id', ObjectId.fromHexString(req.params['id'])));
      return res.status(200);
    }
  ]);

  // Listen for connections
  serv.listen(port, callback: () {
    print('Server listening on port: $port');
  });
}

void setCors(ServRequest req, ServResponse res) {
  res.response.headers.add('Access-Control-Allow-Origin', '*');
  res.response.headers.add('Access-Control-Allow-Methods', 'GET, POST, DELETE');
  res.response.headers
      .add('Access-Control-Allow-Headers', 'Origin, Content-Type');
}
