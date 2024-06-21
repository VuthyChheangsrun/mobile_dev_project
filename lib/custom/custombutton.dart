import 'package:flutter/material.dart';

final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
  minimumSize: Size(300, 50),
  backgroundColor: const Color.fromARGB(255, 154, 200, 205),
  textStyle: const TextStyle(color: Colors.black),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(7))
  )
);