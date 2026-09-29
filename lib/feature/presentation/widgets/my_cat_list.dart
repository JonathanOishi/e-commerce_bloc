import 'package:flutter/material.dart';

class MyCatList extends StatelessWidget {
  final String title;
  final Color bgColor;
  final Color txtColor;

  const MyCatList({
    super.key,
    required this.title,
    required this.bgColor,
    required this.txtColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(horizontal: 12),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.grey.shade200,
          width: 1.2,
        ),
        color: bgColor,
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: txtColor,
          ),
        ),
      ),
    );
  }
}
