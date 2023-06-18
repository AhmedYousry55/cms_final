import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class PersonalInfo extends StatefulWidget {
  const PersonalInfo({Key? key}) : super(key: key);
  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}
class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold( backgroundColor: Colors.black,
          appBar: AppBar( backgroundColor:Color(0xff000000),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white70),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(
              'Personal Information',
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
              itemCount: 3,
              itemBuilder: (context, index) {
                switch (index) {
                  case 0:
                    return GestureDetector(
                      onTap: () {
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
                      onTap: () {
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
                      onTap: () {
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
                  default:
                }
                return null;
              },
            ),
          ),
        ));
  }}