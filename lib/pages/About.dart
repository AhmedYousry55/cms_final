import 'package:flutter/material.dart';
class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /* theme: new ThemeData(
          primarySwatch: Colors.amber,
          textTheme: Theme.of(context).textTheme.apply(
            bodyColor: Colors.white,
            displayColor: Colors.white70,
          ),
        ),*/
      theme: ThemeData.dark(),
      home: Scaffold(

        appBar: AppBar(leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white70),
          onPressed: () => Navigator.of(context).pop(),
        ),
          backgroundColor: Colors.black12,
          title: Text("About"
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:
              [SizedBox(height: 70),
                Center(


                  child:
                  CircleAvatar(
                    radius: 110.0,
                    backgroundImage: AssetImage('images/img.png'),
                  ),
                ),

                SizedBox(height: 60),
                Text(
                  'SIM',

                  style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0),

                ),
                SizedBox(height: 15),
                Text(
                  'Software Industry and Multimedia is a new private program located inside faculty of science Alexandria University it provides special services for students.',

                  style: TextStyle(color: Colors.white70,
                      fontWeight: FontWeight.w300,
                      fontSize: 16.3),

                ),

                SizedBox(height: 50),



              ],


            )
        ),


      ),


    );
  }
}

