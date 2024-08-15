import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled9/productsModel.dart';
import 'package:untitled9/apiProvider.dart';




class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Apiprovider? apiProvider;
  ProductsModel? productsModel;
  bool isLoading = true;
  getProducts()async{
    productsModel = await Apiprovider().getProducts();
    setState(() {
      isLoading = false;
    });
  }
  @override
  void initState(){
    super.initState();
    getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:  Text("Main Page")),
      ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [

                isLoading == true? const Center(child:  CircularProgressIndicator()) :
                ListView.separated(
                    shrinkWrap: true,
                    physics: const  NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => buildproducts(product:productsModel!.products![index]),
                    separatorBuilder: (context, index) =>
                    const SizedBox(height: 15),
                    itemCount:productsModel!.products!.length),

              ],
            ),
          ),
        )
    );}
  }

Widget buildproducts(
    {required Product product}) =>
    SingleChildScrollView(
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                product.thumbnail!
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(width: 250,
                child: Text(product.title!,maxLines: 2,
                            overflow:TextOverflow.ellipsis,),
              ),
              const SizedBox(
                height: 5,
              ),Container(
                width: 250,
                child: Text(product.description!,maxLines: 2,
                overflow:TextOverflow.ellipsis,),
              ),

              SizedBox(
                width: 240,
                child: Row(
                  children: [
                    Text(
                      product.price!.toString(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      width: 20,),
                    Text(product.category!),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );