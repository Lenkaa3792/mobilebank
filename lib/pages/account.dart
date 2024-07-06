import 'package:flutter/material.dart';

class AccountDetailsPage extends StatelessWidget {
  static const Color cayenneColor = Colors.redAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set the background color to black
      appBar: AppBar(
        title: Text('Accounts & Cards'),
        backgroundColor: cayenneColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Card(
                color: cayenneColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width:
                      300, // Adjust the width to make it look like an ATM card
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kamash',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                          height:
                              60), // Adjust the space between text and account details
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Savings Account',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '12345678901234',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Available Cash',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Set text color to white
              ),
            ),
            Text(
              '2,531.93 KES',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: cayenneColor,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildActionButton(Icons.transform, 'Transfer'),
                _buildActionButton(Icons.info, 'Account Info'),
                _buildActionButton(Icons.wallet, 'Withdraw'),
                _buildActionButton(Icons.info_outline, 'Transactions'),
                _buildActionButton(Icons.more_horiz, 'More Info'),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Transaction history',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Set text color to white
              ),
            ),
            SizedBox(height: 8),
            _buildSearchBar(),
            SizedBox(height: 8),
            _buildTransactionHistory(),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: cayenneColor,
          child: Icon(icon, color: Colors.white),
        ),
        SizedBox(height: 8),
        Text(label,
            style: TextStyle(
                fontSize: 12, color: Colors.white)), // Set text color to white
      ],
    );
  }

  Widget _buildSearchBar() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        prefixIcon:
            Icon(Icons.search, color: Colors.white), // Set icon color to white
        hintStyle:
            TextStyle(color: Colors.white), // Set hint text color to white
        filled: true,
        fillColor: Colors.grey[800], // Set fill color to dark grey
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none, // Remove border
        ),
      ),
      style: TextStyle(color: Colors.white), // Set input text color to white
    );
  }

  Widget _buildTransactionHistory() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'June 2024',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Set text color to white
          ),
        ),
        SizedBox(height: 8),
        _buildTransactionItem(
          'App/mpesa/254757609782/719179571856',
          'Gideon Kemu K',
          '-50.00 KES',
        ),
        _buildTransactionItem(
          'Transaction + sms Charge',
          'Gideon Kemu K',
          '-14.00 KES',
        ),
      ],
    );
  }

  Widget _buildTransactionItem(String title, String subtitle, String amount) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(title,
          style: TextStyle(color: Colors.white)), // Set text color to white
      subtitle: Text(subtitle,
          style: TextStyle(color: Colors.white)), // Set text color to white
      trailing: Text(
        amount,
        style: TextStyle(
          color: cayenneColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
