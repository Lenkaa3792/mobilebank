import 'package:flutter/material.dart';

class SavePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Open an account'),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Notification logic here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Grow your money',
              style: TextStyle(fontSize: 24, color: Colors.redAccent),
            ),
            SizedBox(height: 8),
            Text(
              'Equity Bank offers a variety of products that help you save and invest your money to ensure you grow your wealth.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            _buildAccountOption(
                context,
                'Call Deposit',
                'Start saving and have immediate access to your funds plus interest, without any penalty',
                'Learn more',
                'Open an account'),
            SizedBox(height: 10),
            _buildAccountOption(
                context,
                'Classic Savings',
                'Save any amount as frequently as you can while earning simple interest',
                'Learn more',
                'Open an account'),
            SizedBox(height: 10),
            _buildAccountOption(
                context,
                'Fixed Deposit',
                'Access your deposit amount plus interest at the end of a fixed savings period',
                'Learn more',
                'Open an account'),
            SizedBox(height: 10),
            _buildAccountOption(
                context,
                'Goal Savings',
                'Set your goals and start saving towards them immediately while earning interest',
                'Learn more',
                'Open an account'),
          ],
        ),
      ),
    );
  }

  Widget _buildAccountOption(BuildContext context, String title,
      String subtitle, String learnMoreText, String openAccountText) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              subtitle,
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Learn more logic here
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.grey[300], // Text color
                  ),
                  child: Text(learnMoreText),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Open an account logic here
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.redAccent, // Text color
                  ),
                  child: Text(openAccountText),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
