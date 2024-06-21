import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

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
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Conversations", style: TextStyle(fontSize: 17),),

              ChatBox(image: "/images/food-ads1.jpg", name: "Sok", message: "I'm at your location.", time: "Now"),
              ChatBox(image: "/images/food-ads1.jpg", name: "Sok", message: "I'm at your location.", time: "Now"),
              ChatBox(image: "/images/food-ads1.jpg", name: "Sok", message: "I'm at your location.", time: "Now"),
              ChatBox(image: "/images/food-ads1.jpg", name: "Sok", message: "I'm at your location.", time: "Now"),
              SizedBox(height: 10,),

            ],
          ),
        ),
      ),
    
    );
  }
  
}

class ChatBox extends StatelessWidget {
  const ChatBox({super.key, required this.image, required this.name, required this.message, required this.time});

  final String image;
  final String name;
  final String message;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(13),
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(7))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 70,
                height: 70,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(90)),
                  child: Image.asset(image)
                ),
              ),
              const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: const TextStyle(fontWeight: FontWeight.bold),),
                  const SizedBox(height: 22,),
                  Text(message),
                ],
              ),
            ],
          ),
          
          Text(time),
          
        ],
      ),
    );
  }
  
}