import 'package:flutter/material.dart';

import '../../../core/components/title_and_action_button.dart';
import 'checkout_address_card.dart';

class AddressSelector extends StatelessWidget {
  const AddressSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleAndActionButton(
          title: 'Select Delivery Address',
          actionLabel: 'Add New',
          onTap: () {},
          isHeadline: false,
        ),
        AddressCard(
          label: 'Home Address',
          phoneNumber: '',
          address: '',
          isActive: false,
          onTap: () {},
        ),
        AddressCard(
          label: '',
          phoneNumber: '',
          address: '',
          isActive: true,
          onTap: () {},
        )
      ],
    );
  }
}
