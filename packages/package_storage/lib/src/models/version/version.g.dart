// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Version _$VersionFromJson(Map<String, dynamic> json) => Version(
      json['version'] as String,
      const PubspecConverter()
          .fromJson(json['pubspec'] as Map<String, dynamic>),
      json['archive_url'] as String,
      json['archive_sha256'] as String,
      json['published'] as String,
    );

Map<String, dynamic> _$VersionToJson(Version instance) => <String, dynamic>{
      'version': instance.version,
      'pubspec': const PubspecConverter().toJson(instance.pubspec),
      'archive_url': instance.archiveUrl,
      'archive_sha256': instance.archiveSha256,
      'published': instance.published,
    };
