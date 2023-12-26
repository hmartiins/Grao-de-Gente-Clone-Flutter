import 'package:flutter/material.dart';
import 'package:graodegente/common/widgets/GraoFooter/widgets/ExpansionPanel/expansion_list_title.dart';

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  List<String> expandedValue;
  String headerValue;
  bool isExpanded;
}

class ExpansionPanelListExample extends StatefulWidget {
  const ExpansionPanelListExample({super.key, required this.panelListItems});

  final List<Item> panelListItems;

  @override
  State<ExpansionPanelListExample> createState() =>
      _ExpansionPanelListExampleState();
}

class _ExpansionPanelListExampleState extends State<ExpansionPanelListExample> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      dividerColor: Colors.cyan,
      expandIconColor: Colors.white,
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          widget.panelListItems[index].isExpanded = isExpanded;
        });
      },
      children: widget.panelListItems.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          backgroundColor: Colors.cyan,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                title: Text(
                  item.headerValue,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
          body: ExpansionListTitle(
            item: item,
            onTap: () {
              setState(() {
                widget.panelListItems
                    .removeWhere((Item currentItem) => item == currentItem);
              });
            },
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
