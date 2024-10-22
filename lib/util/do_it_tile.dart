import 'package:flutter/material.dart';

class DoItTile extends StatelessWidget {
  final String actName;
  final bool actStatus;
  final Function(bool?)? onChanged;

  const DoItTile({
    super.key,
    required this.actName,
    required this.actStatus,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18, left: 10, right: 10),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Checkbox(
              value: actStatus,
              onChanged: onChanged,
              fillColor: MaterialStateProperty.all(Colors.black),
              checkColor: Colors.white,
            ),
            Text(
              actName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
