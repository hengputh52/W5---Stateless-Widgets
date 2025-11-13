import 'package:flutter/material.dart';

enum Product {
  dart(
    'Dart', 
    'The best object-oriented language',
    'assets/ex3/dart.png',
    ),
  flutter('Flutter', 
  'The best mobile widget library', 
  'assets/ex3/flutter.png'
   ,),
  firebase(
    'Firebase', 
    'The best cloud database', 
    'assets/ex3/firebase.png'
    ,);

  final String title;
  final String description;
  final String imagePath;

  const Product(this.title, this.description, this.imagePath);
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Products')),
        backgroundColor: Color(0xFF2196F3),

        body: Padding(

          padding: EdgeInsets.all(35),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //space btw each box
                CustomCard(product: Product.dart),
                SizedBox(height: 40),
                CustomCard(product: Product.flutter),
                SizedBox(height: 40),
                CustomCard(product: Product.firebase),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    required this.product,
    super.key,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
      ),
        clipBehavior: Clip.antiAlias,
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Blue header with image
          Container(
            height: 100,
  
            color: Colors.white,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(10),
            child: Image.asset(
              product.imagePath,
              height: 100,
              
            ),
          ),
          // Text content
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  product.description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
