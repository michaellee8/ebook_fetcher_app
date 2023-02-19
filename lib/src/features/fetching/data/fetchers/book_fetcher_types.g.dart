// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_fetcher_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookMetadata _$$_BookMetadataFromJson(Map<String, dynamic> json) =>
    _$_BookMetadata(
      title: json['title'] as String,
      lastUpdate: DateTime.parse(json['lastUpdate'] as String),
      lastChapter: json['lastChapter'] as int,
      url: Uri.parse(json['url'] as String),
    );

Map<String, dynamic> _$$_BookMetadataToJson(_$_BookMetadata instance) =>
    <String, dynamic>{
      'title': instance.title,
      'lastUpdate': instance.lastUpdate.toIso8601String(),
      'lastChapter': instance.lastChapter,
      'url': instance.url.toString(),
    };

_$_ChapterMetadata _$$_ChapterMetadataFromJson(Map<String, dynamic> json) =>
    _$_ChapterMetadata(
      title: json['title'] as String,
      chapterNum: json['chapterNum'] as int,
      url: Uri.parse(json['url'] as String),
    );

Map<String, dynamic> _$$_ChapterMetadataToJson(_$_ChapterMetadata instance) =>
    <String, dynamic>{
      'title': instance.title,
      'chapterNum': instance.chapterNum,
      'url': instance.url.toString(),
    };

_$_Chapter _$$_ChapterFromJson(Map<String, dynamic> json) => _$_Chapter(
      metadata:
          ChapterMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
      paragraphs: const StringBuiltListJsonConverter()
          .fromJson(json['paragraphs'] as List),
    );

Map<String, dynamic> _$$_ChapterToJson(_$_Chapter instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
      'paragraphs':
          const StringBuiltListJsonConverter().toJson(instance.paragraphs),
    };
