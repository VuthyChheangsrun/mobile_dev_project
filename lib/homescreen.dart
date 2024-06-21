import 'package:flutter/material.dart';
//

import 'package:flutter/gestures.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          margin: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 60),
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                  child: Image.asset("images/ads1.jpg")),
              ),

              const RowMenu(title: "Recommendation"),

              const RowMenu(title: "Popular"),

              const RowMenu(title: "Top rated"),

              const RowMenu(title: "Sponsor"),

              const RowMenu(title: "Newly added"),

            ],
          ),
        ),
      ),
    );
  }


}

class RowMenu extends StatelessWidget {
  const RowMenu({
    super.key,
    required this.title
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          const SizedBox(height: 5,),
          SingleChildScrollView (
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 10,
              children: [
              Container(width: 100, height: 100, color: Colors.amber,),
              Container(width: 100, height: 100, color: Colors.red,),
              Container(width: 100, height: 100, color: Colors.amber,),
              Container(width: 100, height: 100, color: Colors.red,),
              Container(width: 100, height: 100, color: Colors.amber,),
            ],),
          ),
        ],
      ),
    );
  }
  
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}