import 'package:flutter/material.dart';

class PaybillPage extends StatefulWidget {
  @override
  _PaybillPageState createState() => _PaybillPageState();
}

class _PaybillPageState extends State<PaybillPage> {
  String? selectedAccount;
  String selectedCurrency = 'KES';
  TextEditingController amountController = TextEditingController();
  TextEditingController reasonController = TextEditingController();
  TextEditingController recipientController =
      TextEditingController(); // Controller for recipient
  TextEditingController accountNameController =
      TextEditingController(); // Controller for account name
  TextEditingController paybillNumberController =
      TextEditingController(); // Controller for paybill number

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        hintColor: Colors.redAccent,
      ),
      debugShowCheckedModeBanner: false, // Remove the debug banner
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Pay to Paybill',
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
        backgroundColor: Colors.black, // Set background color of scaffold
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Please enter the payment details',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              DropdownButtonFormField<String>(
                value: selectedAccount,
                hint: Text('Send from', style: TextStyle(color: Colors.white)),
                decoration: InputDecoration(
                  labelText: 'Send from',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                ),
                items: <String>['123456789023'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(
                          color: Colors.redAccent), // Change color here
                    ),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedAccount = newValue!;
                  });
                },
              ),
              if (selectedAccount != null)
                Text(
                  'Available balance 16,035.49 KES',
                  style: TextStyle(color: Colors.white),
                ),
              SizedBox(height: 20),
              TextFormField(
                controller: accountNameController,
                decoration: InputDecoration(
                  labelText: 'Account Name',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: paybillNumberController,
                decoration: InputDecoration(
                  labelText: 'Paybill Number',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: DropdownButtonFormField<String>(
                      value: selectedCurrency,
                      decoration: InputDecoration(
                        labelText: 'Currency',
                        labelStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(),
                      ),
                      items: <String>['KES', 'USD', 'EUR'].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                                color: Colors.redAccent), // Change color here
                          ),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          selectedCurrency = newValue!;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 3,
                    child: TextFormField(
                      controller: amountController,
                      decoration: InputDecoration(
                        labelText: 'Enter Amount',
                        labelStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: reasonController,
                decoration: InputDecoration(
                  labelText: 'Payment reason',
                  labelStyle: TextStyle(color: Colors.white),
                  hintText: 'Optional',
                  border: OutlineInputBorder(),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Send money logic here
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.grey, // Text color
                  minimumSize: Size(double.infinity, 50), // Full-width button
                ),
                child: Text('Send money'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
