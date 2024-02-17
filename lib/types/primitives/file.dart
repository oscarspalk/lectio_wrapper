import 'package:freezed_annotation/freezed_annotation.dart';

part 'file.freezed.dart';
part 'file.g.dart';

@freezed
class File with _$File {
  factory File({required String href, required String name}) = _File;

  factory File.fromJson(Map<String, Object?> json) => _$FileFromJson(json);
}
