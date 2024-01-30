import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RadioButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  RadioButton(
      {required this.title, required this.isSelected, required this.callback});

  String title;
  bool isSelected;
  VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: ButtonStyle(
          alignment: Alignment.centerLeft,
          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
          backgroundColor: MaterialStatePropertyAll(Colors.deepPurple.shade50)),
      onPressed: () {
        callback();
      },
      icon: Icon(
          isSelected
              ? Icons.radio_button_checked_outlined
              : Icons.radio_button_off_outlined,
          color: Colors.deepPurple),
      label: Text(
        title,
        style: TextStyle(color: Colors.grey.shade800),
      ),
    );
  }
}
