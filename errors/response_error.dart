// TODO(Yardex): Remove when implemented and documented
// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'response_error.g.dart';

@immutable
@JsonSerializable()
class ResponseError extends Equatable {
  const ResponseError({
    required this.code,
    required this.message,
  });

  final String code;
  final String message;

  static ResponseError fromJson(Map<String, dynamic> json) =>
      _$ResponseErrorFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseErrorToJson(this);

  @override
  List<Object?> get props => [code, message];
}
