import 'package:flutter/material.dart';

import '../../core/components/app_back_button.dart';
import '../../core/components/buy_now_row_button.dart';
import '../../core/components/price_and_quantity.dart';
import '../../core/components/product_images_slider.dart';
import '../../core/components/review_row_button.dart';
import '../../core/constants/app_defaults.dart';

class CatFishDetailsPage extends StatelessWidget {
  const CatFishDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Cat Fish Details'),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDefaults.padding),
          child: BuyNowRow(
            onBuyButtonTap: () {},
            onCartButtonTap: () {},
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppDefaults.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProductImagesSlider(
                images: [
                  'https://media.11alive.com/assets/WXIA/images/444366980/444366980_1920x1080.jpg',
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'Cat Fish',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8),
              const Text('Weight: 1/pc'),
              const SizedBox(height: 8),
              PriceAndQuantityRow(
                currentPrice: 2.50,
                orginalPrice: 5.00,
                quantity: 1,
              ),
              const SizedBox(height: 16),
              Text(
                'Product Details',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
              ),
              const SizedBox(height: 8),
              /*const Text(
                'Product description goes here.',
              ),*/
              const SizedBox(height: 16),
              Text(
                'Reviews',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
              ),
              const SizedBox(height: 8),
              ReviewRowButton(totalStars: 5),
            ],
          ),
        ),
      ),
    );
  }
}
