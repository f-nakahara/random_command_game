import 'package:flutter/material.dart';

class SlotListItem extends StatelessWidget {
  const SlotListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text('こうだい')),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Text('STOP'),
        ),
      ],
    );
  }
}
