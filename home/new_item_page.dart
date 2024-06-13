import 'package:flutter/material.dart';
import 'package:grocery/core/components/product_tile_square.dart';
import 'package:grocery/core/constants/app_defaults.dart';
import 'package:grocery/core/constants/dummy_data.dart';
import 'package:grocery/core/routes/on_generate_route.dart';
// Import the AppRoutes

class ProductListPage extends StatelessWidget {
  const ProductListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(AppDefaults.padding),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          childAspectRatio: 2 / 3,
        ),
        itemCount: Dummy.products.length,
        itemBuilder: (context, index) {
          final product = Dummy.products[index];
          return ProductTileSquare(
            data: product,
            onTap: () => Navigator.pushNamed(
              context,
              RouteGenerator.productDetails,
              arguments: product, // Pass the ProductModel instance
            ),
          );
        },
      ),
    );
  }
}
