import 'package:catalog/pages/signin.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

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
                  hintText: "Jon D.",
                ),
                validator: (user) {
                  if (user!.isEmpty) {
                    return "Username is empty";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "First name",
                ),
                validator: (fname) {
                  if (fname!.isEmpty) {
                    return "This field is empty";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Last name",
                ),
                validator: (lname) {
                  if (lname!.isEmpty) {
                    return "last name is required";
                  }
                  return null;
                },
              ),
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
                height: 20,
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
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  child: Text("Sign up"),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Already have an account ?"),
                  TextButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => SignIn()),
                            (route) => false);
                      },
                      child: const Text("Sign in here")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
