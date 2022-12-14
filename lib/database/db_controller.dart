import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DbController {
  DbController._();

  late Database _database;
  static DbController? _instance;

  factory DbController() {
    return _instance ??= DbController._();
  }

  Database get database => _database;
  Future<void> initDatabase() async {
    Directory directory =
    await getApplicationDocumentsDirectory();
    String path = join(directory.path, 'app_db.sql');
    _database = await openDatabase(
      path,
      version:3,
      onOpen: (Database database) {},

      onCreate: (Database database , int version) async{

        await database.execute('CREATE TABLE IF NOT EXISTS cart('
            'id INTEGER PRIMARY KEY AUTOINCREMENT ,'
            'total REAL NOT NULL,'
            'count INTEGER NOT NULL,'
            'price REAL NOT NULL,'
            'user_id INTEGER,'
            'product_id INTEGER,'
            'product_name Text,'
            'product_image Text)');

      },
      onUpgrade: (Database database , int oldVersion , int newVersion) async{

        await database.execute('CREATE TABLE IF NOT EXISTS cart('
            'id INTEGER PRIMARY KEY AUTOINCREMENT ,'
            'total REAL NOT NULL,'
            'count INTEGER NOT NULL,'
            'price REAL NOT NULL,'
            'user_id INTEGER,'
            'product_id INTEGER,'
            'product_name Text,'
            'product_image Text)');
      },
      onDowngrade: (Database database , int oldVersion , int newVersion){},
    );


  }
  // Future<void> initDatabase() async {
  //   Directory directory = await getApplicationDocumentsDirectory();
  //   String path = join(directory.path, 'app_db.sql');
  //   _database = await openDatabase(
  //     path,
  //     version: 1,
  //     onOpen: (Database database) {},
  //     onCreate: (Database database, int version) async {
  //       //TODO: Create tables (users, products, cart) USING SQL
  //
  //
  //
  //
  //       await database.execute('CREATE TABLE cart ('
  //           'id INTEGER PRIMARY KEY AUTOINCREMENT,'
  //           'total REAL NOT NULL,'
  //           'count INTEGER NOT NULL,'
  //           'price REAL NOT NULL,'
  //           'user_id INTEGER,'
  //           'product_id INTEGER,'
  //           'product_name_En TEXT,'
  //           'product_name_Ar TEXT,'
  //           'product_image TEXT,'
  //
  //           ')');
  //     },
  //     onUpgrade: (Database database, int oldVersion, int newVersion) {},
  //     onDowngrade: (Database database, int oldVersion, int newVersion) {},
  //   );
  // }
}
