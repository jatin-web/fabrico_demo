import 'package:fabrico_demo/presentation/widgets/container/circular_status_container.dart';
import 'package:fabrico_demo/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Color> colorsList = [
    Colors.red,
    Colors.blue,
    Colors.purple,
    Colors.green,
    Colors.yellow
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: CircularStatusContainer());
                }),
          ),

          SizedBox(height: 20),

          // ----------------- Updates -----------------
          Container(
            height: 200,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CarouselSlider.builder(
                enableAutoSlider: true,
                unlimitedMode: true,
                autoSliderTransitionTime: const Duration(seconds: 1),
                slideIndicator: CircularWaveSlideIndicator(
                    padding: const EdgeInsets.all(15)),
                slideBuilder: (index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: colorsList[index],
                        borderRadius: BorderRadius.circular(40)),
                  );
                },
                itemCount: colorsList.length),
          )
        ],
      ),
    );
  }
}
