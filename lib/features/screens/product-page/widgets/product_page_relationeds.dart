import 'package:flutter/material.dart';
import 'package:graodegente/common/widgets/GraoFooter/widgets/ProductCard/product_card.dart';

class ProductPageRelationeds extends StatelessWidget {
  const ProductPageRelationeds({super.key});

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
                  "Você também vai adorar",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            RawScrollbar(
              thumbColor: Colors.cyan,
              trackColor: Colors.cyan,
              thickness: 4,
              child: SizedBox(
                height: 650,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: ProductCard(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: ProductCard(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: ProductCard(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: ProductCard(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: ProductCard(),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan,
                    padding: const EdgeInsets.all(14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  child: const Text(
                    'Ver mais produtos',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
