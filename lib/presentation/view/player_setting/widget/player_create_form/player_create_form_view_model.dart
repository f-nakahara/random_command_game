import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/core/l10n/app_localizations.dart';
import 'package:random_command_game/presentation/controller/player_controller.dart';
import 'package:random_command_game/presentation/view/player_setting/widget/player_create_form/player_create_form_state.dart';

final playerCreateFormViewModel = StateNotifierProvider.autoDispose<
    PlayerCreateFormViewModel, PlayerCreateFormState>(
  (ref) {
    final players = ref.watch(playerController).data?.value ?? [];
    final playerNames = players.map((e) => e.name).toList();
    return PlayerCreateFormViewModel(
      ref.read(playerController.notifier),
      playerNames: playerNames,
    );
  },
);

class PlayerCreateFormViewModel extends StateNotifier<PlayerCreateFormState> {
  PlayerCreateFormViewModel(
    this._controller, {
    required List<String> playerNames,
  })  : _playerNames = playerNames,
        super(const PlayerCreateFormState());

  final PlayerController _controller;
  final maxNameLength = 20;
  final List<String> _playerNames;

  /// プレイヤーを作成する
  Future<void> create({required String name}) async {
    await _controller.createPlayer(name: name);
  }

  /// バリデーション
  String? validate(String? value, AppLocalizations localization) {
    bool enable = true;
    if (value == null || value.isEmpty) {
      enable = false;
      return '名前を入力してください。';
    } else if (value.length > maxNameLength) {
      enable = false;
      return '$maxNameLength文字以内で入力してください。';
    } else if (_playerNames.contains(value)) {
      enable = false;
      return '既に作成済みです。';
    }
  }

  void onChanged(String? value, AppLocalizations localization) {
    _updateEnableState(value, localization);
  }

  void _updateEnableState(String? value, AppLocalizations localization) {
    final result = validate(value, localization);
    final isEnabled = result == null;
    state = state.copyWith(isEnabled: isEnabled);
  }
}
