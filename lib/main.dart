import 'package:coffee_shop_ui/screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:coffee_shop_ui/screen/favorite_page.dart';
import 'package:coffee_shop_ui/screen/setting_page.dart';
import 'package:coffee_shop_ui/screen/notification_page.dart';

void main() {
  runApp(const MyCoffeeShop());
}

class MyCoffeeShop extends StatelessWidget {
  const MyCoffeeShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CoffeeHomePage(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),
      initialRoute: '/',
      routes: {
        '/home': (context) => CoffeeHomePage(),
        '/favorite': (context) => FavoritePage(),
        '/notification': (context) => NotificationPage(),
        '/settings': (context) => SettingPage(),
      },
    );
  }
}
