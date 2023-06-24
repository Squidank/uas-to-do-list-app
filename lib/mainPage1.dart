import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class mainPage1 extends StatelessWidget {
  const mainPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/main background.png'))),
          ),
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text(
                  'Daftar Tugas',
                  style: GoogleFonts.roboto(
                    fontSize: 48,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff071D31),
                  ),
                ),
              ),
              Container(
                height: 700,
                width: double.infinity,
              )
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xff333C89)
          ),
          child: const Icon(Icons.add)),
      ), // This tra
    );
  }
}
