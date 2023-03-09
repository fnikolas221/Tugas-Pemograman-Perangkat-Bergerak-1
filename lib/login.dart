import 'package:flutter/material.dart';
import 'package:latihan1/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  String usernameText = "";
  String passwordText = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical:200),
            child: Center(
              child: Column(
                children: [
                  Text("Login Aplikasi Data Diri",style: TextStyle(color: Colors.black87, fontSize: 30)),
                  SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: TextField(
                      onChanged: (text){
                        setState(() {
                          usernameText = text;
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(90.0),
                        ),
                        labelText: 'Username',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: TextField(
                      onChanged: (text){
                        setState(() {
                          passwordText = text;
                        });
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(90.0),
                        ),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.fromLTRB(25,3 , 25, 3),
                    color: Colors.blue,
                    child: TextButton(onPressed: (){
                      if(usernameText=="android" && passwordText=="android"){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Home()));
                      }else{
                        print("Username dan password salah");
                      }
                    },child: Text("Login",style: TextStyle(color: Colors.white),))
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
