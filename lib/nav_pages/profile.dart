import 'package:explore_ease/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

IconData changeIcon = Icons.person;

class Profile extends StatelessWidget {
  const Profile({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(child: LoginForm()));
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  void _submitForm() {
    final form = _formKey.currentState;
    if (form != null && form.validate()) {
      form.save();
      // Validate the email and password, and implement your authentication logic here
      // For now, let's just print the email and password
      print('Email: $_email');
      print('Password: $_password');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: "hero",
            child: Icon(
              changeIcon,
              size: 200.0,
              color: Colors.deepPurpleAccent,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
              filled: true,
              // fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide.none,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
            onSaved: (value) => _email = value ?? '',
          ),
          SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Password',
              filled: true,
              // fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide.none,
              ),
            ),
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
            onSaved: (value) => _password = value ?? '',
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              _submitForm();
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
