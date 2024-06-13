import 'package:flutter/material.dart';

import '../../core/components/app_back_button.dart';
import '../../core/constants/app_defaults.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('About Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppDefaults.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Us',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: AppDefaults.padding),
            const Text(
                '''Welcome to Wet Market App! We are dedicated to connecting you with your neighborhood wet markets, making it easier than ever to discover and purchase your daily essentials. Our platform brings wet market owners and customers together, providing a convenient, efficient, and user-friendly shopping experience. Whether you're looking for fresh groceries, household items, or your favorite snacks, we've got you covered. Shop local, save time, and enjoy the best your community has to offer with Wet Market App!''')
          ],
        ),
      ),
    );
  }
}
