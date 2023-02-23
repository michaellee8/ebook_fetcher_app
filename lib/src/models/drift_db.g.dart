// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_db.dart';

// ignore_for_file: type=lint
class $BooksTable extends Books with TableInfo<$BooksTable, Book> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BooksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _lastChapterMeta =
      const VerificationMeta('lastChapter');
  @override
  late final GeneratedColumn<int> lastChapter = GeneratedColumn<int>(
      'last_chapter', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _lastUpdateMeta =
      const VerificationMeta('lastUpdate');
  @override
  late final GeneratedColumn<DateTime> lastUpdate = GeneratedColumn<DateTime>(
      'last_update', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, url, lastChapter, lastUpdate];
  @override
  String get aliasedName => _alias ?? 'books';
  @override
  String get actualTableName => 'books';
  @override
  VerificationContext validateIntegrity(Insertable<Book> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('last_chapter')) {
      context.handle(
          _lastChapterMeta,
          lastChapter.isAcceptableOrUnknown(
              data['last_chapter']!, _lastChapterMeta));
    } else if (isInserting) {
      context.missing(_lastChapterMeta);
    }
    if (data.containsKey('last_update')) {
      context.handle(
          _lastUpdateMeta,
          lastUpdate.isAcceptableOrUnknown(
              data['last_update']!, _lastUpdateMeta));
    } else if (isInserting) {
      context.missing(_lastUpdateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Book map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Book(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
      lastChapter: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_chapter'])!,
      lastUpdate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}last_update'])!,
    );
  }

  @override
  $BooksTable createAlias(String alias) {
    return $BooksTable(attachedDatabase, alias);
  }
}

class Book extends DataClass implements Insertable<Book> {
  final int id;
  final String title;
  final String url;
  final int lastChapter;
  final DateTime lastUpdate;
  const Book(
      {required this.id,
      required this.title,
      required this.url,
      required this.lastChapter,
      required this.lastUpdate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['url'] = Variable<String>(url);
    map['last_chapter'] = Variable<int>(lastChapter);
    map['last_update'] = Variable<DateTime>(lastUpdate);
    return map;
  }

  BooksCompanion toCompanion(bool nullToAbsent) {
    return BooksCompanion(
      id: Value(id),
      title: Value(title),
      url: Value(url),
      lastChapter: Value(lastChapter),
      lastUpdate: Value(lastUpdate),
    );
  }

  factory Book.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Book(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      url: serializer.fromJson<String>(json['url']),
      lastChapter: serializer.fromJson<int>(json['lastChapter']),
      lastUpdate: serializer.fromJson<DateTime>(json['lastUpdate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'url': serializer.toJson<String>(url),
      'lastChapter': serializer.toJson<int>(lastChapter),
      'lastUpdate': serializer.toJson<DateTime>(lastUpdate),
    };
  }

  Book copyWith(
          {int? id,
          String? title,
          String? url,
          int? lastChapter,
          DateTime? lastUpdate}) =>
      Book(
        id: id ?? this.id,
        title: title ?? this.title,
        url: url ?? this.url,
        lastChapter: lastChapter ?? this.lastChapter,
        lastUpdate: lastUpdate ?? this.lastUpdate,
      );
  @override
  String toString() {
    return (StringBuffer('Book(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('url: $url, ')
          ..write('lastChapter: $lastChapter, ')
          ..write('lastUpdate: $lastUpdate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, url, lastChapter, lastUpdate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Book &&
          other.id == this.id &&
          other.title == this.title &&
          other.url == this.url &&
          other.lastChapter == this.lastChapter &&
          other.lastUpdate == this.lastUpdate);
}

class BooksCompanion extends UpdateCompanion<Book> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> url;
  final Value<int> lastChapter;
  final Value<DateTime> lastUpdate;
  const BooksCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.url = const Value.absent(),
    this.lastChapter = const Value.absent(),
    this.lastUpdate = const Value.absent(),
  });
  BooksCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String url,
    required int lastChapter,
    required DateTime lastUpdate,
  })  : title = Value(title),
        url = Value(url),
        lastChapter = Value(lastChapter),
        lastUpdate = Value(lastUpdate);
  static Insertable<Book> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? url,
    Expression<int>? lastChapter,
    Expression<DateTime>? lastUpdate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (url != null) 'url': url,
      if (lastChapter != null) 'last_chapter': lastChapter,
      if (lastUpdate != null) 'last_update': lastUpdate,
    });
  }

  BooksCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? url,
      Value<int>? lastChapter,
      Value<DateTime>? lastUpdate}) {
    return BooksCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      url: url ?? this.url,
      lastChapter: lastChapter ?? this.lastChapter,
      lastUpdate: lastUpdate ?? this.lastUpdate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (lastChapter.present) {
      map['last_chapter'] = Variable<int>(lastChapter.value);
    }
    if (lastUpdate.present) {
      map['last_update'] = Variable<DateTime>(lastUpdate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BooksCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('url: $url, ')
          ..write('lastChapter: $lastChapter, ')
          ..write('lastUpdate: $lastUpdate')
          ..write(')'))
        .toString();
  }
}

