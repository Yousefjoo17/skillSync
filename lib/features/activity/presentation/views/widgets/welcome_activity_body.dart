import 'package:flutter/material.dart';

class WelcomeActivityViewBody extends StatelessWidget {
  const WelcomeActivityViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Center(
            child: Text(
              "Activity",
            ),
          ),
        ],
      ),
    );
  }
}
