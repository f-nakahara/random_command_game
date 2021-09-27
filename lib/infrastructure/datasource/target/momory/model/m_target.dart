import 'package:random_command_game/domain/entity/target.dart';

class MTarget {
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

  const MTarget({
    required this.id,
    required this.name,
    required this.isSelected,
    required this.createdAt,
    required this.updatedAt,
  });

  factory MTarget.fromMap(Map<String, dynamic> map) {
    return MTarget(
      id: map[keyId],
      name: map[keyName],
      isSelected: map[keyIsSelected],
      createdAt: map[keyCreatedAt],
      updatedAt: map[keyUpdatedAt],
    );
  }

  Target toEntity() {
    return Target(
      id: id,
      name: name,
      isSelected: isSelected == 1,
      createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt),
      updatedAt: DateTime.fromMillisecondsSinceEpoch(updatedAt),
    );
  }

  static Map<String, dynamic> convertToMap(Target target) {
    return {
      keyId: target.id,
      keyName: target.name,
      keyIsSelected: target.isSelected ? 1 : 0,
      keyCreatedAt: target.createdAt.millisecondsSinceEpoch,
      keyUpdatedAt: target.updatedAt.millisecondsSinceEpoch,
    };
  }
}
