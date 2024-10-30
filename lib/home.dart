import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Susplanet'),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Points Balance
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Point Balance',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  '0.00',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Challenge Section
            Text(
              'Challenge',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Card(
              color: Color(0xFFC0E535),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: BorderSide(color: Colors.black, width: 2.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '30-Days Zero Waste',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4D9027)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Day 22'),
                        Text(
                          '69%',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4D9027),
                          ),
                        ),
                      ],
                    ),
                    LinearProgressIndicator(
                      value: 0.69,
                      minHeight: 20,
                      backgroundColor: Colors.white,
                      valueColor: AlwaysStoppedAnimation(Colors.amber),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Eco Tips Section
            Row(
              children: [
                // Eco Tips Section
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Eco Tips',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Card(
                        color: Color(0xFFF9F8F8),
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Wash Clothes in Cold Water',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Washing clothes with cold water reduces energy consumption.',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16),
                // News Section
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'News',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Stack(
                          children: <Widget>[
                            // Background Image
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                'assets/news_background.jpg', // Your background image
                                height: 165.0,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            // Content on top of the background image
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Container(
                                color: Colors.black.withOpacity(
                                    0.3), // Semi-transparent black overlay
                                height: 165.0, // Match the height of the image
                                width: double
                                    .infinity, // Match the width of the image
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Oct 25, 2024',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors
                                          .white, // Make text color contrast with background
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Stuttering progress on 30×30 ocean protection',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors
                                          .white, // Make text color contrast with background
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text('See More'),
                                      style: TextButton.styleFrom(
                                        backgroundColor: Colors
                                            .white, // Make button text color contrast with background
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Eco Calendar Section
            Text(
              'Eco Calendar',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Card(
              color: Color(0xFFFFD715),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fri 25/10 Community Clean-up drives',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            //SizedBox(height: 2), // Space between cards
            Card(
              color: Color(0xFFC0E535),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Thu 31/10 World Cities Day',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Stack(
                children: <Widget>[
                  // Background Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      'assets/zeroWaste.jpeg', // Your background image
                      height: 120.0, // Adjust height as needed
                      width: double.infinity,
                      fit: BoxFit.cover, // Ensure the image covers the card
                    ),
                  ),
                  // Content on top of the background image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      color: Colors.black
                          .withOpacity(0.3), // Semi-transparent black overlay
                      height: 120.0, // Match the height of the image
                      width: double.infinity, // Match the width of the image
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1/11 Challege Completion: 30-Days Zero Waste',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors
                                .white, // Ensure text is readable on background
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
