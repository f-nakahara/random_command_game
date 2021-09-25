import 'package:equatable/equatable.dart';

class Member extends Equatable {
  Member({
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
