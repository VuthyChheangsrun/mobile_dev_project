import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_dev_project/cart/cartscreen.dart';

class ThankScreen extends StatelessWidget {
  const ThankScreen({super.key});

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

      body: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.elliptical(7, 7)),
          color: Color.fromRGBO(225, 247, 245, 100),
        ),
        margin: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 60),
        padding: const EdgeInsets.all(10),
        width: double.infinity,

        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Thank you", style: GoogleFonts.lobster(
                textStyle: const TextStyle(fontSize: 40)
              )),
              Text("For the purchase", style: GoogleFonts.playfairDisplay(
                textStyle: const TextStyle(fontSize: 20)
              ),),
              const SizedBox(height: 20,),
              const Text("Your support of my small busniness means", style: TextStyle(fontSize: 18),),
              const Text("the world to me. I hope this package", style: TextStyle(fontSize: 18),),
              const Text("brighten your day.", style: TextStyle(fontSize: 18),),
              const Text("You are appriciated!", style: TextStyle(fontSize: 18),),
              
              const SizedBox(height: 30,),
              ElevatedButton(
                
                style: ElevatedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                  minimumSize: const Size(200, 50),
                  backgroundColor: const Color.fromARGB(255, 213, 213, 213),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7))
                  )
                ),
                onPressed: () {                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CartScreen()),
                  );
                },
                child: const Text('Done'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}