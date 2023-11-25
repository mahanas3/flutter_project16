import 'package:flutter_project16/model/model1.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Db {
  Database? data;

  Future<void> initDatabase() async {
    data = await openDatabase(
      join(await getDatabasesPath(), 'doggie_database.db'),
      onCreate: (db, version) async {
        // Run the CREATE TABLE statement on the database.
        return db.execute(
          'CREATE TABLE students( name TEXT, age INTEGER,mark INTEGER)',
        );
      },
    );
  }

  Future<void> insertDog(Student student) async {
    final datacalling = Db();
    await datacalling.initDatabase();

    // Get a reference to the database.
    final db = await data;

    // Insert the Dog into the correct table. You might also specify the
    // `conflictAlgorithm` to use in case the same dog is inserted twice.
    //
    // In this case, replace any previous data.
    await db?.insert(
      'dogs',
      student.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}
