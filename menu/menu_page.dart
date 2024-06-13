import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import '../../core/routes/app_routes.dart';
import 'components/category_tile.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 32),
          Text(
            'Choose a category',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          const CategoriesGrid()
        ],
      ),
    );
  }
}

class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        children: [
          CategoryTile(
            imageLink: 'https://i.imgur.com/tGChxbZ.png',
            label: 'Vegetables',
            backgroundColor: AppColors.primary,
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://cdn-icons-png.freepik.com/512/933/933310.png',
            label: 'Meat',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.meatCategoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/yOFxoIP.png',
            label: 'Fish',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.fishCategoryDetails);
            },
          ),
        ],
      ),
    );
  }
}
