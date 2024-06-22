import 'package:flutter/material.dart';
import 'package:mobile_dev_project/login.dart';
import 'package:mobile_dev_project/settings/creditcardscreen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

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

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(225, 247, 245, 100),
                borderRadius: BorderRadius.all(Radius.circular(7))
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 40,
                        height: 40,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(90)),
                          child: Image.asset("images/default-pfp.png")
                        ),
                      ),
                      const SizedBox(width: 10,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("username")
                        ],
                      ),
                    ],
                  ),
                  
                  const Icon(Icons.arrow_forward_ios_rounded,size: 20,),
                  
                ],
              ),
            ),

            const SizedBox(height: 10,),

            const SettingBox(name: "Credit Card", text: "xxxx-xxxx-xxxx-xxxx", destination: CreditInfoScreen(),),
            const SizedBox(height: 10,),

            const SettingBox(name: "Message Notification", text: "enabled"),
            const SizedBox(height: 10,),

            const SettingBox(name: "Policies"),
            const SizedBox(height: 10,),

            const SettingBox(name: "Address"),
            const SizedBox(height: 10,),

            const SettingBox(name: "Bills"),
            const SizedBox(height: 10,),

            const SettingBox(name: "Feedback"),
            const SizedBox(height: 10,),

            const SettingBox(name: "Deactivate account"),
            const SizedBox(height: 10,),

            const SettingBox(name: "Logout", destination: LoginScreen(), navBar: false,),
          ],
        ),
      ),
    );
  }
  
}

class SettingBox extends StatelessWidget {
  const SettingBox({super.key, required this.name, this.text="", this.destination, this.navBar});

  final String name;
  final String text;
  final Widget? destination;
  final bool? navBar;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if (destination != null) {
          PersistentNavBarNavigator.pushNewScreen(
            context,
            withNavBar: navBar,
            screen: destination!,
          );
        }
        
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(225, 247, 245, 100),
          borderRadius: BorderRadius.all(Radius.circular(7))
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name),

            Row(
              children: [
                Text(text),
                const SizedBox(width: 10,),
                const Icon(Icons.arrow_forward_ios_rounded, size: 20,),
              ],
            )
          ]
        ),
      )
    );
  }
  
}