import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Profile'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          // Profile Header
          Container(
            color: Colors.green,
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                      'assets/user.jpg'), // Update with your image path
                ),
                const SizedBox(height: 10),
                const Text(
                  'XUE QIAN',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildStatItem('69%', 'Monthly\nGoal Progress'),
                    _buildStatItem('11 kg', 'Trash\nRecycled'),
                    _buildStatItem('3', 'Completed\nChallenges'),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Action List
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              children: [
                _buildProfileOption(Icons.edit, 'Edit Profile'),
                _buildProfileOption(Icons.star, 'My Points'),
                _buildProfileOption(Icons.favorite, 'My Favourites'),
                _buildProfileOption(Icons.card_giftcard, 'My Rewards'),
                _buildProfileOption(Icons.badge, 'My Badges'),
                _buildProfileOption(Icons.history, 'Recent Activity'),
              ],
            ),
          ),
          // Centered Sign Out Button with Icon
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Center(
              child: TextButton.icon(
                onPressed: () {
                  // Add sign-out functionality here
                },
                icon: const Icon(
                  Icons.exit_to_app,
                  color: Colors.red,
                ),
                label: const Text(
                  'Sign Out',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget for each statistic item with larger, bold font for the value
  Widget _buildStatItem(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 28, // Increased font size
            fontWeight: FontWeight.w900, // Bolder font weight
            color: Colors.white,
          ),
        ),
        Text(
          label,
          textAlign: TextAlign.center, // Center-align text for two-line labels
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  // Widget for each option in the profile
  Widget _buildProfileOption(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.green),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {
        // Add functionality here for each option
      },
    );
  }
}
