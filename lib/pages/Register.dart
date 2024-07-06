import 'package:flutter/material.dart';
import 'package:mobilebank/widgets/widgets.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  int _currentStep = 0;
  String? _selectedCountry;
  bool _agreedToTerms = false;

  final List<String> _countries = [
    'United States',
    'Canada',
    'United Kingdom',
    'Germany',
    'France',
    'Japan',
    'Kenya',
    'Australia',
    'India',
    'Brazil',
    'Mexico',
  ];

  void _nextStep() {
    if (_currentStep < 2) {
      setState(() {
        _currentStep++;
      });
    }
  }

  Widget _buildStepContent() {
    switch (_currentStep) {
      case 0:
        return RegistrationForm(
          countries: _countries,
          selectedCountry: _selectedCountry,
          agreedToTerms: _agreedToTerms,
          onCountryChanged: (String? value) {
            setState(() {
              _selectedCountry = value;
            });
          },
          onTermsChanged: (bool? value) {
            setState(() {
              _agreedToTerms = value!;
            });
          },
          onNext: _nextStep,
        );
      case 1:
        return VerificationMethod(
          onNext: _nextStep,
        );
      case 2:
        return VerificationCodeEntry();
      default:
        return RegistrationForm(
          countries: _countries,
          selectedCountry: _selectedCountry,
          agreedToTerms: _agreedToTerms,
          onCountryChanged: (String? value) {
            setState(() {
              _selectedCountry = value;
            });
          },
          onTermsChanged: (bool? value) {
            setState(() {
              _agreedToTerms = value!;
            });
          },
          onNext: _nextStep,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Register",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 46, 45, 45),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20),
          ProgressBar(currentStep: _currentStep),
          SizedBox(height: 20),
          Expanded(child: _buildStepContent()),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 46, 45, 45),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: RegisterPage(),
  ));
}
