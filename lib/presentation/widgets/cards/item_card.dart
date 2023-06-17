import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(25),
      elevation: 5,
      clipBehavior: Clip.hardEdge,
      child: Container(
        width: double.infinity,
        height: 180,
        padding: const EdgeInsets.all(10),
        color: Colors.white,
        child: Row(
          children: [
            // ----------------- Image -----------------
            Expanded(
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
                child: Container(
              height: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Name",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        overflow: TextOverflow.ellipsis),
                  ),
                  const Text(
                    "Description",
                    style: TextStyle(
                        fontSize: 15, overflow: TextOverflow.ellipsis),
                  ),
                  const SizedBox(height: 15),
                  RichText(
                      text: const TextSpan(
                          style: TextStyle(fontSize: 18, color: Colors.black),
                          children: <TextSpan>[
                        TextSpan(text: "Rs "),
                        TextSpan(
                            text: "123 ",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey)),
                        TextSpan(
                            text: "100",
                            style: TextStyle(fontWeight: FontWeight.w500)),
                      ])),
                  SizedBox(height: 10),
                  const Text(
                    "10% discount",
                    style: TextStyle(
                        fontSize: 18, overflow: TextOverflow.ellipsis),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
