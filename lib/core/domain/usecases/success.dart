import 'package:freezed_annotation/freezed_annotation.dart';

part 'success.freezed.dart';

abstract class Success<Type> {}

@freezed
class SuccessEmpty with _$SuccessEmpty implements Success<Type> {
  const factory SuccessEmpty() = _SuccessEmpty;
}
