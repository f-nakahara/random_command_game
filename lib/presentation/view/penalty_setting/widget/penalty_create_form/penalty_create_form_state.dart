import 'package:freezed_annotation/freezed_annotation.dart';

part 'penalty_create_form_state.freezed.dart';

@freezed
class PenaltyCreateFormState with _$PenaltyCreateFormState {
  const factory PenaltyCreateFormState({
    @Default(false) bool isEnabled,
  }) = _PenaltyCreateFormState;
}
