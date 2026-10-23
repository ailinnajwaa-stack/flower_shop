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
        backgroundColor: Colors.pink,
        title: const Text(
          'Ailin Flower Shop',
          style: TextStyle(color: Colors.white, fontFamily: 'Pacifico'),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Container: banner above the menu cards
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              color: Colors.pink.shade50,
              child: const Text(
                'Fresh Flowers Today',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const FlowerCard('rose.png', 'Red Rose itu Cinta', 'RM 45'),
            const FlowerCard(
              'tulip.png',
              'Tulip buat mata tak berkelip',
              'RM 35',
            ),
            const FlowerCard('sunflower.png', 'Sunflower my Sunshine', 'RM 30'),
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
      color: Colors.pinkAccent,
      margin: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Image.asset('assets/images/$image', width: 60, height: 60),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              price,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(width: 10),
            const Icon(Icons.local_florist, color: Colors.white, size: 30),
          ],
        ),
      ),
    );
  }
}
