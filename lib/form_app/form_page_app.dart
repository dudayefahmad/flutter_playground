import 'package:flutter/material.dart';

class FormPageApp extends StatelessWidget {
  const FormPageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FormPageApp',
      theme: ThemeData(
        // Customize the theme here
        primarySwatch: Colors.blue,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue,
          textTheme: ButtonTextTheme.primary,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        ),
      ),
      home: FormPageScreen(),
    );
  }
}

class FormPageScreen extends StatefulWidget {
  const FormPageScreen({super.key});

  @override
  State<FormPageScreen> createState() => _FormPageScreenState();
}

class _FormPageScreenState extends State<FormPageScreen> {
  final _formKey = GlobalKey<FormState>();
  final _feedbackController = TextEditingController();

  @override
  void dispose() {
    _feedbackController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feedback Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                maxLines: 5,
                controller: _feedbackController,
                decoration: const InputDecoration(
                  hintText: 'Enter your feedback',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your feedback';
                  } else if (value.length < 10) {
                    return 'Feedback must be at least 10 characters';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Feedback submitted successfully!')),
                    );
                    // Additional submission logic here
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

