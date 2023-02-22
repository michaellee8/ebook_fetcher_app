import 'package:drift/drift.dart';

part 'drift_schema.g.dart';

class Books extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text()();

  TextColumn get url => text()();

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

  IntColumn get book => integer()();
}

@DriftDatabase(tables: [Books, Chapters])
class AppDatabase extends _$AppDatabase {}
