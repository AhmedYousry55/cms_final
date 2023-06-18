import 'package:flutter/material.dart';
import 'package:cms_final/components/components.dart';
class Hrs extends StatefulWidget {
  const Hrs({Key? key}) : super(key: key);
  @override
  State<Hrs> createState() => _HrsState();
}
class _HrsState extends State<Hrs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar( backgroundColor:Color(0xff0b0b0b),
            leading:IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white70),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(
              'Number Of Hours',
              style: TextStyle(color:Colors.white),
            ),
            centerTitle: true,
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff0b0b0b), Color(0xff0b0b0b)])),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/ff.png',
                      height: 100,
                      width: 600,
                    ),
                    titleText(),
                    SizedBox( height: 10,),
                    subTitleText(),
                    SizedBox( height: 20,),
                    uniButton(),
                    SizedBox( height: 5,),
                    colButton(),
                    SizedBox( height: 5,),
                    compButton(),
                    SizedBox( height: 5,),
                    electButton(),
                    SizedBox( height: 5,),
                    freeButton(),
                  ]),
            ),
          ),
        ));
  }
  Widget titleText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Completed',
          style: TextStyle(
            fontSize: 27,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
  Widget subTitleText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '104/132 Hours',
          style: TextStyle(
            fontSize: 15,
            color: Color(0xff828282),
          ),
        ),
      ],
    );
  }
  Widget uniButton() {
    return GestureDetector(
        onTap: () {
        },
        child: Container(
          height: 77,
          width: 370,
          margin: EdgeInsets.symmetric(horizontal: 15),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Color(0xff252525)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'images/yy.png',
                height: 75,
                width: 75,
              ),
              Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  SizedBox( height: 15,),
                  Text(
                    'University requirements',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox( height: 3,),
                  Text(
                    '9 of 10 Credit hours',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Color(0xff828282),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox( width: 30,),
              Icon( Icons.arrow_forward_ios_outlined,
                color: Colors.white,
                size: 20,
              )],
          ),
        ));
  }
}
Widget colButton() {
  return GestureDetector(
      onTap: () {
      },
      child: Container(
        height: 77,
        width: 370,
        margin: EdgeInsets.symmetric(horizontal: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Color(0xff252525)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'images/comp (1).png',
              height: 75,
              width: 75,
            ),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                SizedBox( height: 15,),
                Text(
                  'College requirements',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                SizedBox( height: 3,),
                Text(
                  '15 of 26 Credit hours',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Color(0xff828282),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox( width: 50,),
            Icon( Icons.arrow_forward_ios_outlined,
              color: Colors.white,
              size: 20,
            )],
        ),
      ));
}
Widget compButton() {
  return GestureDetector(
      onTap: () {
      },
      child: Container(
        height: 77,
        width: 370,
        margin: EdgeInsets.symmetric(horizontal: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Color(0xff252525)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'images/ww.png',
              height: 75,
              width: 75,
            ),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                SizedBox( height: 15,),
                Text(
                  'Compulsory courses',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                SizedBox( height: 3,),
                Text(
                  '52 of 60 credit hours',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Color(0xff828282),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox( width: 55,),
            Icon( Icons.arrow_forward_ios_outlined,
              color: Colors.white,
              size: 20,
            )],
        ),
      ));
}
Widget electButton() {
  return GestureDetector(
      onTap: () {
      },
      child: Container(
        height: 77,
        width: 370,
        margin: EdgeInsets.symmetric(horizontal: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Color(0xff252525)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'images/yr.png',
              height: 75,
              width: 75,
            ),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                SizedBox( height: 15,),
                Text(
                  'Elective courses',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                SizedBox( height: 3,),
                Text(
                  '24 of 32 Credit hours',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Color(0xff828282),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox( width: 90,),
            Icon( Icons.arrow_forward_ios_outlined,
              color: Colors.white,
              size: 20,
            )],
        ),
      ));
}
Widget freeButton() {
  return GestureDetector(
      onTap: () {
      },
      child: Container(
        height: 77,
        width: 370,
        margin: EdgeInsets.symmetric(horizontal: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Color(0xff252525)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'images/yr.png',
              height: 75,
              width: 75,
            ),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                SizedBox( height: 15,),
                Text(
                  'Free elective',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                SizedBox( height: 3,),
                Text(
                  '3 of 4 Credit hours',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Color(0xff828282),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox( width: 115,),
            Icon( Icons.arrow_forward_ios_outlined,
              color: Colors.white,
              size: 20,
            )],
        ),
      ));
}