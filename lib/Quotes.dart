import 'package:flutter/material.dart';

class Quotes extends StatelessWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Quotes Masa Kini"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          child: Center(child: Column(
            children: [
              SizedBox(height: 30,),
              Card(
                margin: EdgeInsets.only(top:20),
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(backgroundImage: AssetImage("assets/src/maguire_goat.jpeg"),radius: 30,),
                      Text("Muchas gracias afición, esto es para vosotros SIIIUU", style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.italic
                      ),),
                      SizedBox(height: 22),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Artinya apa bang Messi",style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                  padding: const EdgeInsets.fromLTRB(25, 3, 25, 3),
                  color: Colors.blue,
                  child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Kembali",
                        style: TextStyle(color: Colors.white),
                      ))),
            ],
          ),),
        ),
      ),
    );
  }
}
