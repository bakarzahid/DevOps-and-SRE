import 'package:flutter/material.dart';

void main() => runApp(const FormStylingApp());

class FormStylingApp extends StatelessWidget {
  const FormStylingApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Styled Form Demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const CustomForm(),
      ),
    );
  }
}
class CustomForm extends StatelessWidget {
  const CustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Search Field
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Search here...',
            ),
          ),
        ),
        // Username Input Field
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter username',
            ),
          ),
        ),
      ],
    );
  }
}