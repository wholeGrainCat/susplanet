import 'package:flutter/material.dart';
import 'login.dart';

class StartingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Center the entire container
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Center the content vertically
            crossAxisAlignment:
                CrossAxisAlignment.center, // Center the content horizontally
            children: [
              Column(
                children: [
                  Text(
                    'SUSPLANET',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    'YOUR DAILY DOSE OF GREEN',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.green[700],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add spacing between elements
              Image.asset(
                'assets/greenEarth.jpg',
                width: MediaQuery.of(context).size.width *
                    0.8, // Resize image relative to screen width
              ),
              SizedBox(height: 20), // Add spacing between elements
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
