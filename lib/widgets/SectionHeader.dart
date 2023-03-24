import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    Key? key,
    required this.title,
    this.action = "",
  }) : super(key: key);

  final String title;
  final String action;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 20),
        ),
        Text(action,
            style: const TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 12.5)),
      ],
    );
  }
}