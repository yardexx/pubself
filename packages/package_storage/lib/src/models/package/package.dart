// TODO(Yardex): Remove when implemented.
// ignore_for_file: public_member_api_docs, avoid_positional_boolean_parameters

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'package:package_storage/src/models/models.dart';

part 'package.g.dart';

@immutable
@JsonSerializable(includeIfNull: false)
class Package extends Equatable {
  const Package(
    this.name,
    this.latest,
    this.isDiscontinued,
    this.replacedBy,
    this.versions,
  );

  final String name;
  final Version latest;
  final bool? isDiscontinued;
  final String? replacedBy;
  final List<Version> versions;

  static Package fromJson(Map<String, dynamic> json) => _$PackageFromJson(json);

  Map<String, dynamic> toJson() => _$PackageToJson(this);

  @override
  List<Object?> get props => [name, isDiscontinued, replacedBy, versions];
}
