import 'package:fabrico_demo/constants.dart';
import 'package:fabrico_demo/data/data.dart';
import 'package:fabrico_demo/data/models/item_model.dart';
import 'package:fabrico_demo/presentation/widgets/cards/item_card.dart';
import 'package:flutter/material.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({super.key});

  @override
  State<SearchTab> createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  final TextEditingController textEditingController = TextEditingController();
  List<ItemModel> response = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: appThemeColor,
          height: 100,
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextFormField(
                  controller: textEditingController,
                  decoration: InputDecoration(hintText: "Search"),
                  onChanged: (val) {
                    setState(() {
                      response = collection.items
                          .where((e) => e.name.toLowerCase().contains(
                              textEditingController.text.toLowerCase()))
                          .toList();
                    });
                  },
                ),
              )),
            ],
          ),
        ),
        Expanded(
          child: ListView(
              children: response.map((e) => ItemCard(item: e)).toList()),
        )
      ],
    );
  }
}
