import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'Register.dart';
import 'package:flutter/gestures.dart';
import 'dart:convert';

class Login extends StatefulWidget {
  Const Login({Key key}): super(key: key);
  
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String nama;

  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  TextEditingController emailController = TextEditingController();

  @override
  Wide build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        // berfungsi untuk bisa scroll
        child: SafeArea(
          //biar ga keluar area scren hp
          child: Container(
            height: MediaQuery.of(context).size.heigt,child: Column(
              mainAxisAlignment: MainAxisAlignment.center, children:[Text(
                "Login Area",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 50), // kasih jarak tinggi : 50px
              Center(
                child: Form(
                  key: _fbKey,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: Column(
                      children: [
                        FormBuilderTextField(name: "email",
                        controller: emailController, 
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10), 
                          border: OutlineInputBorder(),
                          labelText: "Email")
                        ),
                        SizedBox(
                          height:20,
                        ),
                        FormBuilderTextField(
                          obscureText: true, //buat bikin setiap inputan jadi bintang
                          name: "password",
                          controller: passwordController,
                          
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 10),
                            border: OutlineInputBorder(),
                            labelText: "password"),
                          ),
                          
                      ],
                    ),)),
              )
              ],)),
      )
    )
  }
}