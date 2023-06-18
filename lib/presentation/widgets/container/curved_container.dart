import 'dart:async';

import 'package:fabrico_demo/data/data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpdatesContainer extends StatefulWidget {
  const UpdatesContainer({super.key});

  @override
  State<UpdatesContainer> createState() => _UpdatesContainerState();
}

class _UpdatesContainerState extends State<UpdatesContainer> {
  Duration? duration;
  Timer? timer;

  void timerFxn() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      duration = discount.discountLastDate.difference(DateTime.now());
      print(
          "${duration!.inDays} : ${duration!.inHours % 24} : ${duration!.inMinutes % 60} : ${duration!.inSeconds % 60}");

      setState(() {});
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    timerFxn();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 20, left: 15, right: 15),
      height: 200,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(40),
          image: const DecorationImage(
              image: NetworkImage(
                  "https://plus.unsplash.com/premium_photo-1676465057157-342816cc6594?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1160&q=80"),
              fit: BoxFit.cover)),
      child: Row(children: [
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              discount.title,
              style: GoogleFonts.playfairDisplay(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 25,
              ),
            ),
            Text(
              duration == null
                  ? "null"
                  : "${duration!.inDays} : ${duration!.inHours % 24} : ${duration!.inMinutes % 60} : ${duration!.inSeconds % 60}",
              style: GoogleFonts.playfairDisplay(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ],
        ))
      ]),
    );
  }
}
