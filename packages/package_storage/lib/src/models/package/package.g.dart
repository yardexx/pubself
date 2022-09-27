// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Package _$PackageFromJson(Map<String, dynamic> json) => Package(
      json['name'] as String,
      Version.fromJson(json['latest'] as Map<String, dynamic>),
      json['isDiscontinued'] as bool?,
      json['replacedBy'] as String?,
      (json['versions'] as List<dynamic>)
          .map((e) => Version.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PackageToJson(Package instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'latest': instance.latest,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('isDiscontinued', instance.isDiscontinued);
  writeNotNull('replacedBy', instance.replacedBy);
  val['versions'] = instance.versions;
  return val;
}
