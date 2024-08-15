import 'package:flutter/material.dart';
import 'package:untitled9/productsModel.dart';
import '../apiProvider.dart';

class ItemsScreen extends StatefulWidget {
  final String category;

  ItemsScreen({required this.category});

  @override
  _ItemsScreenState createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  ProductsModel? productsByCategory;

  bool isLoading = true;
  fetchItems() async {
    productsByCategory =
        await Apiprovider().fetchItemsByCategory(widget.category);
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.category} Items'),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: productsByCategory?.products?.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(productsByCategory!.products![index].title!),
                  subtitle: Text(
                      productsByCategory!.products![index].price!.toString()),
                  leading: Image.network(
                      productsByCategory!.products![index].thumbnail!),
                );
              },
            ),
    );
  }
}
