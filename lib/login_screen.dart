// ignore_for_file: avoid_print

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sraven/dash_board_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

XFile? pickedxFile;
var _farmKey = GlobalKey<FormState>();
   TextEditingController nameTextEditingController =TextEditingController();
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(76, 175, 80, 1),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _farmKey,
          child: Column(
            children: [
              SizedBox(height: 40),
              Center(
                child: Stack(
                  children: [
                    pickedxFile != null
                        ? CircleAvatar(
                            radius: 50,
                            backgroundImage: FileImage(File(pickedxFile!.path)),
                          )
                        : CircleAvatar(radius: 50),

                    Positioned(
                      bottom: 0,
                      right: 10,
                      child: GestureDetector(
                        onTap: () async {
                          ImagePicker myImage = ImagePicker();
                          pickedxFile = await myImage.pickImage(
                            source: ImageSource.gallery,
                          );
                          if (pickedxFile != null) {
                            print("picked:${pickedxFile!.path}");
                            setState(() {});
                          } else {
                            print("not picked");
                          }
                        },
                        child: Icon(Icons.camera_alt, size: 20),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 70),
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter the name";
                        }
                        return null;
                      },
                      controller: nameTextEditingController,
                      onChanged: (value) {
                     
                      },
                      decoration: InputDecoration(
                        hintText: "Enter Your name",
                        prefixIcon: Icon(Icons.person),
                        label: Text("Name"),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter the Email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter Your Email",
                        prefixIcon: Icon(Icons.mail),
                        label: Text("Email"),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),

                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter the Password";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        hintText: "Enter Your Password",
                        label: Text("Password"),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  _farmKey.currentState!.validate();
                  nameTextEditingController.text ="sraven";
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DashBoardScreen()));
                },
                
                child: Text("Register"),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {},
                child: Text("Alredy have an account ?"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
