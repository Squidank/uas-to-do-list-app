import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas/loginPage.dart';

class signupPage extends StatelessWidget {
  const signupPage({super.key});

  Widget txtField(String hintText, bool password) {
    return Container(
        child: TextField(
      textAlign: TextAlign.center,
      obscureText:
          password, // Mengatur teks tersembunyi(True) tdk tersembunyi(False)
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          contentPadding: EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 20, color: Colors.grey)),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff071D31),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 160,
              ),
              Center(
                child: Text(
                  'Sign Up Form!',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: Color(0xffADA7A7)),
                ),
              ),
              Center(
                child: Text(
                  'Welcome',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Color(0xffADA7A7)),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 270,
              right: 53,
              left: 53,
            ),
            child: Column(children: [
              Container(
                  height: 50,
                  margin: EdgeInsets.only(bottom: 50),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: txtField('Enter Name', false)),
              Container(
                  margin: EdgeInsets.only(bottom: 50),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: txtField('Enter Email', false)),
              Container(
                  margin: EdgeInsets.only(bottom: 50),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: txtField('Enter Password', true)),
              Container(
                  width: 130,
                  height: 55,
                  margin: EdgeInsets.only(bottom: 50),
                  decoration: BoxDecoration(
                      color: Color(0xff333C89),
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      'SIGN UP',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Color(0xffADA7A7)),
                    ),
                  ))
            ]),
          ),
          Positioned(
            bottom: 110,
            left: 53,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Already a Member?',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color(0xffADA7A7)),
                ),
                GestureDetector(onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => loginPage()));},
                  child: InkWell(
                    child: Text(
                      'LOGIN',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Color(0xff5E5BFB)),
                    ),
                  )
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
