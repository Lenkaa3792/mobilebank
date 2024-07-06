import 'package:flutter/material.dart';
import 'package:mobilebank/pages/dashboard.dart';

class BorrowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Borrow'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DashboardPage()),
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Icon(Icons.notifications),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: Text(
                      '5',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Apply for a loan',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Equity offers a variety of loans to help you meet your goals. Look through our loan products to find one that is suited to your needs.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Loan Products',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              LoanProductCard(
                title: 'One Month Loan',
                description:
                    'Borrow up to 5,000,000 KES and pay it back in one month',
                onLearnMore: () {
                  // Handle learn more
                },
                onApplyNow: () {
                  // Handle apply now
                },
              ),
              LoanProductCard(
                title: 'Installment Loan',
                description:
                    'Borrow up to 5,000,000 KES and pay it back over up to twelve months',
                onLearnMore: () {
                  // Handle learn more
                },
                onApplyNow: () {
                  // Handle apply now
                },
              ),
              LoanProductCard(
                title: 'Pension Loan',
                description: 'Loan for members who receive a monthly pension',
                onLearnMore: () {
                  // Handle learn more
                },
                onApplyNow: () {
                  // Handle apply now
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoanProductCard extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onLearnMore;
  final VoidCallback onApplyNow;

  LoanProductCard({
    required this.title,
    required this.description,
    required this.onLearnMore,
    required this.onApplyNow,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              description,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: onLearnMore,
                  child: Text('Learn more'),
                ),
                SizedBox(width: 8.0),
                ElevatedButton(
                  onPressed: onApplyNow,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.red, // foreground
                  ),
                  child: Text('Apply now'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
