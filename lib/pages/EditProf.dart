import 'package:cms_final/pages/Profile.dart';
import 'package:flutter/material.dart';
class EditProf extends StatefulWidget {
  const EditProf({Key? key}) : super(key: key);
  @override
  State<EditProf> createState() => _EditProfState();
}
class _EditProfState extends State<EditProf> {
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar( backgroundColor:Color(0xff0b0b0b),
            leading: IconButton(
    icon: Icon(Icons.arrow_back_ios),
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const Prof()));
    },),
            title: Text(
              'Edit Profile',
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
                    colors: [Colors.black38, Colors.black38])),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    nameField(),
                    emailField(),
                    phoneField(),
                    PasswordField(),
                    birthdayField(),
                    SizedBox(
                      height: 150,
                    ),
                    saveButton(),
                    SizedBox(
                      height: 15,
                    )]),
            ),
          ),
        ));
  }
  Widget nameField() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15).copyWith(top: 10),
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Color(0xff252525)),
          child: TextField(
            style: TextStyle(color: Colors.white, fontSize: 14),
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIconConstraints: BoxConstraints(minWidth: 24),
              prefixIcon: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.person_2_rounded,
                  color: Color(0xffBDBDBD),
                  size: 20,
                ),
              ),
              hintText: 'Yassin Mohamed awed',
              hintStyle: TextStyle(color: Color(0xffF2F2F2), fontSize: 18),
            ),
          ),
        ));
  }
  Widget emailField() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15).copyWith(top: 10),
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Color(0xff252525)),
          child: TextField(
            style: TextStyle(color: Colors.white, fontSize: 14),
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIconConstraints: BoxConstraints(minWidth: 24),
              prefixIcon: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.email,
                  color: Color(0xffBDBDBD),
                  size: 20,
                ),
              ),
              hintText: 'sim.yassin@alexu.edu.eg',
              hintStyle: TextStyle(color: Color(0xffF2F2F2), fontSize: 18),
            ),
          ),
        ));
  }
  Widget phoneField() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15).copyWith(top: 10),
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Color(0xff252525)),
          child: TextField(
            style: TextStyle(color: Colors.white, fontSize: 14),
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIconConstraints: BoxConstraints(minWidth: 24),
              prefixIcon: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.phone,
                  color: Color(0xffBDBDBD),
                  size: 20,
                ),
              ),
              hintText: '+20121212112',
              hintStyle: TextStyle(color: Color(0xffF2F2F2), fontSize: 18),
            ),
          ),
        ));
  }
  Widget PasswordField() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15).copyWith(top: 10),
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Color(0xff252525)),
          child: TextField(
            obscureText: isConfirmPasswordVisible ? false : true,
            style: TextStyle(color: Colors.white, fontSize: 14),
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIconConstraints: BoxConstraints(minWidth: 24),
              suffixIconConstraints: BoxConstraints(minWidth: 24),
              prefixIcon: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.lock_rounded,
                  color: Color(0xffBDBDBD),
                  size: 20,
                ),
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.only(left: 10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isConfirmPasswordVisible = !isConfirmPasswordVisible;
                    });
                  },
                  child: Icon(
                    isConfirmPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
              hintText: 'password',
              hintStyle: TextStyle(color: Color(0xffF2F2F2), fontSize: 18),
            ),
          ),
        ));
  }
  Widget birthdayField() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15).copyWith(top: 10),
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Color(0xff252525)),
          child: TextField(
            style: TextStyle(color: Colors.white, fontSize: 14),
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIconConstraints: BoxConstraints(minWidth: 24),
              prefixIcon: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.cake_rounded,
                  color: Color(0xffBDBDBD),
                  size: 20,
                ),
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.only(left: 70),
                child: Icon(
                  Icons.calendar_month_outlined,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              hintText: '20/2/2000',
              hintStyle: TextStyle(color: Color(0xffF2F2F2), fontSize: 18),
            ),
          ),
        ));
  }
//save button
  Widget saveButton() {
    return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Prof()));
        },
        child: Container(
          height: 55,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 15),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Color(0xff3d649f)
          ),
          child: Text('Save',
            style: TextStyle(fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ));
  }
}
