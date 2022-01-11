import 'package:flutter/material.dart';
class CircleIcon extends StatelessWidget {
  CircleIcon({required this.icon});
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      child: Icon(
        icon,
        color: Colors.blue,
      ),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
            width: 2,
          ),
          borderRadius: BorderRadius.all(Radius.circular(50))),
    );
  }
}
