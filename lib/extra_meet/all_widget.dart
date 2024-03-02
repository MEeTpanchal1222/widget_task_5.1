import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Product {
  final String name;
  final String category;
  final double price;

  Product({required this.name, required this.category, required this.price});
}

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});
}

class Cart {
  List<CartItem> items = [];

  double get total {
    return items.fold(0, (total, current) => total + (current.product.price * current.quantity));
  }

  void addToCart(Product product) {
    int index = items.indexWhere((item) => item.product == product);
    if (index != -1) {
      items[index].quantity++;
    } else {
      items.add(CartItem(product: product));
    }
  }

  void removeFromCart(Product product) {
    int index = items.indexWhere((item) => item.product == product);
    if (index != -1) {
      if (items[index].quantity > 1) {
        items[index].quantity--;
      } else {
        items.removeAt(index);
      }
    }
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProductListScreen(),
    );
  }
}

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  double _sliderValue = 50; // Initial slider value
  final List<Product> _products = [
    Product(name: 'Product 1', category: 'Category A', price: 20),
    Product(name: 'Product 2', category: 'Category B', price: 30),
    Product(name: 'Product 3', category: 'Category A', price: 25),
    Product(name: 'Product 4', category: 'Category B', price: 35),
  ];

  List<Product> _filteredProducts = [];
  final Cart _cart = Cart();

  @override
  void initState() {
    super.initState();
    _filteredProducts = _products;
  }

  void _filterBySlider(double value) {
    setState(() {
      _sliderValue = value;
      _filteredProducts = _products.where((product) => product.price <= _sliderValue).toList();
    });
  }

  void _filterByCategory(String category) {
    setState(() {
      _filteredProducts = _products.where((product) => product.category == category).toList();
    });
  }

  void _navigateToCartScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CartScreen(cart: _cart)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        actions: <Widget>[
          IconButton(
            onPressed: _navigateToCartScreen,
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Slider(
            value: _sliderValue,
            min: 0,
            max: 100,
            onChanged: _filterBySlider,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => _filterByCategory('Category A'),
                child: const Text('Category A'),
              ),
              ElevatedButton(
                onPressed: () => _filterByCategory('Category B'),
                child: const Text('Category B'),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredProducts.length,
              itemBuilder: (context, index) {
                final product = _filteredProducts[index];
                return ListTile(
                  title: Text(product.name),
                  subtitle: Text('Category: ${product.category}, Price: \$${product.price.toStringAsFixed(2)}'),
                  trailing: IconButton(
                    icon: const Icon(Icons.add_shopping_cart),
                    onPressed: () {
                      _cart.addToCart(product);
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Added to cart'),
                      ));
                    },
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

class CartScreen extends StatelessWidget {
  final Cart cart;

  const CartScreen({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, index) {
                final item = cart.items[index];
                return ListTile(
                  title: Text(item.product.name),
                  subtitle: Text('Quantity: ${item.quantity}, Price: \$${(item.product.price * item.quantity).toStringAsFixed(2)}'),
                  trailing: IconButton(
                    icon: const Icon(Icons.remove_shopping_cart),
                    onPressed: () {
                      cart.removeFromCart(item.product);
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Removed from cart'),
                      ));
                    },
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Total: \$${cart.total.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
