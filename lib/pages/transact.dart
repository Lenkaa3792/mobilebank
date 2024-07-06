import 'package:flutter/material.dart';
import 'package:mobilebank/pages/mobilemoney.dart';
import 'package:mobilebank/pages/sendmoney.dart';
import 'package:mobilebank/pages/sendtoequity.dart';

class TransactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text(
          'Transact',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('What would you like to do?',
                style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildTabButton(context, 'All'),
                  _buildTabButton(context, 'Send money'),
                  _buildTabButton(context, 'Pay with Equity'),
                  _buildTabButton(context, 'Buy'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Card(
              color: Colors.grey[800],
              child: ListTile(
                title:
                    Text('Favourites', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                    'Your favorite contact will appear here. Add a new one to quickly transact.',
                    style: TextStyle(color: Colors.white)),
                trailing: Text('Add a favorite',
                    style: TextStyle(color: Colors.redAccent)),
                onTap: () {
                  // Add favorite logic here
                },
              ),
            ),
            SizedBox(height: 20),
            Card(
              color: Colors.grey[800],
              child: ListTile(
                leading: Icon(Icons.schedule, color: Colors.redAccent),
                title: Text('Schedule Payments',
                    style: TextStyle(color: Colors.redAccent)),
                subtitle: Text('Manage recurring payments.',
                    style: TextStyle(color: Colors.white)),
                trailing: ElevatedButton(
                  onPressed: () {
                    // Schedule payments logic here
                  },
                  child: Text('Manage here',
                      style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('Send money',
                style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(height: 20),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                _buildGridItem(
                    context, 'Own Equity account', Icons.compare_arrows),
                _buildGridItem(context, 'Another Equity account',
                    Icons.account_balance_wallet),
                _buildGridItem(context, 'Pay to card', Icons.credit_card),
                _buildGridItem(context, 'Mobile money', Icons.mobile_friendly),
                _buildGridItem(context, 'Another Bank', Icons.account_balance),
              ],
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton _buildTabButton(BuildContext context, String text) {
    return ElevatedButton(
      onPressed: () {
        // Tab button logic here
      },
      child: Text(text),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.redAccent,
        backgroundColor: Colors.black,
        side: BorderSide(color: const Color.fromARGB(255, 87, 79, 79)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }

  Card _buildGridItem(BuildContext context, String label, IconData icon) {
    return Card(
      color: Colors.grey[800],
      child: InkWell(
        onTap: () {
          // Navigate to a new screen based on the tapped item
          if (label == 'Own Equity account') {
            // Example navigation to a new page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SendEquity()),
            );
          } else if (label == 'Another Equity account') {
            // Example navigation to another page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SendMoneyPage()),
            );
          } else if (label == 'Pay to card') {
            // Example navigation to another page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SendMoneyPage()),
            );
          } else if (label == 'Mobile money') {
            // Example navigation to another page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MobileMoneyPage()),
            );
          } else if (label == 'Another Bank') {
            // Example navigation to another page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SendMoneyPage()),
            );
          }

          // Add similar navigation logic for other grid items
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.redAccent, size: 40),
            SizedBox(height: 10),
            Text(label,
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
