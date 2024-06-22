import 'package:flutter/material.dart';
import 'package:mobile_dev_project/homescreen.dart';
//


class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key});
  
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
                // Padding(padding: EdgeInsets.all(10)),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    spacing: 10,
                    children: [
                      SponsorPoster(image: 'images/food-ads1.jpg'),
                      SponsorPoster(image: 'images/food/f2.jpg'),
                      SponsorPoster(image: 'images/food-ads1.jpg'),
                    ],
                  )
                ),
              
                
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Recommendation"),
                    const SizedBox(height: 5,),
                    SingleChildScrollView (
                      scrollDirection: Axis.horizontal,
                      child: Wrap(
                        spacing: 10,
                        children: [
                        SizedBox(width: 100, height: 100, child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                          child: Image.asset("images/food/f2.jpg")),
                        ),
                        SizedBox(width: 100, height: 100, child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                          child: Image.asset("images/food/f1.jpg")),
                        ),
                        SizedBox(width: 100, height: 100, child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                          child: Image.network('https://d1csarkz8obe9u.cloudfront.net/posterpreviews/food-square.e-design-template-0c5e37eb6951a994645d49799f669a37_screen.jpg?ts=1673358836')),
                        ),
                        SizedBox(width: 100, height: 100, child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                          child: Image.network('https://marketplace.canva.com/EAE7zefZrqI/1/0/1600w/canva-healthy-food-ads-%28feed-ad-%28square%29%29-GABDgHW5Rn0.jpg')),
                        ),
                        SizedBox(width: 100, height: 100, child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                          child: Image.network('https://img.pikbest.com/origin/06/16/11/06RpIkbEsT5dW.jpg!w700wp')),
                        ),
                      ],),
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Popular"),
                    const SizedBox(height: 5,),
                    SingleChildScrollView (
                      scrollDirection: Axis.horizontal,
                      child: Wrap(
                        spacing: 10,
                        children: [
                        SizedBox(width: 100, height: 100, child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                          child: Image.network('https://img.pikbest.com/origin/06/16/11/06RpIkbEsT5dW.jpg!w700wp')),
                        ),
                        SizedBox(width: 100, height: 100, child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                          child: Image.network('https://marketplace.canva.com/EAE7zefZrqI/1/0/1600w/canva-healthy-food-ads-%28feed-ad-%28square%29%29-GABDgHW5Rn0.jpg')),
                        ),
                        SizedBox(width: 100, height: 100, child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                          child: Image.asset("images/food/f1.jpg")),
                        ),
                        SizedBox(width: 100, height: 100, child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                          child: Image.asset("images/food/f2.jpg")),
                        ),
                        SizedBox(width: 100, height: 100, child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                          child: Image.asset("images/food-ads1.jpg")),
                        ),
                      ],),
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Top rated"),
                    const SizedBox(height: 5,),
                    SingleChildScrollView (
                      scrollDirection: Axis.horizontal,
                      child: Wrap(
                        spacing: 10,
                        children: [
                        SizedBox(width: 100, height: 100, child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                          child: Image.network("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/premium-burger-ads-design-template-14186c536c4a43ccc213d62716c8e36e_screen.jpg?ts=1632881234")),
                        ),
                        SizedBox(width: 100, height: 100, child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfjV2RKMzxmAryJV-e3OLwcc7t6UZom34keQ&usqp=CAU")),
                        ),
                        SizedBox(width: 100, height: 100, child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                          child: Image.network('https://img.pikbest.com/origin/06/16/11/06RpIkbEsT5dW.jpg!w700wp')),
                        ),
                        SizedBox(width: 100, height: 100, child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                          child: Image.network('https://marketplace.canva.com/EAE7zefZrqI/1/0/1600w/canva-healthy-food-ads-%28feed-ad-%28square%29%29-GABDgHW5Rn0.jpg')),
                        ),
                        SizedBox(width: 100, height: 100, child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                          child: Image.asset("images/food/f1.jpg")),
                        ),
                      ],),
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Sponsor"),
                    const SizedBox(height: 5,),
                    SingleChildScrollView (
                      scrollDirection: Axis.horizontal,
                      child: Wrap(
                        spacing: 10,
                        children: [
                        SizedBox(width: 100, height: 100, child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                          child: Image.network('https://img.pikbest.com/origin/06/16/11/06RpIkbEsT5dW.jpg!w700wp')),
                        ),
                        SizedBox(width: 100, height: 100, child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                          child: Image.network('https://marketplace.canva.com/EAE7zefZrqI/1/0/1600w/canva-healthy-food-ads-%28feed-ad-%28square%29%29-GABDgHW5Rn0.jpg')),
                        ),
                        SizedBox(width: 100, height: 100, child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPq56sJW0Q17mznDSEektD2SawA5lEsz1WPw&usqp=CAU")),
                        ),
                        SizedBox(width: 100, height: 100, child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTgiT972gYg0kWKy0NGGCKoP87nAMROmlwbg&usqp=CAU")),
                        ),
                        SizedBox(width: 100, height: 100, child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                          child: Image.asset("images/food/f1.jpg")),
                        ),
                      ],),
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Newly added"),
                    const SizedBox(height: 5,),
                    SingleChildScrollView (
                      scrollDirection: Axis.horizontal,
                      child: Wrap(
                        spacing: 10,
                        children: [
                        SizedBox(width: 100, height: 100, child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                          child: Image.network("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/premium-burger-ads-design-template-14186c536c4a43ccc213d62716c8e36e_screen.jpg?ts=1632881234")),
                        ),
                        SizedBox(width: 100, height: 100, child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfjV2RKMzxmAryJV-e3OLwcc7t6UZom34keQ&usqp=CAU")),
                        ),
                        SizedBox(width: 100, height: 100, child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                          child: Image.asset("images/food-ads1.jpg")),
                        ),
                        SizedBox(width: 100, height: 100, child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                          child: Image.asset("images/food/f2.jpg")),
                        ),
                        SizedBox(width: 100, height: 100, child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.elliptical(7, 7)),
                          child: Image.asset("images/food/f1.jpg")),
                        ),
                      ],),
                    ),
                  ],
                ),
              ),
              ],
            ),
          ),
        ),
      // ),
        
        
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
