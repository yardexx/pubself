// TODO(Yardex): Remove when implemented.
// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'package:package_storage/src/models/version/pubspec_converter.dart';

part 'version.g.dart';

@immutable
@JsonSerializable(includeIfNull: false)
class Version extends Equatable {
  const Version(
    this.version,
    this.pubspec,
    this.archiveUrl,
    this.archiveSha256,
    this.published,
  );

  final String version;
  @PubspecConverter()
  final String pubspec;
  @JsonKey(name: 'archive_url')
  final String archiveUrl;
  @JsonKey(name: 'archive_sha256')
  final String archiveSha256;
  final String published;

  static Version fromJson(Map<String, dynamic> json) => _$VersionFromJson(json);

  Map<String, dynamic> toJson() => _$VersionToJson(this);

  @override
  List<Object?> get props =>
      [version, pubspec, archiveUrl, archiveSha256, published];
}
