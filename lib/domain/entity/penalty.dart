import 'package:equatable/equatable.dart';

class Penalty extends Equatable {
  const Penalty({
    required this.id,
    required this.name,
  });

  /// ID
  final String id;

  /// 名前
  final String name;

  @override
  List<Object?> get props => [id];
}
