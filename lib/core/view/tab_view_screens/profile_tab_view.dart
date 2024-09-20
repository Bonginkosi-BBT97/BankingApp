import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Placeholder Image
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://via.placeholder.com/100'), // Replace with your image URL
            ),
          ),
          const SizedBox(height: 16),
          // User Information
          const Text('Name: Nkosiyabo', style: TextStyle(fontSize: 18)),
          const Text('Surname: Tshabalala', style: TextStyle(fontSize: 18)),
          const Text('Email: NkosiyaboTshabalala@gmail.co.za', style: TextStyle(fontSize: 18)),
          const SizedBox(height: 24),
          // Account Settings Section Heading
          const Text(
            'Account Settings',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          // Buttons Section
          _buildButton(
            context,
            icon: Icons.lock,
            label: 'Change Password',
            onPressed: () {
              // Handle Change Password
            },
          ),
          const SizedBox(height: 12),
          _buildButton(
            context,
            icon: Icons.logout,
            label: 'Sign Out',
            onPressed: () {
              // Handle Sign Out
            },
          ),
          const SizedBox(height: 12),
          _buildButton(
            context,
            icon: Icons.delete,
            label: 'Delete Account',
            onPressed: () {
              // Handle Delete Account
            },
          ),
        ],
      ),
    );
  }

  ElevatedButton _buildButton(BuildContext context, {required IconData icon, required String label, required VoidCallback onPressed}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 12),
        minimumSize: Size(double.infinity, 50), // Ensures all buttons are the same length
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start, // Aligns items to the left
        children: [
          Icon(icon),
          const SizedBox(width: 10), // Space between icon and text
          Text(label),
        ],
      ),
    );
  }
}
