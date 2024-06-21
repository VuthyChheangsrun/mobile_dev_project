import 'package:flutter/material.dart';
import 'package:mobile_dev_project/cart/invoicescreen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width - 110,
              height: 49,
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                  hintText: "Search",
                ),
              ),
            ),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.filter_alt_outlined, size: 30, color: Colors.black54,)),
                const Text("filter", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100, color: Colors.black54),)
              ],
            )
          ]
        )
      ),

      body: SingleChildScrollView(
        child: Container (
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.elliptical(7, 7)),
            color: Color.fromRGBO(225, 247, 245, 100),
          ),
          margin: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 60),
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("All items", style: TextStyle(fontSize: 17),),

              const ItemWidget(
                image: 'images/food-ads1.jpg',
                name: "hamburger double",
                price: "40.00",
                numofitem: "2"
              ),

              const ItemWidget(
                image: 'images/food-ads1.jpg',
                name: "hamburger double",
                price: "40.00",
                numofitem: "2"
              ),

              const ItemWidget(
                image: 'images/food-ads1.jpg',
                name: "hamburger double",
                price: "40.00",
                numofitem: "2"
              ),

              const ItemWidget(
                image: 'images/food-ads1.jpg',
                name: "hamburger double",
                price: "40.00",
                numofitem: "2"
              ),

              const ItemWidget(
                image: 'images/food-ads1.jpg',
                name: "hamburger double",
                price: "40.00",
                numofitem: "2"
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
                      MaterialPageRoute(builder: (context) => const InvoiceScreen()),
                    );
                  },
                  child: const Text('Order'),
                ),
              ),
            ],
          ),
        ),
      ),
    
    );
  }
  
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.image, required this.name, required this.price, required this.numofitem});

  final String image;
  final String name;
  final String price;
  final String numofitem;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(13),
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(7))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              SizedBox(
                width: 70,
                height: 70,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  child: Image.asset(image)
                ),
              ),
              const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  const SizedBox(height: 22,),
                  Text("\$ $price"),
                ],
              ),
            ],
          ),
          
          Row(
            children: [
              const Icon(Icons.remove_circle_outline),
              const SizedBox(width: 3,),
              Text(numofitem),
              const SizedBox(width: 3,),
              const Icon(Icons.add_circle_outline),
            ],
          ),
          
        ],
      ),
    );
  }
  
}