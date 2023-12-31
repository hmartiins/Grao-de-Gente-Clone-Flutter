import 'package:flutter/material.dart';
import 'package:graodegente/features/screens/product-page/widgets/product_page_carousel.dart';
import 'package:graodegente/features/screens/product-page/widgets/product_page_conditions.dart';
import 'package:graodegente/features/screens/product-page/widgets/product_page_infos.dart';

class ProductPageBody extends StatelessWidget {
  const ProductPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Column(
        children: [
          ProductPageConditions(),
          ProductPageCarousel(),
          ProductPageInfos()
        ],
      ),
    );
  }
}
