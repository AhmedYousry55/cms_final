import 'package:cms_final/pages/CircleAv.dart';
import 'package:cms_final/pages/genderPicker.dart';
import 'package:flutter/material.dart';
import 'package:cms_final/components/components.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class birth extends StatefulWidget {
  const birth({Key? key}) : super(key: key);

  @override
  State<birth> createState() => _birthState();
}

class _birthState extends State<birth> {
  String birth='pick your birth date';
 // TextEditingController emailController = TextEditingController();
 // TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor:Color(0xff202020),
        leading:IconButton(
          icon: const Icon(Icons.arrow_back_ios),
            onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const CircleAv()));}
        ),
        // Icon(Icons.arrow_back_ios,color: Colors.white,),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
        child: Form(
            child: Column(
             //  mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'step 2/6',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 20,),
                titleText(text: "What's your date of birth?"),
                SizedBox(height: 20),


                Container(
                  child: TextButton(
                      onPressed: () {
                        DatePicker.showDatePicker(context,
                            showTitleActions: true,
                            minTime: DateTime(1900, 1, 1),
                            maxTime: DateTime(2025, 1, 1), onChanged: (date) {
                              print('change $date');
                            }, onConfirm: (date) {
                          setState(() {
                            birth="${date.day}/${date.month}/${date.year}";

                          });
                              print('confirm $date');

                            }, currentTime: DateTime.now(), locale: LocaleType.en);
                      },
                      child: Text(
                        birth,
                        style: TextStyle(color: Colors.blue),
                      )),


                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 68, 64, 64),
                      borderRadius: BorderRadius.circular(10)),
                  height: 100,



                ),

                SizedBox(height: 200),
               button(text: 'Continue', function: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => const GenderPicker()));})
               /* Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "didnt recive code?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "send again?",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),*/



              ],
            )),
      ),
    );
  }
}