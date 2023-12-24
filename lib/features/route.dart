import 'package:flutter/material.dart';
import 'package:graodegente/features/screens/product-page/product_page.dart';

class AplicationRoute extends StatelessWidget {
  const AplicationRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) {
              return const ProductPage();
            });
          default:
            return null;
        }
      },
    );
  }
}
