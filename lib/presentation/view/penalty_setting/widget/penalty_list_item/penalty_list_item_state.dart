import 'package:equatable/equatable.dart';
import 'package:random_command_game/domain/entity/penalty.dart';

class PenaltyListItemState extends Equatable {
  final String id;
  final String name;
  final bool isSelected;

  const PenaltyListItemState._({
    required this.id,
    required this.name,
    required this.isSelected,
  });

  factory PenaltyListItemState.from(Penalty penalty) {
    return PenaltyListItemState._(
      id: penalty.id,
      name: penalty.name,
      isSelected: penalty.isSelected,
    );
  }

  @override
  List<Object?> get props => [id];
}
