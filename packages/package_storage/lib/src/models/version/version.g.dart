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

Map<String, dynamic> _$VersionToJson(Version instance) {
  final val = <String, dynamic>{
    'version': instance.version,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pubspec', const PubspecConverter().toJson(instance.pubspec));
  val['archive_url'] = instance.archiveUrl;
  val['archive_sha256'] = instance.archiveSha256;
  val['published'] = instance.published;
  return val;
}
