import 'package:flutter/material.dart';

class SocialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social'),
        automaticallyImplyLeading: false,
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: <Widget>[
            TabBar(
              labelColor: Colors.green,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(text: 'Your Groups'),
                Tab(text: 'Other Groups'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView(
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          child: Icon(Icons.group),
                        ),
                        title: Text('Group 1'),
                        subtitle: Text('Person A - 02:30 PM'),
                        trailing:
                            Icon(Icons.circle, color: Colors.red, size: 10),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          child: Icon(Icons.group),
                        ),
                        title: Text('Group 2'),
                        subtitle: Text('Person B - 01:15 PM'),
                        trailing:
                            Icon(Icons.circle, color: Colors.red, size: 10),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          child: Icon(Icons.group),
                        ),
                        title: Text('Group 3'),
                        subtitle: Text('Person C - 12:45 PM'),
                      ),
                    ],
                  ),
                  // Other Groups Tab
                  ListView(
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          child: Icon(Icons.group),
                        ),
                        title: Text('Group 4'),
                        subtitle: Text('Person D - 11:00 AM'),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          child: Icon(Icons.group),
                        ),
                        title: Text('Group 5'),
                        subtitle: Text('Person E - 10:30 AM'),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          child: Icon(Icons.group),
                        ),
                        title: Text('Group 6'),
                        subtitle: Text('Person F - 09:00 AM'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}
