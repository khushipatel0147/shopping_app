import 'package:cart_app/product/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  ProductProvider? providerTrue;
  ProductProvider? providerFalse;

  @override
  Widget build(BuildContext context) {
    providerTrue = Provider.of<ProductProvider>(context, listen: true);
    providerFalse = Provider.of<ProductProvider>(context, listen: false);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Icon(Icons.sort, size: 25, color: Colors.amber),
        actions: [
          Icon(Icons.search_rounded, size: 25, color: Colors.amber),
          SizedBox(width: 5),
          Icon(Icons.share, size: 25, color: Colors.amber),
          SizedBox(width: 5),
          IconButton(onPressed: () {
            Navigator.pushNamed(context, 'cart');
          }, icon: Icon(Icons.add_shopping_cart, size: 25, color: Colors.amber),),
          SizedBox(width: 5),
        ],
      ),
      backgroundColor: Colors.black,
      body: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 165,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25)),
                            child: Image.asset(
                              "${providerFalse!.iteamList[index].image}",
                              width: 120,
                              height: 120,
                            )),
                        SizedBox(height: 5),
                        Text(
                          "${providerFalse!.iteamList[index].star}",
                          style: TextStyle(color: Colors.amber, fontSize: 15),
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${providerFalse!.iteamList[index].name}",
                          style: TextStyle(
                            letterSpacing: 1,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          child: Container(
                            height: 40,
                            width: 110,
                            color: Colors.amber,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 1),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15)),
                                    child: Container(
                                      height: 38,
                                      width: 38,
                                      color: Colors.black,
                                      child: IconButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, 'visit',
                                                arguments: index);
                                          },
                                          icon: Icon(
                                            Icons.add,
                                            size: 25,
                                            color: Colors.amber,
                                          )),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "₹ ${providerFalse!.iteamList[index].rate}",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                  ],
                ),
              ),
            );
          },
          itemCount: providerFalse!.iteamList.length),
    ));
  }
}
