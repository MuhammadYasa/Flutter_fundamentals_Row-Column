import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    color: Colors.white, // memberikan color ketika di minimaze ( backgroundnya)
    title: "Course Application", // title yang akan muncul ketika aplikasi di minimaze
    home: new Halamansatu(),
  ));
}

class Halamansatu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.blue, // memberi backgorund warna pada bagian tengah
      appBar: new AppBar( // membuat new aplication bar
        backgroundColor: Colors.red[300], // memberi warna pada appbar
        leading: new Icon(Icons.home), // leading adalah bagian yang paling kiri / awalan dari app bar
//        title: new Text("M.Y Course"), // memberi title
        // merubah title menjadi ke tengah
        title: new Center( // membuat widget center
          child: new Text("M.Y Course"), // membuat anak dari widget center yang memiliki nilai text
        ),
        actions: <Widget>[ // menambahkan widget baru di ujung kanan
          new Icon(Icons.search) // menambahkan widget search
        ],
      ),
      body: new Container( // penambahan container baru untuk proses row & column
        child: new Column( // di dalam row, tidak dalam memiliki satu anak, tapi dia bisa menampung banyak anak
          // atau children / banyak widget
          // row dan column bisa menampung beberapa widget
          children: <Widget> [
            new Icon(Icons.local_pizza, // membuat icon
              size: 70,  // setting ukuran
              color: Colors.white, // setting warna
            ),
            new Row( // membuat row di dalam column, yang berisi beberapa widget icon
              children: <Widget>[
                new Icon(Icons.donut_large,
                  size: 70,
                  color: Colors.white,
                ),
                new Icon(Icons.account_balance_wallet,
                  size: 70,
                  color: Colors.white,
                ),
                new Icon(Icons.ac_unit,
                  size: 70,
                  color: Colors.white,
                ),
              ],
            ),
            new Icon(Icons.speaker,
              size: 70,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}