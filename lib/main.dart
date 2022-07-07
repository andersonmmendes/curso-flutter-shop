import 'package:flutter/material.dart';
import 'package:shop/pages/product_detail_page.dart';
import 'package:shop/pages/products_overview_page.dart';
import 'package:shop/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = ThemeData();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
            primary: Colors.purple,
            secondary: Colors.deepOrangeAccent,
          ),
          textTheme: theme.textTheme
              .copyWith(headline6: const TextStyle(fontFamily: 'Lato'))),
      home: ProductOverviewPage(),
      debugShowCheckedModeBanner: false,
      routes: {AppRoutes.productDetail: (ctx) => ProductDetailPage()},
    );
  }
}
