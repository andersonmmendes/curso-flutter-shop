import 'package:flutter/material.dart';
import 'package:shop/components/product_grid.dart';

import '../models/product.dart';

class ProductOverviewPage extends StatelessWidget {
  ProductOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha loja'),
      ),
      body: ProductGrid(),
    );
  }
}
