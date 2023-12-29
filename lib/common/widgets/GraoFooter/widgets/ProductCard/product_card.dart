import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            Text(
              "15%",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              " OFF",
              style: TextStyle(
                fontSize: 16,
                color: Colors.cyan,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Image.network(
          "https://dmhxz00kguanp.cloudfront.net/fotos/192150/cobertor-harry-potter-sonserina-1m-482435.jpg",
          width: 350,
          height: 350,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                "https://image.graodegente.app/selo/mobile/originals/GRAO-yz7ut_selo-harry-potter.png-1698087751448-55606a83-c2bd-4966-95fd-d5eadcb3c5ff.webp",
              ),
              const SizedBox(height: 8.0),
              Text(
                "Manta Harry Potter Sonserina 1M".toUpperCase(),
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              const Text("Ref: 192150"),
              const SizedBox(height: 20.0),
              const Text(
                "de R\$ 77,53 por:",
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              const SizedBox(height: 4.0),
              const Text(
                "8x de R\$10,07",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4.0),
              const Row(
                children: [
                  Text(
                    "R\$ 65,90",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    " no pix ou boleto",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
