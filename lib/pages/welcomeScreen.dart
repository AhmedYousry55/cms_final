import 'package:cms_final/pages/signIn.dart';
import 'package:cms_final/pages/NewSignup.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      // backgroundColor: Colors.blueGrey[900],
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

             const SizedBox(height: 0,),
              CircleAvatar(
                radius: 120.0,
                backgroundImage: AssetImage('images/img.png'),
                backgroundColor: Colors.white,
              ),
              Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton.icon(

                      icon: Icon(Icons.account_circle_outlined),
                      label: Text("Already Have an Account"),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SignIn()));
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15.0),
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        primary: Colors.blue[700],
                        onPrimary: Colors.white,
                        elevation: 10,
                        shape: StadiumBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton.icon(

                      icon: Icon(Icons.add),
                      label: Text("Create Account"),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const NewSignup()));
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15.0),
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        primary: Colors.blue[700],
                        onPrimary: Colors.white,
                        elevation: 10,
                        shape: StadiumBorder(),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
