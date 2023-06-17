import 'package:fabrico_demo/utils.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        getAppBar("Profile", false, context),
        Expanded(
            child: Center(
                child: Text(
          "Profile",
          style: TextStyle(fontSize: 20, color: Colors.grey),
        )))
      ],
    );
  }
}
