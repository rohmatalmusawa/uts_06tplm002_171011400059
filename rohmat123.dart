import 'package:flutter/material.dart';

void main() {
  runApp(rohmat());
}

class rohmat extends StatelessWidget {
  const rohmat({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "UTS_06TPLM002_171011400059",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductListScreen(),
    );
  }
}

class Product {
  final String name;
  final String imageUrl;
  final String description;
  final String price;

  Product(this.name, this.imageUrl, this.description, this.price);
}

final List<Product> products = [
  Product(
      "Nike Free Run 2",
      ("https://pngfolio.com/images/all_img/copy/1635221496shoes-png-image.png"),
      "Men's Road Running Shoes",
      "Rp 700.000"),
  Product(
      "Nike Janoski Mid White",
      ("https://pngfolio.com/images/all_img/copy/1635221496shoes-png-image.png"),
      "Men's shoes",
      "Rp 800.000"),
  Product(
      "Nike Zoom Mid White",
      ("https://pngfolio.com/images/all_img/copy/1635221496shoes-png-image.png"),
      "Men's shoes",
      "Rp 300.000"),
  Product(
      "Nike Waffle Mid White",
      ("https://pngfolio.com/images/all_img/copy/1635221496shoes-png-image.png"),
      "older shoes",
      "Rp 150.000"),
  Product(
      "Nike Janoski Mid White",
      ("https://pngfolio.com/images/all_img/copy/1635221496shoes-png-image.png"),
      "Men's shoes",
      "Rp 120.000"),
];

class ProductListScreen extends StatelessWidget {
  ProductListScreen({Key? key});

  final List<Color> colors = [
    Colors.purple[400]!,
    Colors.teal[200]!,
    Colors.red[200]!,
    Colors.green[200]!,
    Colors.yellow[200]!,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: const [
                Text("Shoes",
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
                SizedBox(width: 16.0),
                CircleAvatar(
                  backgroundImage: AssetImage("gambar/foto profil.jpeg"),
                  radius: 24.0,
                  backgroundColor: Colors.orange,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                final product = products[index];
                return Container(
                  margin: EdgeInsets.all(10),
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: colors[index % colors.length],
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(product.name,
                                style: const TextStyle(fontSize: 20.0)),
                            const SizedBox(height: 8.0),
                            Text(product.description),
                            const SizedBox(height: 8.0),
                            Text('${product.price}',
                                style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Image(image: NetworkImage(product.imageUrl)),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}