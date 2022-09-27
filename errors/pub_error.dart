// TODO(Yardex): Remove when implemented and documented
// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'errors.dart';

part 'pub_error.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class PubError extends Equatable {
  const PubError(this.error);

  factory PubError.withData({
    required String code,
    required String message,
  }) =>
      PubError(ResponseError(code: code, message: message));

  final ResponseError error;

  static PubError fromJson(Map<String, dynamic> json) =>
      _$PubErrorFromJson(json);

  Map<String, dynamic> toJson() => _$PubErrorToJson(this);

  @override
  List<Object?> get props => [error];
}
