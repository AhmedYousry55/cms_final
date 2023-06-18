import 'package:cms_final/pages/ResetPw.dart';
import 'package:flutter/material.dart';
import 'package:cms_final/components/components.dart';


class ForgetPw extends StatefulWidget {
  const ForgetPw({Key? key}) : super(key: key);

  @override
  State<ForgetPw> createState() => _ForgetPwState();
}

class _ForgetPwState extends State<ForgetPw> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 60),
        child: Form(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                titleText(text: "Forgot your password ?"),
                SizedBox(height: 20),
                paragraphText(text: "Select your preferable contact way to reset your password "),
                SizedBox(height: 40),

                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 68, 64, 64),
                      borderRadius: BorderRadius.circular(10)),
                      height: 100,

                  child: TextButton(
                      onPressed: () {showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: new Text("Message"),
                            content: new Text("check your phone messages"),
                            actions: <Widget>[
                              new TextButton (
                                child: new Text("OK"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );

                      },
                      child: Row(
                        children:[
                          Image.asset('images/sms.png',
                            width: 45,
                           ),
                          subTitleText(text: "Via sms:"),


                        ]
                      )

                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 68, 64, 64),
                      borderRadius: BorderRadius.circular(10)),
                  height: 100,

                  child: TextButton(
                      onPressed: () {showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: new Text("Message"),
                            content: new Text("check your email"),
                            actions: <Widget>[
                              new TextButton (
                                child: new Text("OK"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );

                      },
                      child: Row(
                          children:[
                            Image.asset('images/mail.png',
                              width: 45,
                            ),
                            subTitleText(text: " Via email:"),
                          ]
                      )

                  ),
                ),
                SizedBox(height: 50),
                 button(text: "Continue", function: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const ResetPw()));})

              ],
            )),
      ),
    );
  }
}