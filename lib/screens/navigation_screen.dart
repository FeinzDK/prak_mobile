import 'package:flutter/material.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(10, (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "lib/assets/arial.jpg",
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            );
          }),
        ),
      ),
    );
  }
}
