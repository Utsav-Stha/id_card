import 'dart:io';

import 'package:flutter/material.dart';
import 'package:barcode/barcode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Id Card'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // var filename;
  // void buildBarcode(
  //     Barcode bc,
  //     String data, {
  //       String? filename,
  //       double? width,
  //       double? height,
  //       double? fontHeight,
  //     }) {
  //   final svg = bc.toSvg(
  //     data,
  //     width: width ?? 200,
  //     height: height ?? 80,
  //     fontHeight: fontHeight,
  //   );
  //
  //   filename ??= bc.name.replaceAll(RegExp(r'\s'), '-').toLowerCase();
  //   File("D:\broadway\id_card\assets\$filename.svg").writeAsStringSync(svg);
  // }

  @override
  Widget build(BuildContext context) {
    // buildBarcode(
    //   Barcode.code39(),
    //   'CODE 39',
    // );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        titleTextStyle: TextStyle(
          fontSize: 38,
          fontWeight: FontWeight.w700,
          color: Colors.black
        ),
        // titleTextStyle: TextStyle(
        //   // fontWeight: FontWeight.w900
        // ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('assets/logo.JPG'),
                  ),
                  Column(
                    children: [
                      Text(
                        'St.Xaviers\' College',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Maitighar, Kathmandu',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),

                ],
              ),
              SizedBox(
                height: 18,
              ),
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/spider_man.jpg'),
              ),
              SizedBox(
                height: 18,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      idCardRow('Name : ', 'Utsav Shrestha'),
                      idCardRow('Age : ', '22'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      idCardRow('Department : ', 'CSIT'),
                      idCardRow('Roll no : ', '40'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      idCardRow('Address : ', 'Teku,Kathmandu'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      idCardRow('Blood Type : ', 'O-'),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Image.asset(
                'assets/bar_code.png',
                height: 40,
                width: 250,
              ),
              const Text('\n Maitighar,Kathmandu'),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('www.sxc.edu.np '),
                  Text(' 01-4005001'),
                ],
              ),
              // Container(
              //   child: Image.asset('$filename.svg'),
              // )
            ],
          ),
        ),
      ),

    );
  }

  idCardRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(top:8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          Text(
            value,
            style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
