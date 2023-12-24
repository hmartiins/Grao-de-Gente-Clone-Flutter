import 'package:flutter/material.dart';
import 'package:graodegente/common/GraoAppBar/grao_app_bar.dart';
import 'package:graodegente/features/screens/product-page/widgets/product_page_body.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomScrollView(
      slivers: [GraoAppBar(), ProductPageBody()],
    ));
  }
}
