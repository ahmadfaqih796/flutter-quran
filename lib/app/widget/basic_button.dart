import 'package:flutter/material.dart';

ElevatedButton basicButton({
  required String title,
  required VoidCallback onPressed,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    child: Text(
      title,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
