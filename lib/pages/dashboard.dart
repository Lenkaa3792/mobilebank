import 'package:flutter/material.dart';
import 'package:mobilebank/pages/account.dart';
import 'package:mobilebank/pages/borrow.dart';
import 'package:mobilebank/pages/mobilemoney.dart';
import 'package:mobilebank/pages/buygoods.dart';
import 'package:mobilebank/pages/paybills.dart';
import 'package:mobilebank/pages/save.dart';
import 'package:mobilebank/pages/sendmoney.dart';
import 'package:mobilebank/pages/settings.dart';
import 'package:mobilebank/pages/transact.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bank App',
      theme: ThemeData(
        primaryColor: Colors.black,
        hintColor: Colors.redAccent,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false, // Remove the debug banner
      routes: {
        '/transact': (context) => TransactPage(),
        '/borrow': (context) => BorrowScreen(),
        '/save': (context) => SavePage(),
        '/settings': (context) => SettingsPage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showBalance = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.redAccent,
                      width: 2.0,
                    ), // Outline color and width
                  ),
                  child: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 26, 25, 25),
                    child: Text('GK', style: TextStyle(color: Colors.white)),
                  ),
                ),
                SizedBox(width: 80),
                Text('Home', style: TextStyle(color: Colors.white)),
              ],
            ),
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 15, 15, 15),
              child: Icon(Icons.notifications, color: Colors.white),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                SizedBox(width: 70),
                Text('Good evening, Kamash',
                    style: TextStyle(color: Colors.white, fontSize: 18)),
              ],
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildIconColumn(
                      imagePath: 'assets/pic4.png',
                      label: 'Send to\nEquity account'),
                  _buildIconColumn(
                      imagePath: 'assets/pic1.png',
                      label: 'Send to\nMobile money'),
                  _buildIconColumn(
                      imagePath: 'assets/pic7.png',
                      label: 'Send to\nAnother bank'),
                  _buildIconColumn(
                      imagePath: 'assets/pic2.png', label: 'Pay\nBills'),
                  _buildIconColumn(
                      imagePath: 'assets/pic2.png', label: 'Buy\nGoods'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(
                  color: Colors.white,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Card(
                color: Color.fromARGB(255, 32, 31, 31),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ListTile(
                  title: Text('My balance', style: TextStyle(color: Colors.white)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        _showBalance ? 'Hide balance' : 'Show balance',
                        style: TextStyle(color: Colors.red),
                      ),
                      IconButton(
                        icon: Icon(
                          _showBalance
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.redAccent,
                        ),
                        onPressed: () {
                          setState(() {
                            _showBalance = !_showBalance;
                          });
                        },
                      ),
                    ],
                  ),
                  subtitle: _showBalance
                      ? Text('\$1,234.56', style: TextStyle(color: Colors.white))
                      : null,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 32, 31, 31),
                border: Border.all(
                  color: Colors.white,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildActionColumn('assets/pic5.png', 'Transact', context),
                  _buildActionColumn('assets/pic6.png', 'Borrow', context),
                  _buildActionColumn('assets/pic3.png', 'Save', context),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text('My accounts', style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(height: 10),
            Card(
              color: const Color.fromARGB(255, 238, 0, 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AccountDetailsPage(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'kamash',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        '7000 KES',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        children: [
                          Text(
                            '1234567890',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            '. Savings',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ListTile(
                title: Text('Add Account', style: TextStyle(color: Colors.white)),
                trailing: Icon(Icons.add, color: Colors.redAccent),
                onTap: () {
                  // Add account logic here
                },
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ListTile(
                title: Text('Add account by PayPal', style: TextStyle(color: Colors.white)),
                trailing: Icon(Icons.add, color: Colors.redAccent),
                onTap: () {
                  // Add account by PayPal logic here
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet, color: Colors.redAccent),
            label: 'Accounts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.redAccent),
            label: 'Equity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.redAccent),
            label: 'Settings',
          ),
        ],
        onTap: (index) {
          if (index == 2) {
            Navigator.pushNamed(context, '/settings');
          }
        },
      ),
    );
  }

  Column _buildIconColumn({required String imagePath, required String label}) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            // Navigate based on the label tapped
            if (label == 'Send to\nEquity account') {
              Navigator.pushNamed(context, '/transact');
            } else if (label == 'Send to\nMobile money') {
              // Navigate to mobile money screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MobileMoneyPage()),
              );
            } else if (label == 'Send to\nAnother bank') {
              // Navigate to another bank screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SendMoneyPage()),
              );
            } else if (label == 'Pay\nBills') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaybillPage()),
              );
            } else if (label == 'Buy\nGoods') {
              // Navigate to buy goods screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BuygoodsPage()),
              );
            }
          },
          child: CircleAvatar(
            backgroundColor: Colors.grey[850],
            child: Image.asset(imagePath, fit: BoxFit.cover),
          ),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
      ],
    );
  }

  Column _buildActionColumn(
      String imagePath, String label, BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            if (label == 'Transact') {
              Navigator.pushNamed(context, '/transact');
            } else if (label == 'Borrow') {
              Navigator.pushNamed(context, '/borrow');
            } else {
              Navigator.pushNamed(context, '/save');
            }
          },
          child: CircleAvatar(
            backgroundColor: Colors.black,
            child: Image.asset(imagePath),
          ),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
      ],
    );
  }
}
