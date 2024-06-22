import 'package:flutter/material.dart';
import 'package:mobile_dev_project/cart/cartscreen.dart';
import 'package:mobile_dev_project/messages/chatscreen.dart';
import 'package:mobile_dev_project/homescreen.dart';
import 'package:mobile_dev_project/foodscreen.dart';
import 'package:mobile_dev_project/login.dart';
import 'package:mobile_dev_project/settings/settingscreen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: PersistentTabView(
        tabs: [
          PersistentTabConfig(
            screen: const HomeScreen(),
            item: ItemConfig(
              icon: const Icon(Icons.home),
              title: "Home",
            ),
          ),
          PersistentTabConfig(
            screen: const FoodScreen(),
            item: ItemConfig(
              icon: const Icon(Icons.restaurant),
              title: "Food",
            ),
          ),
          PersistentTabConfig(
            screen: const CartScreen(),
            item: ItemConfig(
              icon: const Icon(Icons.shopping_cart),
              title: "Cart",
            ),
          ),
          PersistentTabConfig(
            screen: const ChatScreen(),
            item: ItemConfig(
              icon: const Icon(Icons.message),
              title: "Messages",
            ),
          ),
          PersistentTabConfig(
            screen: const SettingScreen(),
            item: ItemConfig(
              icon: const Icon(Icons.settings),
              title: "Settings",
            ),
          ),
        ],
        navBarBuilder: (navBarConfig) => Style1BottomNavBar(
          navBarConfig: navBarConfig,
        ),
      ),
    );
  }

}
