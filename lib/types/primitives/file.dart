import 'package:freezed_annotation/freezed_annotation.dart';

part 'file.freezed.dart';

@freezed
class File with _$File {
  factory File({required String href, required String name}) = _File;
}
