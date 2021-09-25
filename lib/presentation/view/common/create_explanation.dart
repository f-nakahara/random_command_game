import 'package:flutter/material.dart';

class CreateExplanation extends StatelessWidget {
  const CreateExplanation({
    Key? key,
    required this.subject,
  }) : super(key: key);

  final String subject;

  @override
  Widget build(BuildContext context) {
    return Text('$subjectを新しく作成する場合は「+」ボタンを押してください。');
  }
}
