import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "example@gmail.com",
                ),
                validator: (email) {
                  if (email!.isEmpty) {
                    return "Enter your email";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "123!@#Pass",
                ),
                validator: (pass) {
                  if (pass!.isEmpty) {
                    return "Enter your Password";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Processing Data'),
                        backgroundColor: Colors.blueAccent,
                      ),
                    );
                  }
                },
                child: const Text("Log In"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
