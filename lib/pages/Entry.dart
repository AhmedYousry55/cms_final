import 'package:cms_final/pages/CircleAv.dart';
import 'package:cms_final/pages/signIn.dart';
import 'package:flutter/material.dart';
class Entry extends StatefulWidget {
  const Entry({Key? key}) : super(key: key);

  @override
  State<Entry> createState() => _EntryState();
}

class _EntryState extends State<Entry> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(// backgroundColor:Color(0xff202020),
          leading:IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const SignIn()));}
          ),
          // Icon(Icons.arrow_back_ios,color: Colors.white,),
        ),
        body: SafeArea
          (
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                SizedBox(height: 50),
                ClipOval(
                  child: Container(
                    width: 250,
                    height: 250,
                    alignment: Alignment.center,
                    child:
                    Image.asset('images/img.png'),
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'Welcome, Mahy',
                    style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                    ),

                  ),),
                SizedBox(height: 6),
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'Before getting started let us collect some info.',
                    style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0,
                    ),

                  ),),


                SizedBox(height: 60),
                ElevatedButton(
                  // Padding(padding: EdgeInsets.all(2.0),),
                  child: Text("Fill up my information"),
                  // icon: Icon(Icons.add),
                  //  label: Text("Fill up my information"),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const CircleAv()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(2.0),
                    fixedSize: Size(350,49 ),
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

              ],






            ),

          ),
        ),
      ),
    );

  }
}



