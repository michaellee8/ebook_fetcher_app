import 'package:drift/drift.dart';
import 'dart:io';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'drift_db.g.dart';

class Books extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text()();

  TextColumn get url => text().unique()();

  IntColumn get lastChapter => integer()();

  DateTimeColumn get lastUpdate => dateTime()();
}

class Chapters extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text()();

  TextColumn get url => text()();

  IntColumn get chapterSeqNum => integer()();

  IntColumn get chapterNum => integer()();

  TextColumn get htmlContent => text().nullable()();

  DateTimeColumn get fetchedAt => dateTime()();

  IntColumn get book => integer().references(Books, #id)();
}

@DriftDatabase(tables: [Books, Chapters])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

@riverpod
AppDatabase appDatabase(AppDatabaseRef ref) {
  return AppDatabase();
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
