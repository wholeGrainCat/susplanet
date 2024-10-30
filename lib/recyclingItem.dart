import 'package:flutter/material.dart';

class RecyclingItemsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recycling Items'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What would you like to recycle today?',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 50,
                children: [
                  _buildRecyclingItem(
                      context, 'Cooked Oil', 'assets/cookedOil.jpg'),
                  _buildRecyclingItem(context, 'Electronic Device',
                      'assets/electronicDevice.jpg'),
                  _buildRecyclingItem(
                      context, 'Furniture', 'assets/furniture.jpg'),
                  _buildRecyclingItem(
                      context, 'Inkjet Cartridge', 'assets/inkjet.jpg'),
                  _buildRecyclingItem(context, 'Glass', 'assets/glass.jpg'),
                  _buildRecyclingItem(context, 'Metal', 'assets/metal.jpg'),
                  _buildRecyclingItem(context, 'Paper', 'assets/paper.jpg'),
                  _buildRecyclingItem(context, 'Plastic', 'assets/plastic.jpg'),
                  _buildRecyclingItem(context, 'Others', 'assets/other.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecyclingItem(
      BuildContext context, String item, String imagePath) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            // Define your onPressed action here
          },
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 12),
        Text(
          item,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: RecyclingItemsPage(),
  ));
}
