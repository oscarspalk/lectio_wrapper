import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lectio_wrapper/utils/dio_image_provider.dart';

part 'kort.freezed.dart';

@freezed
class Kort with _$Kort {
  factory Kort({
    required String gymnasium,
    required String name,
    required DateTime birthday,
    required DioImage picture,
  }) = _Kort;
}
