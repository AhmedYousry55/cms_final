import 'package:flutter/material.dart';
import 'package:cms_final/components/components.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
class Semesters extends StatefulWidget {
  const Semesters({Key? key}) : super(key: key);
  @override
  State<Semesters> createState() => _SemestersState();
}

class _SemestersState extends State<Semesters> {
  List<String> semesters = [
    "Semester 1",
    "Semester 2",
    "Semester 3",
    "Semester 4",
  ];
  bool isCGPA = false;
  bool iconChange = false;
  int panelIndex = 0;
  ScrollController semester1 = ScrollController();
  PanelController panelController = PanelController();
  @override
  Widget build(BuildContext context) {
    List<Widget> slideUpPanel = [
      //semester panel
      Column(
        children: [
          //front grey line
          Container(
            width: MediaQuery.of(context).size.width*.3,
            height: 8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey
            ),
          ),
          const SizedBox(height: 20),
          //semester title
          subTitleText(text: semesters[panelIndex]),
          const SizedBox(height: 20),
          //table titles
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[800]
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  subTitleText(text: "#"),
                  subTitleText(text: "Courses"),
                  subTitleText(text: "Grades"),
                  subTitleText(text: "Credits"),
                ],
              ),
            ),
          ),
          //table content
          const SizedBox(height: 20),
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (_, i) => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[800]
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      paragraphText(text: "#"),
                      paragraphText(text: "test"),
                      paragraphText(text: "test"),
                      paragraphText(text: "test"),
                    ],
                  ),
                ),
              ),
              separatorBuilder: (_, i) => const SizedBox(height: 5),
              itemCount: 5
          ),
          SizedBox(height: 20),
          cGPAButton()
        ],
      ),
      //cgpa panel
      Column(
        children: [
          //front grey line
          Container(
            width: MediaQuery.of(context).size.width*.3,
            height: 8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey
            ),
          ),
          const SizedBox(height: 20),
          //semester title
          subTitleText(text: "CGPA"),
          const SizedBox(height: 20),
          //table titles
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[800]
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  subTitleText(text: "Semesters"),
                  subTitleText(text: "Grades"),
                  subTitleText(text: "GPA"),
                  subTitleText(text: "Credits"),
                ],
              ),
            ),
          ),
          //table content
          const SizedBox(height: 20),
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (_, i) => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[800]
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      paragraphText(text: "#"),
                      paragraphText(text: "test"),
                      paragraphText(text: "test"),
                      paragraphText(text: "test"),
                    ],
                  ),
                ),
              ),
              separatorBuilder: (_, i) => const SizedBox(height: 5),
              itemCount: 4
          ),
          SizedBox(height: 20),
          cGPAButton()
        ],
      ),
    ];
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff0b0b0b),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white70),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(
              'Semesters',
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: SlidingUpPanel(
            onPanelClosed: (){
              print(isCGPA);
              isCGPA = false;},
            minHeight: 0.0,
            controller: panelController,
            defaultPanelState: PanelState.CLOSED,
            body: Container(
              padding: const EdgeInsets.all(20),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.black38, Colors.black38])),
              child: SingleChildScrollView(
                child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  ListView.separated(
                    // controller: ,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => InkWell(
                        onTap: (){
                          setState(() {
                            iconChange = !iconChange;
                            print(isCGPA);
                            panelIndex = index;
                            (panelController.isPanelOpen) ? panelController.close() : panelController.open();
                          });
                        },
                        child: Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: Color(0xff252525)),
                            child: Row(
                              children: [
                                Text(
                                  semesters[index],
                                  style: TextStyle(color: Colors.white),
                                ),
                                const Spacer(),
                                Icon((iconChange) ? Icons.keyboard_arrow_down : Icons.chevron_right, color: Colors.white),
                              ],
                            )),
                      ),
                      separatorBuilder: (context, index) => const SizedBox(height: 10),
                      itemCount: 4),
                  const SizedBox(height: 20),
                  cGPAButton()
                ]),
              ),
            ),
            color: Colors.transparent,
            panelBuilder: (scrollController) => Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
                color: Colors.grey[700],
              ),
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: (isCGPA) ? slideUpPanel[1] : slideUpPanel[0]
              ),
            ),
          ),
        ));
  }

//save button
  Widget cGPAButton() {
    return GestureDetector(
        onTap: () {
          setState(() {
            isCGPA = true;
          });
          print(isCGPA);
          (panelController.isPanelOpen) ? panelController.close() : panelController.open();
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Clicked')));
        },
        child: Container(
          height: 70,
          width: 170,
          margin: EdgeInsets.symmetric(horizontal: 15),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Color(0xff3d649f)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'images/img1.png',
                height: 48,
              ),
              SizedBox( width: 10,),
              Text(
                'Cgpa',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ));
  }
}
