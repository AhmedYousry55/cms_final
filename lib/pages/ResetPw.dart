
import 'package:cms_final/components/components.dart';
import 'package:cms_final/pages/Entry.dart';
import 'package:cms_final/pages/entry1.dart';
import 'package:cms_final/pages/signIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
class ResetPw extends StatefulWidget {
  const ResetPw({Key? key}) : super(key: key);

  @override
  State<ResetPw> createState() => _ResetPwState();
}

class _ResetPwState extends State<ResetPw> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar( backgroundColor:Color(0xff202020),
        leading:IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const SignIn()));}
        ),
        // Icon(Icons.arrow_back_ios,color: Colors.white,),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40),
        child: Form(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Reset your password ",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                paragraphText(text: 'choose the strongest combination for your new password'),
                SizedBox(height: 25),
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
                          hintText: "New password",
                          hintStyle: const TextStyle(color: Colors.grey),
                          border: UnderlineInputBorder(borderSide: BorderSide.none),
                        )),
                  ),
                ),
                SizedBox(height: 19),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2, color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                        controller: passController,
                        onSubmitted: (value) {
                          print(value);
                        },
                        decoration: InputDecoration(
                          hintText: "confirm new Password",
                          hintStyle: const TextStyle(color: Colors.grey),
                          border: UnderlineInputBorder(borderSide: BorderSide.none),
                        )),
                  ),
                ),
                SizedBox(height: 26),
           button(text: 'Continue', function: (){showDialog(
             context: context,
             builder: (BuildContext context) {
               return AlertDialog(
                 title: new Text("Message"),
                 content: new Text("reset successfully!"),
                 actions: <Widget>[
                   new TextButton (
                     child: new Text("OK"),
                     onPressed: () {
                       Navigator.of(context).pop();
                       Navigator.push(context, MaterialPageRoute(builder: (context) => const Entryy()));
                     },
                   ),
                 ],
               );
             },
           );})
          /* Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xff3d649f),
                      borderRadius: BorderRadius.circular(10)),
                  child: MaterialButton(
                    color: Color(0xff3d649f),
                      onPressed: () {showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: new Text("Message"),
                            content: new Text("reset successfully!"),
                            actions: <Widget>[
                              new TextButton (
                                child: new Text("OK"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Entry()));
                                },
                              ),
                            ],
                          );
                        },
                      );
                      },
                      child: Text(
                        "reset my password",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )), ),*/

              ],
            )),
      ),
    );
  }
}

