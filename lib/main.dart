import 'package:coffee_shop_ui/screen/home_page.dart';
import 'package:flutter/material.dart';

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
    );
  }
}
