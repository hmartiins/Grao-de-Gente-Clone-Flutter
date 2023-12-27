import 'package:flutter/material.dart';
import 'package:graodegente/common/consts/product.dart';

class ProductPageAbout extends StatelessWidget {
  const ProductPageAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.network(
                  "https://image.graodegente.app/staticImages/u2rs8_text-background1.png",
                ),
                const Text(
                  "Sobre o produto",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            DefaultTabController(
              initialIndex: 1,
              length: 3,
              child: Column(
                children: [
                  const TabBar(
                    tabs: <Widget>[
                      Tab(
                        text: "Descrição",
                      ),
                      Tab(
                        text: "Composição",
                      ),
                      Tab(
                        text: "Especificações",
                      ),
                    ],
                    labelColor: Colors.cyan,
                    indicatorColor: Colors.cyan,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 22.0,
                      right: 22.0,
                      top: 16,
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 260,
                      child: TabBarView(
                        children: [
                          Text(ProductConsts.productDescriptions[0]),
                          Text(ProductConsts.productDescriptions[1]),
                          Text(ProductConsts.productDescriptions[2]),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
