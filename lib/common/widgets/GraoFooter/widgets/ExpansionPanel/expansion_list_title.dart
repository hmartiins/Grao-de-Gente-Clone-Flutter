import 'package:flutter/material.dart';
import 'package:graodegente/common/widgets/GraoFooter/widgets/ExpansionPanel/expansion_panel_list.dart';

class ExpansionListTitle extends StatelessWidget {
  const ExpansionListTitle({
    super.key,
    required this.item,
    required this.onTap,
  });

  final Item item;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        textColor: Colors.white,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: item.expandedValue
              .map<Widget>(
                (String value) => Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24.0,
                    vertical: 12,
                  ),
                  child: Text(
                    value,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              )
              .toList(),
        ),
        onTap: onTap);
  }
}
