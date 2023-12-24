import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:graodegente/common/consts/product.dart';

class ProductPageCarousel extends StatelessWidget {
  const ProductPageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 400.0,
        viewportFraction: 1,
      ),
      items: ProductConsts.productPhotos.map((String photo) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Colors.amber),
              child: Image.network(
                photo,
                fit: BoxFit.cover,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
