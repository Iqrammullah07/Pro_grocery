import 'package:flutter/material.dart';

import '../../../core/routes/app_routes.dart';

class DontHaveAccountRow extends StatelessWidget {
  const DontHaveAccountRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Don\'t Have Account?'),
        TextButton(
          onPressed: () => Navigator.pushNamed(context, AppRoutes.signup),
          child: const Text(
            'Sign Up',
            style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
