import 'package:flutter/material.dart';

class MyCircleNotification extends StatelessWidget {
  final Widget? child;
  const MyCircleNotification({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: child,
    );
  }
}
