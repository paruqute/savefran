import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saveboxfran/constraints.dart';


class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 10),
                      margin: EdgeInsets.only(bottom: 50),
                      child: Text(
                        "SAVE BOX \nFranchise App",
                        style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                            fontSize: 43,
                            fontWeight: FontWeight.w800,
                            foreground: Paint()..shader = linearGradient,
                            letterSpacing: 5,
                          ),
                        ),
                      )
                  ),
                  _inputField(Icon(Icons.person_outline,size: 20,color: Color(0xffA6B0BD)),
                      "Username",
                      false
                  ),
                  _inputField(Icon(Icons.lock_outline,size: 20,color: Color(0xffA6B0BD)),
                      "Password",
                      true
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: 200,
                      height: 50,
                      margin: EdgeInsets.only(top: 20,bottom: 30),
                      decoration: BoxDecoration(
                          color: Color(0xff8921aa),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffd89cea),
                              blurRadius: 10,
                              offset: Offset(0,5),
                              spreadRadius: 0,
                            ), ]

                      ),
                      child: FlatButton(
                        onPressed: () => {

                        },

                        child: Text(
                          "Sign in",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Don't have an account ?",
                          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'SignUp',
                          style: TextStyle(
                              color: Color(0xff8921aa),
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );

  }
}



Widget _inputField(Icon prefixIcon, String hintText, bool isPassword) {
  return Container(
    width: 300,
    height: 60,
    decoration: BoxDecoration(

      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
      boxShadow: [
        BoxShadow(
          color: Color(0xff8921aa),
          blurRadius: 25,
          offset: Offset(0,5),
          spreadRadius: -25,
        ),
      ],
    ),
    margin: EdgeInsets.only(bottom: 10),
    child: Padding(
      padding: const EdgeInsets.all(2.0),
      child: TextField(
        obscureText: isPassword,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Color(0xff000912),
          ),
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 25),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color(0xffA6B0BD),
          ),
          fillColor: Colors.white,
          filled: true,
          prefixIcon: prefixIcon,
          prefixIconConstraints: BoxConstraints(
            minWidth: 75,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(color: Color(0xffefe7f1)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(color: Color(0xffefe7f1)),
          ),
        ),
      ),
    ),
  );
}