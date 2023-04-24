import 'package:cart_app/product/provider/product_provider.dart';
import 'package:cart_app/product/view/cartScreen.dart';
import 'package:cart_app/product/view/infoScreen.dart';
import 'package:cart_app/product/view/productScreen.dart';
import 'package:cart_app/product/view/spleshScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ProductProvider(),)
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
       '/': (context) =>Splesh(),
       'main': (context) =>ProductScreen(),
       'visit': (context) =>VisitScreen(),
       'cart': (context) =>CartScreen(),

      },
    ),
  ));
}