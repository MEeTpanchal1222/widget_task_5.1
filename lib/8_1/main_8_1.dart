import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _sliderValue = 0.0;
  final List<Product> _products = [
    Product(name: 'Product 1', price: 10),
    Product(name: 'Product 2', price: 20),
    Product(name: 'Product 3', price: 30),
    Product(name: 'Product 4', price: 40),
    Product(name: 'Product 5', price: 50),
    Product(name: 'Product 6', price: 60),
    Product(name: 'Product 7', price: 70),
    Product(name: 'Product 8', price: 80),
    Product(name: 'Product 9', price: 90),
    Product(name: 'Product 10', price: 100),
    Product(name: 'Product 11', price: 120),
    Product(name: 'Product 12', price: 130),
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Slider(
            value: _sliderValue,
            min: 0,
            max: 150,
            divisions: 10,
            onChanged: (value) {
              setState(() {
                _sliderValue = value;
              });
            },
          ),
          Text('All products in <$_sliderValue',style: const TextStyle(fontSize: 33),),
          Expanded(
            child: ListView.builder(
              itemCount: _products.length,
              itemBuilder: (context, index) {
                if (_products[index].price <= _sliderValue) {
                  return ListTile(
                    title: Text(_products[index].name),
                    subtitle: Text('\$${_products[index].price.toString()}'),
                  );
                } else {
                  return Container();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}
