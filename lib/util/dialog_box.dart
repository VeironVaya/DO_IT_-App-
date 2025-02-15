// ignore_for_file: must_be_immutable

import 'package:first_app/util/dialog_box_button.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.orange,
      content: Container(
        height: 160,
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: "Add New Activity",
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 60, right: 10),
              child: Row(
                children: [
                  // Save button
                  DialogBoxButton(text: "Save", onPressed: onSave),
                  // Space between
                  SizedBox(width: 5),
                  // Cancel button
                  DialogBoxButton(text: "Cancel", onPressed: onCancel),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
