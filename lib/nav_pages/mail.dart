import 'package:flutter/material.dart';

import '../widget/reuseable_text.dart';

class Mail extends StatelessWidget {
  const Mail({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.flight_takeoff,
            size: 200.0,
            color: Colors.deepPurpleAccent,
          ),
          AppText(
            text: "Bookings",
            size: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          )
        ],
      ),
    );
  }
}
