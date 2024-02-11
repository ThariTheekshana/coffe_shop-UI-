import 'package:coffee_shop_ui/screen/home_page.dart';
import 'package:coffee_shop_ui/screen/notification_page.dart';
import 'package:coffee_shop_ui/screen/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.grey.shade900,
          color: Colors.grey.shade800,
          animationDuration: const Duration(milliseconds: 300),
          // when press icon icon's index go in to function and navigate to pages
          onTap: (index) {
            switch (index) {
              case 0:
                Navigator.pushNamed(context, '/home');
                break;
              case 1:
                Navigator.pushNamed(context, '/favorite');
                break;
              case 2:
                Navigator.pushNamed(context, '/notification');
                break;
              case 3:
                Navigator.pushNamed(context, '/settings');
                break;
              default:
            }
            print(index);
          },
          items: const [
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ]),
    );
  }
}
