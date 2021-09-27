import 'package:freezed_annotation/freezed_annotation.dart';

part 'slot_list_item_state.freezed.dart';

@freezed
class SlotListItemState with _$SlotListItemState {
  const factory SlotListItemState({
    @Default(false) bool isStopped,
    required SlotListItemType type,
    required String value,
  }) = _SlotListItemsState;
}

enum SlotListItemType {
  player,
  target,
  penalty,
}
