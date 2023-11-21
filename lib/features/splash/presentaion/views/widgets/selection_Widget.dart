import 'package:flutter/material.dart';

class SelectionWidget extends StatelessWidget {
  const SelectionWidget(
      {super.key, required this.color, required this.text, this.onPressed});
  final Color color;
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.all(0),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.zero),
        ),
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 2,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontSize: 48),
          ),
        ),
      ),
    );
  }
}
