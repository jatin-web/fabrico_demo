import 'package:fabrico_demo/constants.dart';
import 'package:fabrico_demo/data/models/collection.dart';
import 'package:fabrico_demo/presentation/widgets/cards/item_card.dart';
import 'package:fabrico_demo/utils.dart';
import 'package:flutter/material.dart';

class NewCollectionScreen extends StatelessWidget {
  const NewCollectionScreen({super.key, required this.collection});
  final CollectionModel collection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.withOpacity(0.05),
        child: Column(
          children: [
            // ----------------- App Bar -----------------
            getAppBar("New Collection", true, context),
            const SizedBox(height: 20),

            // ----------------- Body -----------------
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ListView.builder(
                    itemCount: collection.items.length,
                    shrinkWrap: false,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: ItemCard(
                            item: collection.items[index],
                          ));
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
