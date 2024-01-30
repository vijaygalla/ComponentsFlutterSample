import 'package:flutter/material.dart';

class BorderedButton extends StatelessWidget {
  final String title;
  BorderedButton({required this.title});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        side: MaterialStatePropertyAll(
            BorderSide(color: Colors.deepPurple.shade100)),
      ),
      onPressed: null,
      child: Text(
        title,
        style: TextStyle(
          color: Colors.purple,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
