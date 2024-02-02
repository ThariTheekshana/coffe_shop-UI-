import 'package:coffee_shop_ui/utill/coffee_tile.dart';
import 'package:coffee_shop_ui/utill/coffee_type.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeHomePage extends StatefulWidget {
  const CoffeeHomePage({super.key});

  @override
  State<CoffeeHomePage> createState() => _CoffeeHomePageState();
}

class _CoffeeHomePageState extends State<CoffeeHomePage> {
  // list of coffee types
  final List coffeeType = [
    // [coffee type, isSelected]
    ['Cappucino', true],
    ['Latte', false],
    ['Black', false],
    ['Tea', false],
  ];

  // user tapped on coffee type
  void coffeeTypeSelected(int index) {
    setState(() {
      // we crete this loop makes everything false
      for (int i = 0; i < coffeeType.length; i++) {
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: Icon(Icons.person),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),

      // this is a normal bottom nav bar
      // bottomNavigationBar: BottomNavigationBar(items: const [
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.home),
      //     label: '',
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.favorite),
      //     label: '',
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.notifications),
      //     label: '',
      //   )
      // ]),

      // this is a curved bottom navigartion bar
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.grey.shade900,
          color: Colors.grey.shade800,
          animationDuration: const Duration(milliseconds: 300),
          // when press icon icon's index go in to function and navigate to pages
          onTap: (index) {
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Find the best coffee for you',
              style: GoogleFonts.bebasNeue(
                fontSize: 56.0,
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                ),
                hintText: 'Find your coffee here ',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: coffeeType.length,
              itemBuilder: (context, index) {
                return CoffeeType(
                    coffeeType: coffeeType[index][0],
                    isSelected: coffeeType[index][1],
                    onTap: () {
                      coffeeTypeSelected(index);
                    });
              },
            ),
          ),
          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CoffeeTile(
                coffeeImgPath: 'lib/images/hot_latte.png',
                coffeeName: 'Black Coffee',
                coffeePrice: '\$4.00',
                withFalvor: 'With Almond Milk',
              ),
              CoffeeTile(
                coffeeImgPath: 'lib/images/latte.png',
                coffeeName: 'Tea',
                coffeePrice: '\$3.69',
                withFalvor: 'With Almond Milk',
              ),
              CoffeeTile(
                coffeeImgPath: 'lib/images/cream_latte.png',
                coffeeName: 'Capputino',
                coffeePrice: '\$4.20',
                withFalvor: 'With Cream Milk',
              ),
              CoffeeTile(
                coffeeImgPath: 'lib/images/latte.png',
                coffeeName: 'Latte',
                coffeePrice: '\$3.98',
                withFalvor: 'With Almond Milk',
              ),
            ],
          ))
        ],
      ),
    );
  }
}
