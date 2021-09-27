import 'package:random_command_game/domain/entity/penalty.dart';

class SQFPenalty {
  static const keyId = 'id';
  static const keyName = 'name';
  static const keyIsSelected = 'is_selected';
  static const keyCreatedAt = 'created_at';
  static const keyUpdatedAt = 'updated_at';

  final String id;
  final String name;
  final int isSelected;
  final int createdAt;
  final int updatedAt;

  const SQFPenalty({
    required this.id,
    required this.name,
    required this.isSelected,
    required this.createdAt,
    required this.updatedAt,
  });

  factory SQFPenalty.fromMap(Map<String, dynamic> map) {
    return SQFPenalty(
      id: map[keyId],
      name: map[keyName],
      isSelected: map[keyIsSelected],
      createdAt: map[keyCreatedAt],
      updatedAt: map[keyUpdatedAt],
    );
  }

  Penalty toEntity() {
    return Penalty(
      id: id,
      name: name,
      isSelected: isSelected == 1,
      createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt),
      updatedAt: DateTime.fromMillisecondsSinceEpoch(updatedAt),
    );
  }

  static Map<String, dynamic> convertToMap(Penalty penalty) {
    return {
      keyId: penalty.id,
      keyName: penalty.name,
      keyIsSelected: penalty.isSelected ? 1 : 0,
      keyCreatedAt: penalty.createdAt.millisecondsSinceEpoch,
      keyUpdatedAt: penalty.updatedAt.millisecondsSinceEpoch,
    };
  }
}
