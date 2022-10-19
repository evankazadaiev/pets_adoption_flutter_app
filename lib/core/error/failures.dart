import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

abstract class Failure {}

@freezed
class GeneralFailure with _$GeneralFailure implements Failure {
  const factory GeneralFailure() = _GeneralFailure;
}

@freezed
class ServerFailure with _$ServerFailure implements Failure {
  const factory ServerFailure() = _ServerFailure;
}

@freezed
class CacheFailure with _$CacheFailure implements Failure {
  const factory CacheFailure() = _CacheFailure;
}
