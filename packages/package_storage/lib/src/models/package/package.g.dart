// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Package _$PackageFromJson(Map<String, dynamic> json) => Package(
      json['name'] as String,
      json['isDiscontinued'] as bool?,
      json['replacedBy'] as String?,
      (json['versions'] as List<dynamic>)
          .map((e) => Version.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PackageToJson(Package instance) => <String, dynamic>{
      'name': instance.name,
      'isDiscontinued': instance.isDiscontinued,
      'replacedBy': instance.replacedBy,
      'versions': instance.versions,
    };
