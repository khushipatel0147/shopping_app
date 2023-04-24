import 'package:cart_app/product/modal/productModal.dart';
import 'package:cart_app/product/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  ProductProvider? providerTrue;
  ProductProvider? providerFalse;

  @override
  Widget build(BuildContext context) {
    providerFalse = Provider.of<ProductProvider>(context, listen: false);
    providerTrue = Provider.of<ProductProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            elevation: 0,
            title: Text(
              "Your Cart",
              style: TextStyle(
                fontSize: 25,
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back, size: 25, color: Colors.amber)),
          ),
          backgroundColor: Colors.black,
          body: ListView.builder(
              itemBuilder: (context, index) {
                return mycart(index);
              },
              itemCount: providerTrue?.cartList.length),
        ));
  }

  Widget mycart(int index) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 1),
        height: 100,
        width: double.infinity,
        child: Row(

          children: [

            ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                child: Image.asset("${providerFalse!.cartList[index].image}")),
            SizedBox(width: 15),
            Container(
              width: 220,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${providerFalse!.cartList[index].name}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                        letterSpacing: 1,
                        fontSize: 35,
                      )),
                  Text("${providerFalse!.cartList[index].star}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                        letterSpacing: 1,
                        fontSize: 8,
                      )),
                  Row(
                    children: [
                      Text("₹ ${(providerTrue!.cartList[index].rate)!*(providerTrue!.cartList[index].qa)!}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.amber,
                            letterSpacing: 1,
                            fontSize: 20,
                          )),
                      Spacer(),
                      Container(
                        height: 40, width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(onTap: () {
                              providerFalse!.minus(index);
                            },
                                child: Icon(
                                  Icons.remove_circle_outline, size: 25,
                                  color: Colors.amber,)),
                            Text(" ${providerTrue!.cartList[index].qa}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber,
                                  letterSpacing: 1,
                                  fontSize: 20,
                                )),
                            InkWell(onTap: () {
                              providerFalse!.plus(index);
                            },
                                child: Icon(Icons.add_circle_outline, size: 25,
                                  color: Colors.amber,)),
                          ],
                        ),
                      ),

                    ],
                  )

                ],
              ),
            )

          ],

        ),
      ),
    );
  }
}
