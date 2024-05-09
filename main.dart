import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UTS MOBILE PROGRAMMING ROSAL',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ShoeStore(),
    );
  }
}

class ShoeStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoes'),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/profil.png'),
          ),
          SizedBox(width: 16.0),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ShoeCard(
            shoeName: 'Nike SB Zoom Blazer \nMid Premium',
            description: '',
            price: '\£8,795',
            imagePath: 'assets/images/sepatu1.png',
            backgroundColor: Colors.purple.shade100,
          ),
          SizedBox(height: 16.0),
          ShoeCard(
            shoeName: 'Nike Air Zoom Pegasus',
            description: "Men's Rood Running Shoes",
            price: '\n\£9,995',
            imagePath: 'assets/images/sepatu2.png',
            backgroundColor: Colors.cyan.shade50,
          ),
          SizedBox(height: 16.0),
          ShoeCard(
            shoeName: 'Nike Air ZoomX Vaporfly',
            description: "Men's Rood Racing Shoes",
            price: '\n\£19,695',
            imagePath: 'assets/images/sepatu3.png',
            backgroundColor: Colors.pink.shade50,
          ),
          SizedBox(height: 16.0),
          ShoeCard(
            shoeName: 'Nike Air Force 1 S50',
            description: 'Older Kids Shoe \n\n1colour',
            price: '\£6,295',
            imagePath: 'assets/images/sepatu4.png',
            backgroundColor: Colors.grey.shade300,
          ),
          SizedBox(height: 16.0),
          ShoeCard(
            shoeName: 'Nike Air ZoomX Vaporfly',
            description: "Men's Rood Racing Shoes",
            price: '\n\£19,695',
            imagePath: 'assets/images/sepatu5.png',
            backgroundColor: Colors.yellow.shade200,
          ),
        ],
      ),
    );
  }
}

class ShoeCard extends StatelessWidget {
  final String shoeName;
  final String description;
  final String price;
  final String imagePath;
  final Color backgroundColor;

  const ShoeCard({
    required this.shoeName,
    required this.description,
    required this.price,
    required this.imagePath,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  shoeName,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
