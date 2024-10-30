// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'recyclingItem.dart';

class RecyclingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recycling Status'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Profile Image and Text
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/user.jpg'),
                ),
                SizedBox(width: 10),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, Xue Qian!',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Ready to recycle?',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                )),
                FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RecyclingItemsPage()),
                    );
                  },
                  child: Icon(Icons.add),
                ),
              ],
            ),

            SizedBox(height: 20),
            Text(
              'Status Info',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  TabBar(
                    labelColor: Colors.green,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(text: 'Approved'),
                      Tab(text: 'Pending'),
                      Tab(text: 'Rejected'),
                    ],
                  ),
                  Container(
                    height: 200, // Height for the TabBarView
                    child: TabBarView(
                      children: [
                        ListView(
                          children: <Widget>[
                            ListTile(
                              title: Text('Newspaper'),
                              subtitle: Text('20/4/2024'),
                            ),
                            ListTile(
                              title: Text('Used Cooking Oil'),
                              subtitle: Text('20/5/2023'),
                            ),
                            ListTile(
                              title: Text('Used Furniture'),
                              subtitle: Text('2/1/2023'),
                            ),
                          ],
                        ),
                        Center(child: Text('No pending items')),
                        Center(child: Text('No rejected items')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Most Recycled Items',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Card(
              elevation: 4,
              child: Column(
                children: const [
                  ListTile(
                    title: Text('Glass Bottle'),
                    trailing: Text('14 times'),
                  ),
                  ListTile(
                    title: Text('Newspaper'),
                    trailing: Text('6 times'),
                  ),
                  ListTile(
                    title: Text('Plastic'),
                    trailing: Text('4 times'),
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
