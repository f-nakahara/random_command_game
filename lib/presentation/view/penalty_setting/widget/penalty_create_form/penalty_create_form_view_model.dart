import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/core/l10n/app_localization.dart';
import 'package:random_command_game/presentation/controller/penalty_controller.dart';
import 'package:random_command_game/presentation/view/penalty_setting/widget/penalty_create_form/penalty_create_form_state.dart';

final penaltyCreateFormViewModel = StateNotifierProvider.autoDispose<
    PenaltyCreateFormViewModel, PenaltyCreateFormState>(
  (ref) {
    final penalties = ref.watch(penaltyController).data?.value ?? [];
    final playerNames = penalties.map((e) => e.name).toList();
    return PenaltyCreateFormViewModel(
      ref.read(penaltyController.notifier),
      playerNames: playerNames,
    );
  },
);

class PenaltyCreateFormViewModel extends StateNotifier<PenaltyCreateFormState> {
  PenaltyCreateFormViewModel(
    this._controller, {
    required List<String> playerNames,
  })  : _penaltyNames = playerNames,
        super(const PenaltyCreateFormState());

  final PenaltyController _controller;
  final maxNameLength = 100;
  final List<String> _penaltyNames;

  /// プレイヤーを作成する
  Future<void> create({required String name}) async {
    await _controller.createPenalty(name: name);
  }

  /// バリデーション
  String? validate(String? value, AppLocalization localization) {
    if (value == null || value.isEmpty) {
      return localization.emptyErrorText;
    } else if (value.length > maxNameLength) {
      return localization.maxLengthErrorText(maxNameLength);
    } else if (_penaltyNames.contains(value)) {
      return localization.duplicateErrorText;
    }
  }

  void onChanged(String? value, AppLocalization localization) {
    _updateEnableState(value, localization);
  }

  void _updateEnableState(String? value, AppLocalization localization) {
    final result = validate(value, localization);
    final isEnabled = result == null;
    state = state.copyWith(isEnabled: isEnabled);
  }
}
