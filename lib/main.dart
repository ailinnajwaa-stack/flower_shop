import 'package:flutter/material.dart';

void main() {
  runApp(const FlowerShopApp());
}

class FlowerShopApp extends StatelessWidget {
  const FlowerShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(236, 238, 221, 1),
        title: const Text(
          'Ailin Flower Shop',
          style: TextStyle(
            color: Color.fromRGBO(199, 72, 159, 1),
            fontFamily: 'Pacifico',
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Container: banner above the menu cards
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              color: const Color.fromRGBO(252, 228, 236, 1),
              child: const Text(
                'Fresh Flowers Today',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromRGBO(199, 72, 159, 1),
                  fontFamily: 'Pacifico',
                ),
              ),
            ),
            const FlowerCard('rose.jpg', 'Red Rose itu Cinta', 'RM 45'),
            const FlowerCard(
              'tulip.jpg',
              'Tulip buat mata tak berkelip',
              'RM 35',
            ),
            const FlowerCard('sunflower.jpg', 'Sunflower my Sunshine', 'RM 30'),
          ],
        ),
      ),
    );
  }
}

/// One reusable card. Only the image, name and price change.
class FlowerCard extends StatelessWidget {
  const FlowerCard(this.image, this.name, this.price, {super.key});

  final String image;
  final String name;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: const Color.fromRGBO(236, 238, 221, 1),
      margin: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Image.asset(
              'assets/images/$image',
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),

            const SizedBox(width: 20),
            Expanded(
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 30,
                  color: Color.fromRGBO(199, 72, 159, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              price,
              style: const TextStyle(
                fontSize: 18,
                color: Color.fromRGBO(199, 72, 159, 1),
              ),
            ),
            const SizedBox(width: 10),
            const Icon(
              Icons.local_florist,
              color: Color.fromRGBO(199, 72, 159, 1),
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
