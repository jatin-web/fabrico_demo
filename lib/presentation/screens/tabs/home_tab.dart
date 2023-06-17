import 'package:fabrico_demo/presentation/widgets/container/circular_status_container.dart';
import 'package:fabrico_demo/presentation/widgets/container/curved_container.dart';
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
        // ----------------- Status -----------------
        Container(
          height: 100,
          padding: const EdgeInsets.only(left: 10),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: CircularStatusContainer());
              }),
        ),

        SizedBox(height: 20),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ----------------- Updates -----------------
              Container(
                height: 200,
                child: CarouselSlider.builder(
                    enableAutoSlider: true,
                    unlimitedMode: true,
                    autoSliderTransitionTime: const Duration(seconds: 1),
                    slideIndicator: CircularWaveSlideIndicator(
                        padding: const EdgeInsets.all(15)),
                    slideBuilder: (index) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: CurvedContainer(),
                      );
                    },
                    itemCount: colorsList.length),
              ),

              const SizedBox(height: 30),

              // ----------------- Categories -----------------
              getTitle("New Collection"),
              Container(
                height: 200,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(40)),
                child: Image.network(
                    "https://firebasestorage.googleapis.com/v0/b/jatin-developer.appspot.com/o/project_images%2Fbitsearch.webp?alt=media&token=a435c87a-390e-4b88-b0a9-48a87c358ecd",
                    loadingBuilder: (context, child, loadingProgress) {
                  return const Center(child: CircularProgressIndicator());
                }),
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
