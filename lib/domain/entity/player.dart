import 'package:equatable/equatable.dart';

class Player extends Equatable {
  const Player({
    required this.id,
    required this.name,
    required this.isSelected,
    required this.createdAt,
    required this.updatedAt,
  });

  /// ID
  final String id;

  /// 名前
  final String name;

  /// 選択されているか
  final bool isSelected;

  /// 作成日時
  final DateTime createdAt;

  /// 更新日時
  final DateTime updatedAt;

  @override
  List<Object?> get props => [id];
}
