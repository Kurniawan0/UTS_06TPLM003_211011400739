import 'package:flutter/material.dart';
import 'package:uts_arip/card_product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UTS'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Shoes',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                ClipOval(
                  child: SizedBox(
                    width: 70,
                    height: 70,
                    child: Image.asset('assets/arip.jpeg'),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            CardProduct(
              color: Colors.purple[200],
              title: 'Nike SB Zoom Blazer',
              info: 'Mid Premium',
              price: 'Rp.400.000',
              image: 'assets/shoes1.png',
            ),
            const SizedBox(height: 10.0),
            CardProduct(
              color: Colors.blue[400],
              title: 'Nike Air Zoom Pegasus',
              info: 'Mens` Road Running',
              price: 'Rp.300.000',
              image: 'assets/shoes2.jpeg',
            ),
            const SizedBox(height: 10.0),
            CardProduct(
              color: Colors.pink[300],
              title: 'Nike Zoom Valopry',
              info: 'High Premium',
              price: 'Rp.256.000',
              image: 'assets/shoes3.jpg',
            ),
            const SizedBox(height: 10.0),
            CardProduct(
              color: Colors.grey[350],
              title: 'Phantofel New Edition',
              info: 'Mid Quality',
              price: 'Rp.100.000',
              image: 'assets/shoes4.jpeg',
            ),
            const SizedBox(height: 10.0),
            CardProduct(
              color: Colors.yellow[200],
              title: 'Pantofel New',
              info: 'High Quality',
              price: 'Rp.200.000',
              image: 'assets/shoes5.jpeg',
            )
          ],
        ),
      ),
    );
  }
}
