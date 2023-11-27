import 'package:flutter/material.dart';

class ToggleButtonWidget extends StatefulWidget {
  const ToggleButtonWidget({super.key});

  @override
  State<ToggleButtonWidget> createState() => _ToggleButtonWidgetState();
}

class _ToggleButtonWidgetState extends State<ToggleButtonWidget> {
  final width = 250.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: const BorderRadius.all(Radius.circular(50))),
        height: 50,
        width: width,
        child: const Center(
          child: Text(
            'Mark as read',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
