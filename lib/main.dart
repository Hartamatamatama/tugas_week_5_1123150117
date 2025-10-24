//Todo
import 'package:flutter/material.dart';

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
        backgroundColor: Colors.blue,
        surfaceTintColor: Colors.blue,
        title: const Text('Halaman Depan'),
        shadowColor: Colors.black,
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
        color: Colors.lightBlueAccent,
        alignment: Alignment.center,
        child: Text("text"),
      ),
    );
  }
}
