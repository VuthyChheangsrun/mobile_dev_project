import 'package:flutter/material.dart';
import 'package:mobile_dev_project/login.dart';
import 'package:mobile_dev_project/main.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});
  
  @override
  State<StatefulWidget> createState() {
    return _SignupScreenState();
  }

}

class _SignupScreenState extends State<SignupScreen> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

                const Text("Welcome!!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),

                const InputTextField(text: "Username",),
                const SizedBox(height: 10,),
                const InputTextField(text: "Email",),
                const SizedBox(height: 10,),
                const InputPWField(text: "Password",),
                const SizedBox(height: 10,),
                const InputPWField(text: "Confirm password",),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(310, 50),
                      backgroundColor: const Color.fromARGB(255, 154, 200, 205),
                      textStyle: const TextStyle(color: Colors.black),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7))
                      )
                    ),
                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MyHomePage()),
                        );
                      }
                    },
                    child: const Text('Sign uo'),
                  ),
                    
                ),

                const SizedBox(height: 20,),

                const Row(
                  children: <Widget>[
                    SizedBox(width: 24,),
                    Expanded(
                        child: Divider(color: Colors.black, )
                    ),       
                    SizedBox(width: 5,),
                    Text("or Sign up with"),        
                    SizedBox(width: 5,),
                    Expanded(
                        child: Divider(color: Colors.black,)
                    ),
                    SizedBox(width: 24,),
                  ]
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.facebook, color: Color.fromARGB(255, 36, 132, 211,), size: 30,),),
                    
                    const ImageIcon(
                      color: Colors.transparent,
                      AssetImage('Images/twitter.png'),
                      size: 26,
                    ),
                    const SizedBox(width: 10,),
                    const ImageIcon(
                      color: Colors.transparent,
                      size: 26,
                      NetworkImage('https://cdn4.iconfinder.com/data/icons/logos-brands-7/512/google_logo-google_icongoogle-512.png')
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    const SizedBox(width: 4,),
                    InkWell(
                      child: const Text('Sign in', style: TextStyle(color: Colors.blue),),
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginScreen()),
                        )
                      }
                    ),
                  ],
                )
                
                
              ]
            ),
          ),
        ),
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
            return 'Please enter your email/username';
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