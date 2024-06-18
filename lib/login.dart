import 'dart:html';

import 'package:flutter/material.dart';
import 'package:mobile_dev_project/homescreen.dart';
import 'package:mobile_dev_project/main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }

}

class LoginScreenState extends State<LoginScreen> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      home: Scaffold(
        body: Form(
          key: _formKey,
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.15,
            ),
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('images/Logo.png', width: 100,),
                const SizedBox(height: 10,),

                const Text("Welcome Back!!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),

                const InputTextField(text: "Email",),
                const SizedBox(height: 10,),
                const InputPWField(text: "Password",),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: ElevatedButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MyApp())
                        );
                      }
                    },
                    child: const Text('Sign in'),
                  )
                )
              ]
            ),
          ),
        ),
      )
    );
  }
  
}

class InputTextField extends StatelessWidget {
  const InputTextField({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: text,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your email';
          }
          return null;
        },
      ),
    );
  }
  
}

class InputPWField extends StatelessWidget {
  const InputPWField({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: text,
        ),
        obscureText: true,
        autocorrect: false,
        enableSuggestions: false,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your password';
          }
          return null;
        },

      ),
    );
  }
  
}