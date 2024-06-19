import 'package:flutter/material.dart';
import 'package:mobile_dev_project/login.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                obscureText: true,
                autocorrect: false,
                enableSuggestions: false,
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
      )
    
    );
  }
  
}