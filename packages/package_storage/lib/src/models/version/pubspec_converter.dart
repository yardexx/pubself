// TODO(Yardex): Remove when implemented.
// ignore_for_file: public_member_api_docs

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

class PubspecConverter implements JsonConverter<String, Map<String, dynamic>> {
  const PubspecConverter();

  @override
  String fromJson(Map<String, dynamic> data) {
    return json.encode(data);
  }

  @override
  Map<String, dynamic> toJson(String object) {
    return json.decode(object) as Map<String, dynamic>;
  }
}