class $ChaptersTable extends Chapters with TableInfo<$ChaptersTable, Chapter> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ChaptersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _chapterSeqNumMeta =
      const VerificationMeta('chapterSeqNum');
  @override
  late final GeneratedColumn<int> chapterSeqNum = GeneratedColumn<int>(
      'chapter_seq_num', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _chapterNumMeta =
      const VerificationMeta('chapterNum');
  @override
  late final GeneratedColumn<int> chapterNum = GeneratedColumn<int>(
      'chapter_num', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _htmlContentMeta =
      const VerificationMeta('htmlContent');
  @override
  late final GeneratedColumn<String> htmlContent = GeneratedColumn<String>(
      'html_content', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _fetchedAtMeta =
      const VerificationMeta('fetchedAt');
  @override
  late final GeneratedColumn<DateTime> fetchedAt = GeneratedColumn<DateTime>(
      'fetched_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _bookMeta = const VerificationMeta('book');
  @override
  late final GeneratedColumn<int> book = GeneratedColumn<int>(
      'book', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES books (id)'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, url, chapterSeqNum, chapterNum, htmlContent, fetchedAt, book];
  @override
  String get aliasedName => _alias ?? 'chapters';
  @override
  String get actualTableName => 'chapters';
  @override
  VerificationContext validateIntegrity(Insertable<Chapter> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('chapter_seq_num')) {
      context.handle(
          _chapterSeqNumMeta,
          chapterSeqNum.isAcceptableOrUnknown(
              data['chapter_seq_num']!, _chapterSeqNumMeta));
    } else if (isInserting) {
      context.missing(_chapterSeqNumMeta);
    }
    if (data.containsKey('chapter_num')) {
      context.handle(
          _chapterNumMeta,
          chapterNum.isAcceptableOrUnknown(
              data['chapter_num']!, _chapterNumMeta));
    } else if (isInserting) {
      context.missing(_chapterNumMeta);
    }
    if (data.containsKey('html_content')) {
      context.handle(
          _htmlContentMeta,
          htmlContent.isAcceptableOrUnknown(
              data['html_content']!, _htmlContentMeta));
    }
    if (data.containsKey('fetched_at')) {
      context.handle(_fetchedAtMeta,
          fetchedAt.isAcceptableOrUnknown(data['fetched_at']!, _fetchedAtMeta));
    } else if (isInserting) {
      context.missing(_fetchedAtMeta);
    }
    if (data.containsKey('book')) {
      context.handle(
          _bookMeta, book.isAcceptableOrUnknown(data['book']!, _bookMeta));
    } else if (isInserting) {
      context.missing(_bookMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Chapter map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Chapter(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
      chapterSeqNum: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}chapter_seq_num'])!,
      chapterNum: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}chapter_num'])!,
      htmlContent: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}html_content']),
      fetchedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}fetched_at'])!,
      book: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}book'])!,
    );
  }

  @override
  $ChaptersTable createAlias(String alias) {
    return $ChaptersTable(attachedDatabase, alias);
  }
}

class Chapter extends DataClass implements Insertable<Chapter> {
  final int id;
  final String title;
  final String url;
  final int chapterSeqNum;
  final int chapterNum;
  final String? htmlContent;
  final DateTime fetchedAt;
  final int book;
  const Chapter(
      {required this.id,
      required this.title,
      required this.url,
      required this.chapterSeqNum,
      required this.chapterNum,
      this.htmlContent,
      required this.fetchedAt,
      required this.book});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['url'] = Variable<String>(url);
    map['chapter_seq_num'] = Variable<int>(chapterSeqNum);
    map['chapter_num'] = Variable<int>(chapterNum);
    if (!nullToAbsent || htmlContent != null) {
      map['html_content'] = Variable<String>(htmlContent);
    }
    map['fetched_at'] = Variable<DateTime>(fetchedAt);
    map['book'] = Variable<int>(book);
    return map;
  }

  ChaptersCompanion toCompanion(bool nullToAbsent) {
    return ChaptersCompanion(
      id: Value(id),
      title: Value(title),
      url: Value(url),
      chapterSeqNum: Value(chapterSeqNum),
      chapterNum: Value(chapterNum),
      htmlContent: htmlContent == null && nullToAbsent
          ? const Value.absent()
          : Value(htmlContent),
      fetchedAt: Value(fetchedAt),
      book: Value(book),
    );
  }

  factory Chapter.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Chapter(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      url: serializer.fromJson<String>(json['url']),
      chapterSeqNum: serializer.fromJson<int>(json['chapterSeqNum']),
      chapterNum: serializer.fromJson<int>(json['chapterNum']),
      htmlContent: serializer.fromJson<String?>(json['htmlContent']),
      fetchedAt: serializer.fromJson<DateTime>(json['fetchedAt']),
      book: serializer.fromJson<int>(json['book']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'url': serializer.toJson<String>(url),
      'chapterSeqNum': serializer.toJson<int>(chapterSeqNum),
      'chapterNum': serializer.toJson<int>(chapterNum),
      'htmlContent': serializer.toJson<String?>(htmlContent),
      'fetchedAt': serializer.toJson<DateTime>(fetchedAt),
      'book': serializer.toJson<int>(book),
    };
  }

  Chapter copyWith(
          {int? id,
          String? title,
          String? url,
          int? chapterSeqNum,
          int? chapterNum,
          Value<String?> htmlContent = const Value.absent(),
          DateTime? fetchedAt,
          int? book}) =>
      Chapter(
        id: id ?? this.id,
        title: title ?? this.title,
        url: url ?? this.url,
        chapterSeqNum: chapterSeqNum ?? this.chapterSeqNum,
        chapterNum: chapterNum ?? this.chapterNum,
        htmlContent: htmlContent.present ? htmlContent.value : this.htmlContent,
        fetchedAt: fetchedAt ?? this.fetchedAt,
        book: book ?? this.book,
      );
  @override
  String toString() {
    return (StringBuffer('Chapter(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('url: $url, ')
          ..write('chapterSeqNum: $chapterSeqNum, ')
          ..write('chapterNum: $chapterNum, ')
          ..write('htmlContent: $htmlContent, ')
          ..write('fetchedAt: $fetchedAt, ')
          ..write('book: $book')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, title, url, chapterSeqNum, chapterNum, htmlContent, fetchedAt, book);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Chapter &&
          other.id == this.id &&
          other.title == this.title &&
          other.url == this.url &&
          other.chapterSeqNum == this.chapterSeqNum &&
          other.chapterNum == this.chapterNum &&
          other.htmlContent == this.htmlContent &&
          other.fetchedAt == this.fetchedAt &&
          other.book == this.book);
}

