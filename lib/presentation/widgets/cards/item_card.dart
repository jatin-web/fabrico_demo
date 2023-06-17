import 'package:fabrico_demo/data/models/item_model.dart';
import 'package:fabrico_demo/presentation/screens/details_screen.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailScreen(item: item)));
      },
      child: Material(
        borderRadius: BorderRadius.circular(25),
        elevation: 1,
        clipBehavior: Clip.hardEdge,
        child: Container(
          width: double.infinity,
          height: 150,
          padding: const EdgeInsets.all(10),
          color: Colors.white,
          child: Row(
            children: [
              // ----------------- Image -----------------
              Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  clipBehavior: Clip.hardEdge,
                  height: double.infinity,
                  child: Image.asset(
                    "assets/images/clothes_hanged.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 15),

              // ----------------- Details -----------------
              Expanded(
                  flex: 6,
                  child: Container(
                    height: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          item.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              overflow: TextOverflow.ellipsis),
                        ),
                        Text(
                          item.desciption,
                          style: const TextStyle(
                              fontSize: 15, overflow: TextOverflow.ellipsis),
                        ),
                        const SizedBox(height: 15),
                        RichText(
                            text: TextSpan(
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.black),
                                children: <TextSpan>[
                              TextSpan(
                                  text: "\$${item.price}",
                                  style: const TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: Colors.grey)),
                              const TextSpan(text: "  "),
                              TextSpan(
                                  text:
                                      "\$${(int.parse(item.price) * (100 - int.parse(item.discount))) / 100}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500)),
                            ])),
                        const SizedBox(height: 10),
                        Text(
                          "${item.discount}% discount",
                          style: const TextStyle(
                              fontSize: 18, overflow: TextOverflow.ellipsis),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
