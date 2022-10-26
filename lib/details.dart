import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Details extends StatelessWidget {
  Details({super.key, required this.addetails});
  final Function(String e,String p) addetails;

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter Details"),
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Icon
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(
                Icons.person_outlined,
                size: 100.0,
                color: Colors.black,
              ),
            ),

            //email textfield
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                //focusNode: myFocusNode,
                controller: _email,
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  //hintStyle: TextStyle(
                  //color: myFocusNode.hasFocus ? Colors.red : Colors.white),
                  //labelStyle: TextStyle(
                  // color: myFocusNode.hasFocus ? Colors.red : Colors.white),
                ),
              ),
            ),

            //password textfield
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  controller: _password,
                  // obscureText: passenable,
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    //hintStyle: TextStyle(
                    //  color:
                    //    myFocusNode.hasFocus ? Colors.red : Colors.white),
                    // suffix: IconButton(
                    //   onPressed: () {
                    //     setState(() {
                    //       if (passenable) {
                    //         passenable = false;
                    //       } else {
                    //         passenable = true;
                    //       }
                    //     });
                    //   },
                    //   icon: Icon(passenable == true
                    //       ? Icons.visibility
                    //       : Icons.visibility_off,
                    //       color: Colors.white,
                    //     ),
                    // ),
                  ),
                )),

            //MaterialButton
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MaterialButton(
                onPressed: () {
                  //function calling
                  addetails(_email.text,_password.text);
                  Navigator.pop(context);
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
                height: 50.0,
                minWidth: 80.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
