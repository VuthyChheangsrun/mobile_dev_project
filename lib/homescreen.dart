import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomesScreen extends StatelessWidget {
  const HomesScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            margin: const EdgeInsets.symmetric(horizontal: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("images/Logo.png", width: 30,),
                const Icon(Icons.search, size: 30,),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container (
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(7, 7)),
              color: Color.fromRGBO(225, 247, 245, 100),
            ),
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                    child: Image.asset("images/ads1.jpg")),
                ),

                Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  child: Column(
                    children: [
                      const Text("Recommendation"),
                      Container(),
                    ],
                  
                  ),
                ),

                

              ],
            ),
          ),
        ),
      ),
        
        
    );
  }


}