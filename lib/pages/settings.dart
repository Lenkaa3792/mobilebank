import 'package:flutter/material.dart';
import 'package:mobilebank/pages/login.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings and more'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserInfo(),
            SizedBox(height: 20),
            ProfileSection(),
            SizedBox(height: 20),
            SupportSection(),
            SizedBox(height: 20),
            LogoutSection(), // Added logout section
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Accounts & Cards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          child: Text('PW'),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Anonymous User', // Changed to Anonymous User
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Patwagere@yahoo.com'),
            Text('254721620591'),
          ],
        ),
      ],
    );
  }
}

class ProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Profile',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ListTile(
          leading: Icon(Icons.notifications),
          title: Text('Notifications'),
          subtitle: Text('View and manage your notifications'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            // Handle tap
          },
        ),
        ListTile(
          leading: Icon(Icons.language),
          title: Text('Change language'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            // Handle tap
          },
        ),
      ],
    );
  }
}

class SupportSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Support',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ListTile(
          leading: Icon(Icons.chat),
          title: Text('Activate Chat Banking'),
          subtitle: Text("Transact and more with Equity's virtual assistant"),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            // Handle tap
          },
        ),
      ],
    );
  }
}

class LogoutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Logout',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text('Logout'),
          onTap: () {
            // Perform logout actions here, e.g., clear session, navigate to login page

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          }, // Replace with your login route
        ),
      ],
    );
  }
}
