import 'package:equatable/equatable.dart';

class Penalty extends Equatable {
  const Penalty({
    required this.id,
    required this.name,
    required this.isSelected,
  });

  /// ID
  final String id;

  /// 名前
  final String name;

  /// 選択されているか
  final bool isSelected;

  @override
  List<Object?> get props => [id];
}
