import 'package:flutter/material.dart';

class CheckExplanation extends StatelessWidget {
  const CheckExplanation({
    Key? key,
    required this.subject,
  }) : super(key: key);

  final String subject;

  @override
  Widget build(BuildContext context) {
    return Text('使用する$subjectにチェックを入れてください。');
  }
}
