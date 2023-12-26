import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:graodegente/common/consts/product.dart';

class ProductPageCarousel extends StatefulWidget {
  const ProductPageCarousel({super.key});

  @override
  State<ProductPageCarousel> createState() => _ProductPageCarouselState();
}

class _ProductPageCarouselState extends State<ProductPageCarousel> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 400.0,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
          carouselController: _controller,
          items: ProductConsts.productPhotos.map((String photo) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(color: Colors.grey),
                  child: Image.network(
                    photo,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: ProductConsts.productPhotos.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: (MediaQuery.of(context).size.width /
                        ProductConsts.productPhotos.length) -
                    14,
                height: 2,
                margin: const EdgeInsets.symmetric(
                  vertical: 19.0,
                  horizontal: 4.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: _current == entry.key ? Colors.cyan : Colors.black26,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
