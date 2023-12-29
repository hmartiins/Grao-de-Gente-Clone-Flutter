import 'package:flutter/material.dart';
import 'package:graodegente/common/widgets/GraoFooter/widgets/ExpansionPanel/expansion_panel_list.dart';

class GraoFooter extends StatelessWidget {
  const GraoFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Container(
          color: Colors.cyan,
          child: Column(
            children: [
              ExpansionPanelListExample(
                panelListItems: [
                  Item(
                    headerValue: 'Ajuda',
                    expandedValue: ['Central de Atendimento', 'Meu Cadastro'],
                  ),
                  Item(
                    headerValue: 'Institucional',
                    expandedValue: [
                      "A empresa",
                      "Processo de Produção",
                      "Controle de Qualidade",
                      "Nosso Algodão",
                      "Política de Privacidade",
                      "Como comprar",
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 36),
                child: SizedBox(
                  width: 80,
                  child: Image.network(
                    "https://image.graodegente.app/staticImages/ivokd_GraoVertical.webp",
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 22),
                child: Text(
                  "Grão de Gente - LGF Comércio Eletrônico LTDA - CNPJ: 26.384.531/0001-19",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 22, right: 22),
                child: Text(
                  "Rod mg 290, Km 73, s/n - Vargem da Forquilha - Jacutinga/MG - CEP: 37.590-000",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 36),
                child: SizedBox(
                  width: 96,
                  child: Image.network(
                    "https://image.graodegente.app/staticImages/nu3t6_konduza-logo.webp",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
