import 'package:flutter/material.dart';

class SettingRow extends StatelessWidget {
  const SettingRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: const [
          Text('sample'),
        ],
      ),
    );
  }
}
