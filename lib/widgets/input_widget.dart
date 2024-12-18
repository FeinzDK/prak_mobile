import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({super.key});

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  bool _isSwitched = false;
  String _selectedRadio = "Option 1";
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // TextField
        const TextField(
          decoration: InputDecoration(
            labelText: "Enter your name",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 10),

        // Switch
        Row(
          children: [
            const Text("Enable Notifications"),
            Switch(
              value: _isSwitched,
              onChanged: (value) {
                setState(() {
                  _isSwitched = value;
                });
              },
            ),
          ],
        ),

        // Radio Buttons
        Column(
          children: [
            RadioListTile(
              title: const Text("Option 1"),
              value: "Option 1",
              groupValue: _selectedRadio,
              onChanged: (value) {
                setState(() {
                  _selectedRadio = value.toString();
                });
              },
            ),
            RadioListTile(
              title: const Text("Option 2"),
              value: "Option 2",
              groupValue: _selectedRadio,
              onChanged: (value) {
                setState(() {
                  _selectedRadio = value.toString();
                });
              },
            ),
          ],
        ),

        // Checkbox
        Row(
          children: [
            const Text("Accept Terms"),
            Checkbox(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
