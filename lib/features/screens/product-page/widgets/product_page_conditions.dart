import 'package:flutter/material.dart';

class ProductPageConditions extends StatelessWidget {
  const ProductPageConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.credit_card,
              size: 24,
              color: Colors.black54,
            ),
          ),
          Text(
            'Tudo em até 12X sem juros',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
