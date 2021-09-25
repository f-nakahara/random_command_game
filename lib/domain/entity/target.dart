import 'package:equatable/equatable.dart';

class Target extends Equatable {
  const Target({
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
