import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Status',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0),
      ),
    );
  }
}
