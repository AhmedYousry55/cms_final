import 'package:cms_final/pages/Assignments.dart';

import 'package:cms_final/pages/completedHours.dart';
import 'package:cms_final/pages/entry1.dart';
import 'package:cms_final/pages/myCourses.dart';
import 'package:cms_final/pages/register.dart';
import 'package:cms_final/pages/semesters.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Registration',
      style: optionStyle,
    ),
    Text(
      'Index 2: Attendance',
      style: optionStyle,
    ),
    Text(
      'Index 3: Assignments',
      style: optionStyle,
    ),
    Text(
      'Index 4: Profile',
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
    @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold( backgroundColor: Colors.black,
          appBar: AppBar( backgroundColor:Color(0xff000000),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white70),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Entryy()));}
            ),
            title: Text(
              'Home Page',
              style: TextStyle(color:Colors.white),
            ),
            centerTitle: true,
          ),
          body: SafeArea(
            child: GridView.builder(
              padding: const EdgeInsets.all(15),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                // number of items per row
                crossAxisCount: 2,
                // vertical spacing between the items
                mainAxisSpacing: 5,
                // horizontal spacing between the items
                crossAxisSpacing: 10,
              ),
              // number of items in your list
              itemCount: 6,
              itemBuilder: (context, index) {
                switch (index) {
                  case 0:
                    return GestureDetector(
                      onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const MyCourses()));
                      },

                      child:Card(

                        color: Color(0xff252525),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xff252525),
                          ),
                          borderRadius: BorderRadius.circular(18.0), //<-- SEE HERE
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [ Padding(
                            padding: const EdgeInsets.all(0.1),
                            child: CircleAvatar(
                              backgroundColor: Color(0xff121212),
                              radius: 45,
                              child: Icon( Icons.menu_book_sharp, color: const Color(0xffFFFFFF), size: 50),
                            ),
                          ),
                            SizedBox(
                              height: 15,
                            ),
                            Column(
                              children: [
                                Text(
                                  'My courses',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,),
                                Text(
                                  'Subjects',
                                  style: TextStyle(
                                    color: Color(0xff828282),
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  case 1:
                    return GestureDetector(
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Semesters()));

                      },

                      child:Card(

                        color: Color(0xff252525),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xff252525),
                          ),
                          borderRadius: BorderRadius.circular(18.0), //<-- SEE HERE
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [ Padding(
                            padding: const EdgeInsets.all(0.1),
                            child: CircleAvatar(
                              backgroundColor: Color(0xff121212),
                              radius: 45,
                              child: Icon( Icons.subject_sharp, color: const Color(0xffFFFFFF), size: 50),
                            ),
                          ),
                            SizedBox(
                              height: 15,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Semesters',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,),
                                Text(
                                  'Gpa',
                                  style: TextStyle(
                                    color: Color(0xff828282),
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  case 2:
                    return GestureDetector(
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Hrs()));


                      },

                      child:Card(

                        color: Color(0xff252525),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xff252525),
                          ),
                          borderRadius: BorderRadius.circular(18.0), //<-- SEE HERE
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [ Padding(
                            padding: const EdgeInsets.all(0.1),
                            child: CircleAvatar(
                              backgroundColor: Color(0xff121212),
                              radius: 45,
                              child: Icon( Icons.access_time_filled_outlined, color: const Color(0xffFFFFFF), size: 50),
                            ),
                          ),
                            SizedBox(
                              height: 15,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Completed',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,),
                                Text(
                                  'Hours',
                                  style: TextStyle(
                                    color: Color(0xff828282),
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  case 3:
                    return GestureDetector(
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const register()));

      },

                      child:Card(

                        color: Color(0xff252525),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xff252525),
                          ),
                          borderRadius: BorderRadius.circular(18.0), //<-- SEE HERE
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [ Padding(
                            padding: const EdgeInsets.all(0.1),
                            child: CircleAvatar(
                              backgroundColor: Color(0xff121212),
                              radius: 45,
                              child: Icon( Icons.add, color: const Color(0xffFFFFFF), size: 50),
                            ),
                          ),
                            SizedBox(
                              height: 15,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Registration',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,),
                                Text(
                                  'Add course',
                                  style: TextStyle(
                                    color: Color(0xff828282),
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  case 4:
                    return GestureDetector(
                      onTap: () {
                      },

                      child:Card(

                        color: Color(0xff252525),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xff252525),
                          ),
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [ Padding(
                            padding: const EdgeInsets.all(0.1),
                            child: CircleAvatar(
                              backgroundColor: Color(0xff121212),
                              radius: 45,
                              child: Icon( Icons.qr_code_scanner_sharp, color: const Color(0xffFFFFFF), size: 50),
                            ),
                          ),
                            SizedBox(
                              height: 15,
                            ),
                            Column(
                              children: [
                                Text(
                                  'QR reader',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,),
                                Text(
                                  'Attendance',
                                  style: TextStyle(
                                    color: Color(0xff828282),
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  case 5:
                    return GestureDetector(
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>  StudentAssignmentPage()));

                      },
                      child:Card(
                        color: Color(0xff252525),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xff252525),
                          ),
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [ Padding(
                            padding: const EdgeInsets.all(0.1),
                            child: CircleAvatar(
                              backgroundColor: Color(0xff121212),
                              radius: 45,
                              child: Icon( Icons.edit_document, color: const Color(0xffFFFFFF), size: 50),
                            ),
                          ),
                            SizedBox(
                              height: 15,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Assignments',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,),
                                Text(
                                  'Weekly assignments',
                                  style: TextStyle(
                                    color: Color(0xff828282),
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );

                  default:
                }
                return null;
              },
            ),



    ),
        ));
  }}