import 'package:flutter/material.dart';
import 'package:mobilebank/pages/dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true; // Initially obscure the password text

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome back",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 46, 45, 45),
      ),
      body: Container(
        color: Color.fromARGB(255, 46, 45, 45), // Set background color to black
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Hello there",
              style: TextStyle(
                color: Colors.white, // Set text color to white
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16), // Adding space between the texts
            Text(
              "Sign in to continue. Remember, your password is yours, do not share it with anyone.",
              style: TextStyle(
                color: Colors.white, // Set text color to white
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 16,
            ), // Adding space between the text and the input fields
            TextField(
              style: TextStyle(
                  color:
                      Colors.white), // Set text color of input field to white
              decoration: InputDecoration(
                labelText: 'Email address or mobile number',
                labelStyle:
                    TextStyle(color: Colors.white), // Set label color to white
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white), // Set border color to white
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors
                          .white), // Set border color to white when focused
                ),
              ),
            ),
            SizedBox(height: 12), // Adding space between the input fields
            TextField(
              controller: _passwordController,
              style: TextStyle(
                  color:
                      Colors.white), // Set text color of input field to white
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle:
                    TextStyle(color: Colors.white), // Set label color to white
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white), // Set border color to white
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors
                          .white), // Set border color to white when focused
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: Color.fromARGB(255, 218, 77, 77),
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText =
                          !_obscureText; // Toggle the password visibility
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ), // Adding space above the "Forgot your password?" link
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    // Add your logic for handling "Forgot your password?" action
                  },
                  child: Text(
                    'Forgot your password?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 218, 77, 77),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24), // Adding more space below the input fields
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 46, 45, 45),
                backgroundColor: Colors.white, // Text color
              ),
              child: Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
