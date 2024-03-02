import 'package:flutter/material.dart';

void main() {
  runApp(const AmazonApp());
}

class AmazonApp extends StatelessWidget {
  const AmazonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon UI',
      theme: ThemeData(
        primaryColor: Colors.white,
        hintColor: Colors.orange,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const AmazonHome(),
        '/product_detail': (context) => const ProductDetailScreen(),
        '/shopping_cart': (context) => const ShoppingCartScreen(),
        '/login': (context) => const LoginScreen(),
      },
    );
  }
}

class AmazonHome extends StatefulWidget {
  const AmazonHome({super.key});

  @override
  _AmazonHomeState createState() => _AmazonHomeState();
}

class _AmazonHomeState extends State<AmazonHome> {
  String _selectedCategory = 'All';
  String _searchQuery = '';

  void _selectCategory(String category) {
    setState(() {
      _selectedCategory = category;
    });
  }

  void _updateSearchQuery(String query) {
    setState(() {
      _searchQuery = query;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Amazon'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Toggle search functionality
              // For simplicity, we'll just print the search query
              print(_searchQuery);
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context, '/shopping_cart');
            },
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Categories',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildCategoryChip('All'),
                _buildCategoryChip('Electronics'),
                _buildCategoryChip('Clothing'),
                _buildCategoryChip('Books'),
                _buildCategoryChip('Home'),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: _updateSearchQuery,
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Products',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: FutureBuilder<List<Product>>(
              future: ProductService.getProducts(_selectedCategory, _searchQuery),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      final product = snapshot.data![index];
                      return ListTile(
                        leading: Image.network(
                          product.imageUrl,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        title: Text(product.name),
                        subtitle: Text(product.description),
                        trailing: Text('\$${product.price.toStringAsFixed(2)}'),
                        onTap: () {
                          Navigator.pushNamed(context, '/product_detail');
                        },
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryChip(String category) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ChoiceChip(
        label: Text(category),
        selected: _selectedCategory == category,
        onSelected: (_) {
          _selectCategory(category);
        },
      ),
    );
  }
}

class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

class ProductService {
  static Future<List<Product>> getProducts(String category, String searchQuery) async {
    // Simulating fetching products from a backend service
    await Future.delayed(const Duration(seconds: 2)); // Simulating delay
    return List.generate(
      20,
          (index) => Product(
        name: 'Product $index',
        description: 'Description of product $index',
        price: (10 + index * 2).toDouble(),
        imageUrl: 'https://via.placeholder.com/150',
      ),
    );
  }
}

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
      ),
      body: const Center(
        child: Text('Product Detail Screen'),
      ),
    );
  }
}

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: const Center(
        child: Text('Shopping Cart Screen'),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: const Center(
        child: Text('Login Screen'),
      ),
    );
  }
}
