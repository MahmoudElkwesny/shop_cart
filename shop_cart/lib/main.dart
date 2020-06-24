import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'authentication/firebase_auth.dart';

void main() {
  runApp(ShopCart());
}

class ShopCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthTest(),
    );
  }
}

class AuthTest extends StatefulWidget {
  @override
  _AuthTestState createState() => _AuthTestState();
}

class _AuthTestState extends State<AuthTest> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  FirebaseAuthentication firebaseAuthentication = FirebaseAuthentication();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Auth Test'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Register'),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Enter Your Email',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passwordController,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Enter yor Password',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  child: Text('Register'),
                  onPressed: ()async {
                    String email = _emailController.text;
                    String password = _passwordController.text;
                    /* print(email);
                    print(password); */
                    var user = await firebaseAuthentication.register(email, password);
                    print(user);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
