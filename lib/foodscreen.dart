import 'package:flutter/material.dart';
import 'package:mobile_dev_project/homescreen.dart';
//


class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      scrollBehavior: MyCustomScrollBehavior(),

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
            margin: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 60),
            padding: const EdgeInsets.all(10),
            child: const Column(
              children: [
                // Padding(padding: EdgeInsets.all(10)),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    spacing: 10,
                    children: [
                      SponsorPoster(image: 'images/food-ads1.jpg'),
                      SponsorPoster(image: 'images/food-ads1.jpg'),
                      SponsorPoster(image: 'images/food-ads1.jpg'),
                    ],
                  )
                ),
              
                RowMenu(title: "Recommendation"),

                RowMenu(title: "Popular"),

                RowMenu(title: "Top rated"),

                RowMenu(title: "Sponsor"),

                RowMenu(title: "Newly added"),
              ],
            ),
          ),
        ),
      ),
        
        
    );
  }


}

class SponsorPoster extends StatelessWidget {
  const SponsorPoster ({
    super.key,
    required this.image,
  });

  final String image;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width * 0.5) - 25,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
        child: Image.asset(image)),
    );
  }

}
