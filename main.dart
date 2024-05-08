import 'package:flutter/material.dart';

class Shoe {
  final String name;
  final String type;
  final double price;
  final String imageUrl;

  Shoe({
    required this.name,
    required this.type,
    required this.price,
    required this.imageUrl,
  });
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Shoe> shoes = [
    Shoe(
      name: 'Nike SB Zoom Blazer',
      type: 'Mid Premium',
      price: 88795,
      imageUrl:
          'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/21783065-1c8a-4d66-8a97-117cf320e284/force-1-mid-se-easyon-shoes-B7l1nX.png',
    ),
    Shoe(
      name: 'Nike Air Zoom Pegasus',
      type: 'Men\'s Rood Running Shoes',
      price: 29995,
      imageUrl:
          'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/0083d873-114c-4a76-9dd3-82aa3c1b168f/air-max-dn-shoes-FtLNfm.png',
    ),
    Shoe(
      name: 'Nike ZoomX Vaporfly',
      type: 'Men\'s Road Racing Shoe',
      price: 219695,
      imageUrl:
          'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/7b327dd5-dc0f-40b5-9edb-4ed5fe779b13/air-max-dn-shoes-FtLNfm.png',
    ),
    Shoe(
      name: 'Nike Air Force 1 S50',
      type: 'Older Kids\' Shoe',
      price: 26.295,
      imageUrl:
          'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/d90e3112-ea64-4068-be0d-1e832af89fe8/air-max-dn-shoes-FtLNfm.png',
    ),
    Shoe(
      name: 'Nike Waffle One',
      type: 'Men\'s Shoes',
      price: 28295,
      imageUrl:
          'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/e8e3b479-7c84-4d35-bc3e-90b706bacc39/air-force-1-07-next-nature-se-shoes-tpPRVT.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoes'),
      ),
      body: ListView.builder(
        itemCount: shoes.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.network(shoes[index].imageUrl, width: 60),
              title: Text(shoes[index].name),
              subtitle: Text(shoes[index].type),
              trailing: Text('\$${shoes[index].price.toStringAsFixed(2)}'),
            ),
          );
        },
      ),
    );
  }
}
