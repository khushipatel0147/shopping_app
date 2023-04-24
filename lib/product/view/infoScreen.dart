import 'package:cart_app/product/modal/productModal.dart';
import 'package:cart_app/product/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VisitScreen extends StatefulWidget {
  const VisitScreen({Key? key}) : super(key: key);

  @override
  State<VisitScreen> createState() => _VisitScreenState();
}

class _VisitScreenState extends State<VisitScreen> {
  ProductProvider? providerFalse;
  ProductProvider? providerTrue;

  @override
  Widget build(BuildContext context) {
    providerFalse = Provider.of<ProductProvider>(context, listen: false);
    providerTrue = Provider.of<ProductProvider>(context, listen: true);
    int index = ModalRoute
        .of(context)!
        .settings
        .arguments as int;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            elevation: 0,
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back, size: 25, color: Colors.amber)),
            actions: [
              Icon(Icons.search_rounded, size: 25, color: Colors.amber),
              SizedBox(width: 5),
              Icon(Icons.share, size: 25, color: Colors.amber),
              SizedBox(width: 5),
              IconButton(onPressed: () {
                Navigator.pushNamed(context, 'cart');
              },
                icon: Icon(
                    Icons.add_shopping_cart, size: 25, color: Colors.amber),),
              SizedBox(width: 5),
            ],
          ),
          backgroundColor: Colors.black,
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Center(
              child: Column(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        bottomRight: Radius.circular(35),
                      ),
                      child: Image.asset(
                        "${providerFalse!.iteamList[index].image}",
                        height: 300,
                        width: 300,
                      )),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Text(
                          "${providerFalse!.iteamList[index].star}",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.amber,
                              letterSpacing: 5),
                        ),
                        Spacer(),
                        Icon(
                          Icons.favorite,
                          color: Colors.amber,
                          size: 25,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "${providerFalse!.iteamList[index].name}",
                        style: TextStyle(
                            color: Colors.amber,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            fontSize: 35),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "${providerFalse!.iteamList[index].info}",
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.amber.shade200,
                          letterSpacing: 1),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 7, right: 7),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: ClipRRect(
                              borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(19)),
                              child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.amber)),
                                child: Icon(
                                  Icons.add,
                                  size: 25,
                                  color: Colors.amber,
                                ),
                              ),
                            )),
                        Text(
                          "Rating",
                          style: TextStyle(
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.amber),
                        ),
                        Spacer(),
                        Text(
                          "₹ ${providerFalse!.iteamList[index].rate}",
                          style: TextStyle(
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.amber),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                    child: InkWell(
                      onTap: () {
                        providerFalse!.add(index);
                        Navigator.pushReplacementNamed(context, 'cart');
                      },
                      child: Container(
                        height: 50,
                        width: 200,
                        color: Colors.amber,
                        child: Center(
                            child: Text(
                              "Add to Cart",
                              style: TextStyle(
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.black),
                            )),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
