import 'package:ShopApp/Providers/orders.dart';
import 'package:ShopApp/Screens/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './Screens/products_overveiw_screen.dart';
import './Screens/product_detail_screen.dart';
import 'Providers/orders.dart';
import 'Screens/cart_screen.dart';
import './Providers/products.dart';
import 'Providers/cart.dart';
import './Screens/orders_screen.dart';
import 'Screens/user_product_screen.dart';
import './Screens/edit_product_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
         ChangeNotifierProvider(
          create: (ctx) => Orders(),
        ),
      ],
      child: MaterialApp(
          title: 'MyShop',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.deepOrange,
            fontFamily: 'Lato',
          ),
          home: ProductOverwiewScreen(),
          routes: {
            ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
            CartScreen.routeName: (ctx) => CartScreen(),
            OrdersScreen.routeName: (ctx) => OrdersScreen(),
            UserProductsScreen.routeName: (ctx) => UserProductsScreen(),
            EditProductScreen.routeName: (ctx) => EditProductScreen(),
          }),
    );
  }
}
