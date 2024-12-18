import 'package:flutter/material.dart';
import '/widgets/input_widget.dart';
import 'navigation_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
        backgroundColor: Colors.blue, // Set the background color to blue
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Widget dasar: Image dan Text
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    "Welcome to Flutter!",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    "lib/assets/arial.jpg", // Corrected image path
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Input Widget
            const InputWidget(),
            const SizedBox(height: 20),

            // Layout Widget: Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NavigationScreen()),
                    );
                  },
                  child: const Text("Go to Next Screen"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
