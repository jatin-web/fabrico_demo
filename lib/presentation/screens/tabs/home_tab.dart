import 'package:fabrico_demo/data/data.dart';
import 'package:fabrico_demo/presentation/screens/new_collection_screen.dart';
import 'package:fabrico_demo/presentation/widgets/container/circular_status_container.dart';
import 'package:fabrico_demo/presentation/widgets/container/curved_container.dart';
import 'package:fabrico_demo/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<Color> colorsList = [
    Colors.red,
    Colors.blue,
    Colors.purple,
    Colors.green,
    Colors.yellow
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ----------------- App Bar -----------------
        const CustomAppBar(),

        const SizedBox(height: 20),

        // ----------------- Status -----------------
        Container(
          height: 100,
          padding: const EdgeInsets.only(left: 10),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: CircularStatusContainer(
                      category: categories[index],
                    ));
              }),
        ),

        const SizedBox(height: 20),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ----------------- Updates -----------------
              UpdatesContainer(),

              const SizedBox(height: 30),

              // ----------------- Categories -----------------
              getTitle("New Collection"),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              NewCollectionScreen(collection: collection)));
                },
                child: Container(
                  height: 200,
                  width: double.infinity,
                  clipBehavior: Clip.hardEdge,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  child: Image.network(
                    "https://images.unsplash.com/photo-1558769132-cb1aea458c5e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
                    fit: BoxFit.fill,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  getTitle(String text) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(text,
                style: GoogleFonts.playfairDisplay(
                    fontSize: 25, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 10),
        ],
      );
}
