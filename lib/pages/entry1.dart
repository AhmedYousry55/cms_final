import 'package:cms_final/pages/CircleAv.dart';
import 'package:cms_final/pages/Navigation.dart';
import 'package:cms_final/pages/signIn.dart';
import 'package:cms_final/pages/NewSignup.dart';
import 'package:flutter/material.dart';
import 'package:cms_final/components/components.dart';
import 'package:cms_final/pages/Home.dart';

class Entryy extends StatefulWidget {
  const Entryy({Key? key}) : super(key: key);

  @override
  State<Entryy> createState() => _EntryyState();
}

class _EntryyState extends State<Entryy> {
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

             const SizedBox(height: 15,),
              CircleAvatar(
                radius: 120.0,
                backgroundImage: AssetImage('images/img.png'),
                backgroundColor: Colors.white,
              ),
              Column(
                children: [

               //   const SizedBox(height: 0),
                  Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'Welcome, Mahy',
                      style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                      ),

                    ),
                  ),
                SizedBox(height: 6,),
                    Container(
                      alignment: Alignment.center,
                      child: const Text(
                        'Before getting started let us collect some info.',
                        style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0,
                        ),

                      ),),
                  SizedBox(height: 60,),

                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      child: Text("Fill up my information"),
                     //  icon: Icon(Icons.add),
                     // label: Text("Fill up my info"),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const CircleAv()));
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
                  SizedBox(height: 15,),
                  TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>  Navbar()));
                  }, child: Text(
                    "Skip for now",
                    style: TextStyle(color: Colors.white),
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}