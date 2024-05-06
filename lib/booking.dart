import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart'; // Import the shimmer package

class BookingConfirmationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent, // Background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Shimmer.fromColors(

              // Use Shimmer effect for the custom illustration
              baseColor: Colors.white,
              highlightColor: Colors.deepPurple,
                child: Icon(
                  Icons.flight,
                  size: 150,
                  color: Colors.deepPurpleAccent,
                ),
              ),
            ),
            SizedBox(height: 20), // Add some space
            Text(
              'Your Booking is Confirmed!', // Display confirmation message
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
