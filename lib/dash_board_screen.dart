import 'package:flutter/material.dart';
import 'package:sraven/login_screen.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dash Board Screen")),
      body: Column(
        children: [
                  SizedBox(height: 10,),
          TextFormField(
            decoration: InputDecoration(
              label: Text("Name"),
              hintText: "Enter your Name",
              border: OutlineInputBorder(),
            ),
          ),
          TextButton(onPressed: (){
Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>LoginScreen()));
          }, child: Text("Dont you have any account ?"))
        ],
      ),
    );
  }
}
