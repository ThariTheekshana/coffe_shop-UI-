import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String coffeeImgPath;
  final String coffeeName;
  final String coffeePrice;
  final String withFalvor;

  CoffeeTile(
      {required this.coffeeImgPath,
      required this.coffeeName,
      required this.coffeePrice,
      required this.withFalvor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 20.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        width: 200.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                coffeeImgPath,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffeeName,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    withFalvor,
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    coffeePrice,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.orange[800]),
                    child: const Icon(
                      Icons.add,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
