import 'package:flutter/material.dart';
import 'package:graodegente/common/widgets/GraoAppBar/grao_app_bar.dart';
import 'package:graodegente/common/widgets/GraoFooter/grao_footer.dart';
import 'package:graodegente/features/screens/product-page/widgets/product_page_about.dart';
import 'package:graodegente/features/screens/product-page/widgets/product_page_body.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          GraoAppBar(),
          ProductPageBody(),
          ProductPageAbout(),
          GraoFooter(),
        ],
      ),
    );
  }
}
