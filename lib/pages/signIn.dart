import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:cms_final/services/auth_service.dart';

import'package:cms_final/pages/Home.dart';
import 'package:http/http.dart' as http ;
import '../components/components.dart';
import '../services/auth_service.dart';
import 'ForgetPw.dart';
import 'NewSignup.dart';
import 'entry1.dart';
import 'welcomeScreen.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  

  final _authService = AuthService();

  Future<void> _login() async {
    final email = emailController.text;
    final password = passwordController.text;

    var response = await _authService.login(email, password).then((value) =>{

        Navigator.pushReplacementNamed(context, '/home') 

    }).catchError((error)=>{


        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Login Failed'),
            content: Text('Invalid email or password'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ],
          ),
        ),
    }) ;



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar( backgroundColor:Color(0xff202020),
        leading:IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const WelcomeScreen()));}
        ),
        // Icon(Icons.arrow_back_ios,color: Colors.white,),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 60),
        child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Log In",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2, color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                        controller: emailController,
                        onSubmitted: (value) {
                          print(value);
                        },
                        decoration: InputDecoration(
                          hintText: "E-mail",
                          hintStyle: const TextStyle(color: Colors.grey),
                          border: UnderlineInputBorder(borderSide: BorderSide.none),
                        )),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2, color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                        controller: passwordController,
                        onSubmitted: (value) {
                        },
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: const TextStyle(color: Colors.grey),
                          border: UnderlineInputBorder(borderSide: BorderSide.none),
                        )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Remember me?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    TextButton(
                        onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgetPw()));},
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
                button(
                    padding: 10.0,
                    width: MediaQuery.of(context).size.width,
                    text: "Log In Now", function: (){
                      _login() ; 
                      
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const NewSignup()));
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                )
              ],
            )),
      ),
    );
  }
}



/*
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _loginUser() async {
    final url = Uri.parse('https://example.com/login');
    final body = jsonEncode({
      'email': _emailController.text,
      'password': _passwordController.text,
    });
    final headers = {'Content-Type': 'application/json'};
    final response = await http.post(url, body: body, headers: headers);

    if (response.statusCode == 200) {
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Login Failed'),
          content: Text('Invalid email or password'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Email is required';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Password is required';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _loginUser();
                  }
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/