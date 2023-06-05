import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_error.freezed.dart';

part 'email_error.g.dart';

@freezed
class EmailError with _$EmailError {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory EmailError({
    @JsonKey(name: 'email') List<String>? errorMessage,
  }) = _EmailError;

  factory EmailError.fromJson(Map<String, dynamic> json) => _$EmailErrorFromJson(json);
}
