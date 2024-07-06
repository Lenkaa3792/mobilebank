import 'package:flutter/material.dart';
import 'package:mobilebank/pages/Register.dart';
import 'package:mobilebank/pages/login.dart';

void main() {
  runApp(EquityApp());
}

class EquityApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Equity',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  String _selectedLanguage = 'English';

  void _showLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String _dialogSelectedLanguage = _selectedLanguage;
        final double screenHeight = MediaQuery.of(context).size.height;

        return Dialog(
          insetPadding: EdgeInsets.only(
            top: screenHeight * 0.25,
            left: 16.0,
            right: 16.0,
            bottom: 0.0,
          ),
          backgroundColor: Colors.transparent,
          child: Container(
            height: screenHeight * 0.75,
            color: Color(0xFF333333),
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Change language',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Text('Choose your language',
                    style: TextStyle(color: Colors.white)),
                Text('Chagua lugha / Hitamo nururimi / Sélectionnez la langue',
                    style: TextStyle(color: Colors.grey)),
                SizedBox(height: 20.0),
                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text('English',
                            style: TextStyle(color: Colors.white)),
                        leading: Radio(
                          value: 'English',
                          groupValue: _dialogSelectedLanguage,
                          onChanged: (value) {
                            setState(() {
                              _dialogSelectedLanguage = value!;
                            });
                          },
                          activeColor: Color(0xFFFF5A5F),
                        ),
                      ),
                      ListTile(
                        title: Text('Swahili',
                            style: TextStyle(color: Colors.white)),
                        leading: Radio(
                          value: 'Swahili',
                          groupValue: _dialogSelectedLanguage,
                          onChanged: (value) {
                            setState(() {
                              _dialogSelectedLanguage = value!;
                            });
                          },
                          activeColor: Color(0xFFFF5A5F),
                        ),
                      ),
                      ListTile(
                        title: Text('French',
                            style: TextStyle(color: Colors.white)),
                        leading: Radio(
                          value: 'French',
                          groupValue: _dialogSelectedLanguage,
                          onChanged: (value) {
                            setState(() {
                              _dialogSelectedLanguage = value!;
                            });
                          },
                          activeColor: Color(0xFFFF5A5F),
                        ),
                      ),
                      ListTile(
                        title: Text('Kinyarwanda',
                            style: TextStyle(color: Colors.white)),
                        leading: Radio(
                          value: 'Kinyarwanda',
                          groupValue: _dialogSelectedLanguage,
                          onChanged: (value) {
                            setState(() {
                              _dialogSelectedLanguage = value!;
                            });
                          },
                          activeColor: Color(0xFFFF5A5F),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedLanguage = _dialogSelectedLanguage;
                    });
                    Navigator.of(context).pop();
                    // Apply the language change here
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFF5A5F)),
                  child: Text('Confirm', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8B0000), // Cayenne color
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 16.0, right: 16.0),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/Equitylogo2.png', // Replace with your logo asset path
                  width: 80.0,
                  height: 80.0,
                ),
                SizedBox(width: 16.0),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    _showLanguageDialog(context);
                  },
                  child: Row(
                    children: [
                      Text(
                        _selectedLanguage, // Display selected language
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Welcome to',
                    style: TextStyle(fontSize: 24.0, color: Colors.white),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Equity Mobile',
                    style: TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Good evening! Sign in or register to continue',
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30.0),
                  Container(
                    width: 200.0,
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Color(0xFF8B0000),
                        backgroundColor: Colors.white,
                      ),
                      child: Text('Sign In',
                          style: TextStyle(color: Color(0xFF8B0000))),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    width: 200.0,
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Color(0xFF8B0000),
                        backgroundColor: Colors.white,
                      ),
                      child: Text(
                        'Register',
                        style: TextStyle(color: Color(0xFF8B0000)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
