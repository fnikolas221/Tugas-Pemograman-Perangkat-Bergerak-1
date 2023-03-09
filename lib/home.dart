import 'package:flutter/material.dart';
import 'package:latihan1/ListMataKuliah.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    int _counter = 0;

    void _incrementCounter() {
      setState(() {
        // This call to setState tells the Flutter framework that something has
        // changed in this State, which causes it to rerun the build method below
        // so that the display can reflect the updated values. If we changed
        // _counter without calling setState(), then the build method would not be
        // called again, and so nothing would appear to happen.
        _counter++;
      });
    }
    return  Scaffold(
      appBar:  AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Center(child:Text("Aplikasi Fernando Nikolas R ")),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: SingleChildScrollView(
            child:Column(
              // Column is also a layout widget. It takes a list of children and
              // arranges them vertically. By default, it sizes itself to fit its
              // children horizontally, and tries to be as tall as its parent.
              //
              // Invoke "debug painting" (press "p" in the console, choose the
              // "Toggle Debug Paint" action from the Flutter Inspector in Android
              // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
              // to see the wireframe for each widget.
              //
              // Column has various properties to control how it sizes itself and
              // how it positions its children. Here we use mainAxisAlignment to
              // center the children vertically; the main axis here is the vertical
              // axis because Columns are vertical (the cross axis would be
              // horizontal).
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  color: Colors.blue,
                  child: Image.asset("assets/src/Foto.jpg",width:200),
                ),
                SizedBox(height: 20),
                Text("NIM : 2009116075",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),),
                Text("Fernando Nikolas R",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
                ),SizedBox(height: 25),
                Container(
                    padding: const EdgeInsets.fromLTRB(25,3 , 25, 3),
                    color: Colors.blue,
                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const MataKuliah()));
                    },child: Text("Ke Halaman 2",style: TextStyle(color: Colors.white),))
                ),
              ],
            )
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
