import 'package:fabrico_demo/constants.dart';
import 'package:fabrico_demo/presentation/widgets/cards/item_card.dart';
import 'package:fabrico_demo/utils.dart';
import 'package:flutter/material.dart';

class NewCollectionScreen extends StatelessWidget {
  const NewCollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey.withOpacity(0.05),
          child: Column(
            children: [
              // ----------------- App Bar -----------------
              getAppBar("New Collection"),
              const SizedBox(height: 20),

              // ----------------- Body -----------------
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: ListView.builder(
                      itemCount: 10,
                      shrinkWrap: false,
                      itemBuilder: (context, index) {
                        return const Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: ItemCard());
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
