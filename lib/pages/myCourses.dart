import 'package:cms_final/components/components.dart';
import 'package:cms_final/pages/Home.dart';
import 'package:flutter/material.dart';

class MyCourses extends StatefulWidget {
  const MyCourses({Key? key}) : super(key: key);

  @override
  State<MyCourses> createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyCourses> {
  List<String> courseName = [
    "Operating Systems",
    "ALgorithms",
    "Graphic Programming",
    "Cloud Computing",
    "Game Design and modeling",
    "Mobile Development"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff000000),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white70),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'My Courses',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      subTitleText(text: "Deadline for deletion"),
                      Row(
                        children: [
                          const Icon(Icons.calendar_today),
                          const SizedBox(width: 8.0),
                          subTitleText(text: "${DateTime.now().year}")
                        ],
                      )
                    ],
                  ),
                  const SizedBox(width: 15.0),
                  const Icon(Icons.timer, size: 40)
                ],
              ),
              const SizedBox(height: 20),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[800]),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(Icons.menu_book_outlined),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      titleText(text: courseName[index]),
                                      Row(
                                        children: [
                                          const Icon(Icons.person),
                                          paragraphText(
                                              text: "Dr.Mohamed Elkholy")
                                        ],
                                      ),

                                      Row(
                                        children: [
                                          const Icon(Icons.timer),
                                          paragraphText(text: "5 hours")
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              button(
                                  borderRadius: 10,
                                  width:
                                      MediaQuery.of(context).size.width * .25,
                                  isSmallButton: true,
                                  text: "Remove",
                                  function: () {
                                    setState(() {
                                      courseName.removeAt(index);
                                    });
                                  })
                            ],
                          ),
                        ),
                      ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 10),
                  itemCount: courseName.length)
            ],
          ),
        ),
      ),
    );
  }
}
