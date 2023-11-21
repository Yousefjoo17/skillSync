import 'package:flutter/material.dart';
import 'package:stud/constants.dart';

BoxDecoration customBoxDecoration() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [kColor1, kColor2, kColor3],
      stops: const [0.1, 0.65, 0.9],
    ),
  );
}
