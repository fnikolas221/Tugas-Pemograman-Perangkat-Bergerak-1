import 'package:flutter/material.dart';
import 'dart:math' as math;

const DATA_MATKUL = [
  {
    "Hari": "Monday",
    "Jam": "10:50-12:20",
    "Ruang": "D408 & D409",
    "Kelas": "A & B\'2020",
    "Mata Kuliah": "Pengukuran Kinerja & Evaluasi SI",
    "Color":"#E5DCC5"
  },
  {
    "Hari": "Tuesday",
    "Jam": "09:10-10:40",
    "Ruang": "D408 & D409",
    "Kelas": "A & B\'2020",
    "Mata Kuliah": "Konstruksi dan Pengujian Perangkat Lunak",
    "Color":"#C14953"
  },
  {
    "Hari": "Tuesday",
    "Jam": "13:00-14:30",
    "Ruang": "D408 & D409",
    "Kelas": "A & B\'2020",
    "Mata Kuliah": "Perencanaan Strategis SI/TI",
    "Color":"#F7C04A"
  },
  {
    "Hari": "Wednesday",
    "Jam": "13:00-14:30",
    "Ruang": "D308 & D309",
    "Kelas": "A & B\'20",
    "Mata Kuliah": "Pengolahan Citra Digital",
    "Color":"#848FA5"
  },
  {
    "Hari": "Friday",
    "Jam": "13:30-15:00",
    "Ruang": "D408 & D409",
    "Kelas": "A & B\'20",
    "Mata Kuliah": "Pemrograman Perangkat Bergerak",
    "Color":"#DF7857"
  }
];

string_to_color(String? color) {
  var hexString = color;
  final buffer = StringBuffer();
  if (hexString!.length == 6 || hexString.length == 7) buffer.write('ff');
  buffer.write(hexString.replaceFirst('#', ''));
  return Color(int.parse(buffer.toString(), radix: 16));
}

class MataKuliah extends StatelessWidget {
  const MataKuliah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Mata Kuliah")),
      body: Container(

        child: Column(children: [
          Expanded(
              child: ListView.builder(
                  itemCount: DATA_MATKUL.length,
                  itemBuilder: ((context, index) {
                    var matkul = DATA_MATKUL[index];
                    return Card(
                        color: string_to_color(matkul["Color"]),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                              title: Text("Matkul : ${matkul["Mata Kuliah"]} "),
                              subtitle: Text(
                                  "Kelas : (${matkul["Kelas"]}) \nHari, Jam : ${matkul["Hari"]}, ${matkul["Jam"]}"),
                              leading: CircleAvatar(
                                child: Text("SI"),
                              )),
                        ));
                  }))),
          SizedBox(height: 5),
          Container(
              padding: const EdgeInsets.fromLTRB(25, 3, 25, 3),
              color: Colors.blue,
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/page3");
                  },
                  child: Text(
                    "Ke Halaman 3",
                    style: TextStyle(color: Colors.white),
                  ))),
          SizedBox(height: 50),
        ]),
      ),
    );
  }
}
