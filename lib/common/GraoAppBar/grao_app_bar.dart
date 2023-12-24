import 'package:flutter/material.dart';
import 'package:graodegente/common/GraoAppBar/widgets/app_bar_text_field.dart';

class GraoAppBar extends StatelessWidget {
  const GraoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      elevation: 0,
      toolbarHeight: 125,
      backgroundColor: Colors.cyan,
      centerTitle: true,
      title: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80.0),
                child: Image.network(
                  'https://image.graodegente.app/staticImages/ivokd_GraoVertical.webp',
                  height: 54,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    icon: const Icon(
                      Icons.person_outline,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    icon: const Icon(
                      Icons.favorite_outline,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 12.0,
              bottom: 12.0,
              left: 8.0,
              right: 8.0,
            ),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0)),
              child: const AppBarTextField(),
            ),
          ),
        ],
      ),
    );
  }
}
