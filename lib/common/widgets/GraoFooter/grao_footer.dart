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
            ],
          ),
        ),
      ),
    );
  }
}
