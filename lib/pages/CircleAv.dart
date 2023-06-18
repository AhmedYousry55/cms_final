import 'package:cms_final/pages/BirthPicker.dart';
import 'package:cms_final/pages/Entry.dart';
import 'package:cms_final/pages/entry1.dart';
import 'package:flutter/material.dart';
import 'package:cms_final/components/components.dart';

class CircleAv extends StatefulWidget {
  const CircleAv({Key? key}) : super(key: key);

  @override
  State<CircleAv> createState() => _CircleAvState();
}

class _CircleAvState extends State<CircleAv> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar( backgroundColor:Color(0xff202020),
          leading:IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const Entryy()));}
          ),
          // Icon(Icons.arrow_back_ios,color: Colors.white,),
        ),
         backgroundColor: Colors.grey[850],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 5,),
              Text(
                'step 1/6',
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                'choose your avatar',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [


                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text('Clicked')));},

                    child: CircleAvatar(


                    radius: 50.0,
                    backgroundImage: AssetImage('images/g3.png'),
                    backgroundColor: Colors.black26,
                  ),),
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text('Clicked')));},
                   child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/man4.png'),
                    backgroundColor: Colors.black26,
                  ),),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),


              SizedBox(
                height: 20.0,
                //child: Divider(color: Colors.teal.shade100),
              ),
              Text(
                'or add your own photo',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20.0,
                //child: Divider(color: Colors.teal.shade100),
              ),
              CircleAvatar(
                radius: 50.0,
               // backgroundImage: AssetImage('images/avatar.png'),
               backgroundColor: Colors.black26,
                child: IconButton(
                    icon:  Icon(Icons.person),
                    iconSize: 70,
                    onPressed: () {}
                ),
              ),
              SizedBox(
                height: 30.0,
                //child: Divider(color: Colors.teal.shade100),
              ),
              Column(
                children: [
                  button(text: 'Continue', function: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const birth()));}),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}