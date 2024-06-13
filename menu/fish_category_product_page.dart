import 'package:flutter/material.dart';
import 'package:grocery/core/routes/app_routes.dart';

import '../../core/components/app_back_button.dart';
import '../../core/components/product_tile_square.dart';
import '../../core/constants/constants.dart';

class FishCategoryProductPage extends StatelessWidget {
  const FishCategoryProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fish'),
        leading: const AppBackButton(),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.only(top: AppDefaults.padding),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 0.85,
        ),
        itemCount: Fish.products.length,
        itemBuilder: (context, index) {
          final product = Fish.products[index];
          if (product.name == 'Cat fish' ||
              product.name == 'Sea bass' ||
              product.name == 'Sardines' ||
              product.name == 'Snapper Fish') {
            return ProductTileSquare2(
              data2: product,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.productDetails, // Update with your route name
                  arguments: product,
                );
              },
            );
          }
          return Container();
        },
      ),
    );
  }
}
