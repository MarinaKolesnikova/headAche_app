import 'package:freezed_annotation/freezed_annotation.dart';

part 'portal_error.freezed.dart';

part 'portal_error.g.dart';

@freezed
class PortalError with _$PortalError {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory PortalError({
    @JsonKey(name: 'detail') String? errorMessage,
  }) = _PortalError;

  factory PortalError.fromJson(Map<String, dynamic> json) => _$PortalErrorFromJson(json);
}
