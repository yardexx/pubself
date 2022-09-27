// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pub_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PubError _$PubErrorFromJson(Map<String, dynamic> json) => PubError(
      ResponseError.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PubErrorToJson(PubError instance) => <String, dynamic>{
      'error': instance.error.toJson(),
    };
