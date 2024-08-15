import 'package:flutter/material.dart';

import 'itemsScreen.dart';


class CategoriesScreen extends StatelessWidget {
  final List<String> categories = [
    "beauty",
    "fragrances",
    "furniture",
    "groceries",
    "home-decoration",
    "kitchen-accessories",
    "laptops",
    "mens-shirts",
    "mens-shoes",
    "mens-watches",
    "mobile-accessories",
    "motorcycle",
    "skin-care",
    "smartphones",
    "sports-accessories",
    "sunglasses",
    "tablets",
    "tops",
    "vehicle",
    "womens-bags",
    "womens-dresses",
    "womens-jewellery",
    "womens-shoes",
    "womens-watches"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(15.0),
              title: Text(categories[index]),
              leading: Icon(Icons.category),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemsScreen(category: categories[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
