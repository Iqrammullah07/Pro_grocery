import 'package:flutter/material.dart';

import '../../../core/components/dotted_divider.dart';
import '../../../core/constants/constants.dart';
import 'item_row.dart';

class ItemTotalsAndPrice extends StatelessWidget {
  const ItemTotalsAndPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(AppDefaults.padding),
      child: Column(
        children: [
          ItemRow(
            title: 'Total Item',
            value: '',
          ),
          ItemRow(
            title: 'Weight',
            value: '',
          ),
          ItemRow(
            title: 'Price',
            value: '',
          ),
          ItemRow(
            title: 'Price',
            value: '',
          ),
          DottedDivider(),
          ItemRow(
            title: 'Total Price',
            value: '',
          ),
        ],
      ),
    );
  }
}
