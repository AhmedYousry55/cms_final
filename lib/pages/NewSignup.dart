import 'package:cms_final/components/components.dart';
import 'package:cms_final/pages/entry1.dart';
import 'package:cms_final/pages/signIn.dart';
import 'package:flutter/material.dart';
import 'package:cms_final/pages/Entry.dart';
import '../services/auth_service.dart';
import '../models/userModel.dart';
import 'package:cms_final/services/auth_service.dart';

class NewSignup extends StatefulWidget {
  const NewSignup({Key? key}) : super(key: key);

  @override
  State<NewSignup> createState() => _NewSignupState();
}

class _NewSignupState extends State<NewSignup> {
  @override
  final _formKey = GlobalKey<FormState>();

    final _nameController = TextEditingController();
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    final _passwordConfirmController = TextEditingController();
    // final _phone = TextEditingController();
    // final _id = TextEditingController();
    
    bool studentSelected = true;
    bool doctorSelected = false;
    bool isPasswordVisible = false; 
    bool isConfirmPasswordVisible = false;

    Future<void> _signup() async {
      final name = _nameController.text;
      final email = _emailController.text;
      final password = _passwordController.text;
      final passwordConfirrm = _passwordConfirmController.text;
      final _authService = AuthService();



      var response = await _authService.signUp(User(
          name: name ,
          email: email ,
          password: password ,
          passwordConfirm: passwordConfirrm,
        )).then((value) =>{

          Navigator.pushReplacementNamed(context, '/entry') 

      }).catchError((error)=>{

          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('signUp Failed'),
              content: Text('Check the previous fields'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('OK'),
                ),
              ],
            ),
          ),
      }) ;



    }

    @override
    Widget build(BuildContext context) {
      return SafeArea(
          child: Scaffold(
            appBar: AppBar(backgroundColor: Color(0xff202020),
              leading: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,),
            ),
            body: Container(
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black38, Colors.black38])),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      titleText(),
                      nameField(),
                      idField(),
                      emailField(),
                      passwordField(),
                      confirmPasswordField(),
                      phonenumberField(),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Student',
                              style: TextStyle(fontWeight: FontWeight.w400,
                                  color: Colors.white, fontSize: 16)),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                studentSelected = true;
                                doctorSelected = false;
                              });
                            },
                            child: Row(
                              children: [
                                Container(
                                    height: 20,
                                    width: 20,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: Color(0xff3d649f)),),
                                    child: studentSelected
                                        ? Container(
                                      margin: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          borderRadius: BorderRadius.circular(5),
                                          color: Color(0xff3d649f)),
                                    )
                                        : SizedBox()),
                              ],
                            ),
                          ),
                          Text('Doctor',
                              style: TextStyle(fontWeight: FontWeight.w400,
                                  color: Colors.white, fontSize: 16)),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                doctorSelected = true;
                                studentSelected = false;
                              });
                            },
                            child: Row(
                              children: [
                                Container(
                                    height: 20,
                                    width: 20,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: Color(0xff3d649f)),),
                                    child: doctorSelected
                                        ? Container(
                                      margin: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          borderRadius: BorderRadius.circular(5),
                                          color: Color(0xff3d649f)),
                                    )
                                        : SizedBox()),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('By signing up you agree to our',
                              style: TextStyle(color: Color(0xff828282),
                                  fontSize: 14)),
                          SizedBox(width: 3),
                          Text('Term of use',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 14)),
                          SizedBox(width: 3),
                          Text('and',
                              style: TextStyle(
                                  color: Color(0xff828282), fontSize: 14)),
                          SizedBox(width: 3,),
                          Text('privacy notice',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 14)),
                        ],),
                      SizedBox(height: 15),

                      
                      SizedBox(height: 15),
                      button(
                          borderRadius: 10,
                          width: MediaQuery.of(context).size.width * .25,
                          isSmallButton: true,
                          text: "Sign Up", function: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => const Entryy()));
                          _signup() ;
                      }),
                      Row(  
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already registered?',
                              style: TextStyle(
                                  color: Color(0xff828282), fontSize: 16)),
                          SizedBox(width: 0),
                          TextButton(
                              onPressed: () {  Navigator.push(context, MaterialPageRoute(builder: (context) => const SignIn()));},
                              child: Text(
                                "Sign In",
                                style: TextStyle(color: Colors.white),
                              )),
                        ],
                      ),
                    ]),
                ),
                
              ),
            ),
          ));
    }

    Widget titleText() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Sign up',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ],
      );
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
                color: Color(0xff333333)),
            child: TextField(
              controller: _nameController,
              style: TextStyle(color: Colors.white, fontSize: 14),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIconConstraints: BoxConstraints(minWidth: 24),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.account_circle_outlined,
                    color: Color(0xffBDBDBD),
                    size: 20,
                  ),
                ),
                hintText: 'Your name',
                hintStyle: TextStyle(color: Color(0xff828282),
                    fontSize: 18),
              ),
            ),
          ));
    }

    Widget idField() {
      return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15).copyWith(top: 10),
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),
                color: Color(0xff333333)),
            child: TextField(
              style: TextStyle(color: Colors.white, fontSize: 14),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIconConstraints: BoxConstraints(minWidth: 24),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Icons.person_pin_rounded, color: Color(0xffBDBDBD),
                    size: 20,),),
                hintText: 'ID',
                hintStyle: TextStyle(
                    color: Color(0xff828282), fontSize: 18),),),));
    }

    Widget emailField() {
      return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15).copyWith(top: 10),
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),
                color: Color(0xff333333)),
            child: TextField(
              controller: _emailController ,
              style: TextStyle(color: Colors.white, fontSize: 14),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIconConstraints: BoxConstraints(minWidth: 24),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Icons.email, color: Color(0xffBDBDBD), size: 20,),),
                hintText: 'Email Address',
                hintStyle: TextStyle(
                    color: Color(0xff828282), fontSize: 18),),),));
    }

    Widget passwordField() {
      return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15).copyWith(top: 10),
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),
                color: Color(0xff333333)),
            child: TextField(
              controller: _passwordController,
              
              obscureText: isPasswordVisible ? false : true,
              style: TextStyle(color: Colors.white, fontSize: 14),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIconConstraints: BoxConstraints(minWidth: 24),
                suffixIconConstraints: BoxConstraints(minWidth: 24),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.lock_rounded, color: Color(0xffBDBDBD), size: 20,),),
                suffixIcon: Padding(
                  padding: EdgeInsets.only(left: 10), child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                  child: Icon(
                    isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Colors.white, size: 20,),),),
                hintText: 'Password',
                hintStyle: TextStyle(
                    color: Color(0xff828282), fontSize: 18),),),));
    }

    Widget confirmPasswordField() {
      return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15).copyWith(top: 10),
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),
                color: Color(0xff333333)),
            child: TextField(
              controller: _passwordConfirmController ,
              
              obscureText: isConfirmPasswordVisible ? false : true,
              style: TextStyle(color: Colors.white, fontSize: 14),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIconConstraints: BoxConstraints(minWidth: 24),
                suffixIconConstraints: BoxConstraints(minWidth: 24),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.lock_rounded, color: Color(0xffBDBDBD), size: 20,),),
                suffixIcon: Padding(
                  padding: EdgeInsets.only(left: 10), child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isConfirmPasswordVisible = !isConfirmPasswordVisible;
                    });
                  },
                  child: Icon(isConfirmPasswordVisible ? Icons.visibility : Icons
                      .visibility_off, color: Colors.white, size: 20,),),),
                hintText: 'Confirm Password',
                hintStyle: TextStyle(
                    color: Color(0xff828282), fontSize: 18),),),));
    }

    Widget phonenumberField() {
      return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15).copyWith(top: 10),
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),
                color: Color(0xff333333)),
            child: TextField(
              style: TextStyle(color: Colors.white, fontSize: 14),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIconConstraints: BoxConstraints(minWidth: 24),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Icons.phone, color: Color(0xffBDBDBD), size: 20,),),
                hintText: 'Phone number',
                hintStyle: TextStyle(
                    color: Color(0xff828282), fontSize: 18),
              ),
            ),
          )
      );
    }
  } //signup button  Widget signUpButton() {    return GestureDetector(        onTap: () {          ScaffoldMessenger.of(context)              .showSnackBar(SnackBar(content: Text('Clicked')));        },        child: Container(          height: 65,          width: double.infinity,          margin: EdgeInsets.symmetric(horizontal: 15),          alignment: Alignment.center,          decoration: BoxDecoration(              borderRadius: BorderRadius.circular(18),              color: Color(0xff3d649f)          ),          child: Text('Sign Up Now',            style: TextStyle(fontWeight: FontWeight.w500,              color: Colors.white,              fontSize: 20,            ),          ),        ));  }}


