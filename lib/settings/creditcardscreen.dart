import 'package:flutter/material.dart';

class CreditInfoScreen extends StatelessWidget {
  const CreditInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          margin: const EdgeInsets.symmetric(horizontal: 70),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("images/Logo.png", width: 30,),
              const Icon(Icons.person, size: 30,),
            ],
          ),
        ),
      ),

      body: Container(),
    );
  }
  
}