class ChaptersCompanion extends UpdateCompanion<Chapter> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> url;
  final Value<int> chapterSeqNum;
  final Value<int> chapterNum;
  final Value<String?> htmlContent;
  final Value<DateTime> fetchedAt;
  final Value<int> book;
  const ChaptersCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.url = const Value.absent(),
    this.chapterSeqNum = const Value.absent(),
    this.chapterNum = const Value.absent(),
    this.htmlContent = const Value.absent(),
    this.fetchedAt = const Value.absent(),
    this.book = const Value.absent(),
  });
  ChaptersCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String url,
    required int chapterSeqNum,
    required int chapterNum,
    this.htmlContent = const Value.absent(),
    required DateTime fetchedAt,
    required int book,
  })  : title = Value(title),
        url = Value(url),
        chapterSeqNum = Value(chapterSeqNum),
        chapterNum = Value(chapterNum),
        fetchedAt = Value(fetchedAt),
        book = Value(book);
  static Insertable<Chapter> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? url,
    Expression<int>? chapterSeqNum,
    Expression<int>? chapterNum,
    Expression<String>? htmlContent,
    Expression<DateTime>? fetchedAt,
    Expression<int>? book,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (url != null) 'url': url,
      if (chapterSeqNum != null) 'chapter_seq_num': chapterSeqNum,
      if (chapterNum != null) 'chapter_num': chapterNum,
      if (htmlContent != null) 'html_content': htmlContent,
      if (fetchedAt != null) 'fetched_at': fetchedAt,
      if (book != null) 'book': book,
    });
  }

  ChaptersCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? url,
      Value<int>? chapterSeqNum,
      Value<int>? chapterNum,
      Value<String?>? htmlContent,
      Value<DateTime>? fetchedAt,
      Value<int>? book}) {
    return ChaptersCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      url: url ?? this.url,
      chapterSeqNum: chapterSeqNum ?? this.chapterSeqNum,
      chapterNum: chapterNum ?? this.chapterNum,
      htmlContent: htmlContent ?? this.htmlContent,
      fetchedAt: fetchedAt ?? this.fetchedAt,
      book: book ?? this.book,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (chapterSeqNum.present) {
      map['chapter_seq_num'] = Variable<int>(chapterSeqNum.value);
    }
    if (chapterNum.present) {
      map['chapter_num'] = Variable<int>(chapterNum.value);
    }
    if (htmlContent.present) {
      map['html_content'] = Variable<String>(htmlContent.value);
    }
    if (fetchedAt.present) {
      map['fetched_at'] = Variable<DateTime>(fetchedAt.value);
    }
    if (book.present) {
      map['book'] = Variable<int>(book.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ChaptersCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('url: $url, ')
          ..write('chapterSeqNum: $chapterSeqNum, ')
          ..write('chapterNum: $chapterNum, ')
          ..write('htmlContent: $htmlContent, ')
          ..write('fetchedAt: $fetchedAt, ')
          ..write('book: $book')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $BooksTable books = $BooksTable(this);
  late final $ChaptersTable chapters = $ChaptersTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [books, chapters];
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appDatabaseHash() => r'68c9ad772c198d1a34d2dcccc0a6a35f43092fd5';

/// See also [appDatabase].
@ProviderFor(appDatabase)
final appDatabaseProvider = AutoDisposeProvider<AppDatabase>.internal(
  appDatabase,
  name: r'appDatabaseProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AppDatabaseRef = AutoDisposeProviderRef<AppDatabase>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
