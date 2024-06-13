import 'package:flutter/material.dart';

import '../../core/components/app_back_button.dart';
import 'components/faq_item.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('FAQ'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleAndParagraph(
                title: '1. How long does it take for delivery?',
                paragraph: 'Delivery typically takes 1-2 hours.',
              ),
              const Divider(),
              const TitleAndParagraph(
                title: '2. What payment methods are accepted?',
                paragraph: 'We accept credit/debit cards and mobile payments.',
              ),
              const Divider(),
              const TitleAndParagraph(
                title: '3. What areas do you deliver to?',
                paragraph: 'We deliver to all major areas in the city.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
