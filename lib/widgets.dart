import 'package:flutter/material.dart';

idCardRow(String label, String value) {
  return Padding(
    padding: const EdgeInsets.only(top:8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}