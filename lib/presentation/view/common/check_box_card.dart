import 'package:flutter/material.dart';

class CheckBoxCard extends StatelessWidget {
  const CheckBoxCard({
    Key? key,
    required this.title,
    required this.onTap,
    required this.onDelete,
  }) : super(key: key);

  final String title;
  final Function(bool?)? onTap;
  final Function() onDelete;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: CheckboxListTile(
        value: true,
        onChanged: onTap, // TODO: チェックボックス処理
        title: Text(title),
        controlAffinity: ListTileControlAffinity.leading,
        secondary: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: onDelete,
        ),
      ),
    );
  }
}
