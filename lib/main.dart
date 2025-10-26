//Todo
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Container',
      debugShowCheckedModeBanner: false,
      home: Halaman(),
    );
  }
}

class Halaman extends StatelessWidget {
  const Halaman({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        surfaceTintColor: Colors.blue,
        title: const Text('Halaman Depan'),
        shadowColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              // Aksi ketika ikon pencarian ditekan
              print('Pencarian ditekan');
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              // Aksi ketika ikon lebih banyak ditekan
              print('Lebih banyak ditekan');
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Container(
        // color: Colors.lightBlueAccent,
        alignment: Alignment.center,
        // width: 200,
        // height: 200,
        // child: Row(children: [Text("text")]),
        margin: EdgeInsets.all(50),
        color: Colors.lightBlueAccent,
        child: Text(
          'Halo Semua',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.black],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(5, 5), // changes position of shadow
            ),
          ],
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
