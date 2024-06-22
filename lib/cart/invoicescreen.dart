import 'package:flutter/material.dart';
import 'package:mobile_dev_project/cart/cartscreen.dart';
import 'package:mobile_dev_project/cart/thankyouscreen.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({super.key});

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

      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(7, 7)),
              color: Color.fromRGBO(225, 247, 245, 100),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.only(right: 300),
            width: double.infinity,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_ios),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container (
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(7, 7)),
                  color: Color.fromRGBO(225, 247, 245, 100),
                ),
                margin: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 60),
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Summary", style: TextStyle(fontSize: 17),),
                    const Divider(color: Colors.black),
                    
              const ItemWidget(
                image: 'images/food-ads1.jpg',
                name: "hamburger double",
                price: "40.00",
                numofitem: "2"
              ),

              const ItemWidget(
                image: 'images/food/f1.jpg',
                name: "pizzaa",
                price: "40.00",
                numofitem: "2"
              ),

              const ItemWidget(
                image: 'images/food/f2.jpg',
                name: "french fried",
                price: "40.00",
                numofitem: "2"
              ),

                    const Divider(color: Colors.black, height: 30,),

                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Subtotal", style: TextStyle(fontWeight: FontWeight.w600),),
                              Text("\$ xxx.xx")
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Tax", style: TextStyle(fontWeight: FontWeight.w600),),
                              Text("\$ xxx.xx")
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Shipping", style: TextStyle(fontWeight: FontWeight.w600),),
                              Text("\$ xxx.xx")
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(color: Colors.black, height: 30,),

                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          Text("\$ xxx.xx")
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
            
                    Center(
                      child: ElevatedButton(
                        
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          minimumSize: const Size(250, 50),
                          backgroundColor: const Color.fromARGB(255, 84, 84, 84),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7))
                          )
                        ),
                        onPressed: () {                  
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ThankScreen()),
                          );
                        },
                        child: const Text('Purchase'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    
    );
  }
  
}
