import 'package:cms_final/pages/EditProf.dart';
import 'package:cms_final/pages/Home.dart';
import 'package:cms_final/pages/Navigation.dart';
import 'package:cms_final/pages/myCourses.dart';
import 'package:cms_final/pages/semesters.dart';
import 'package:cms_final/pages/welcomeScreen.dart';
import 'package:flutter/material.dart';
import '../components/components.dart';

class Prof extends StatefulWidget {
  const Prof({Key? key}) : super(key: key);

  @override
  State<Prof> createState() => _ProfState();
}

class _ProfState extends State<Prof> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Navbar()));
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Add your drawer button functionality here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/c1.png'),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Yassin Mohamed Awed',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Student',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage('images/c1.png'),
                        backgroundColor: Colors.white,
                      ),
                      Text(
                        '88/132',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Total Hours'),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage('images/c2.png'),
                        backgroundColor: Colors.white,
                      ),
                      Text(
                        '3.6',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('CGPA'),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage('images/c1.png'),
                        backgroundColor: Colors.white,
                      ),
                      Text(
                        'Fourth',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Level'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: ListView(
                shrinkWrap: true,
                physics: PageScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Accounts',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Card(
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: IconButton(
                          icon: Icon(Icons.add_alert),
                          onPressed: () => ('select'),
                        ),
                        title: Text('Edit profile'),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const EditProf()));
                        },
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'General',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Card(
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: IconButton(
                          icon: Icon(Icons.add_alert),
                          onPressed: () => ('select'),
                        ),
                        title: Text('Semesters'),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Semesters()));
                        },
                      )
                  ),
                  Card(
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: IconButton(
                          icon: Icon(Icons.add_alert),
                          onPressed: () => ('select'),
                        ),
                        title: Text('courses'),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const MyCourses()));
                        },
                      )
                  ),
                  Card(
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: IconButton(
                          icon: Icon(Icons.add_alert),
                          onPressed: () => ('select'),
                        ),
                        title: Text('logout'),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const WelcomeScreen()));
                        },
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
