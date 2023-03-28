import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double sizeIcon = 300;
  int red = 0;
  int blue = 0;
  int green = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Exemplo'),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  if (sizeIcon > 50) {
                    sizeIcon = sizeIcon - 50;
                  }
                });
              },
              icon: Icon(Icons.remove)),
          IconButton(
              onPressed: () {
                setState(() {
                  sizeIcon = 50;
                });
              },
              icon: Text('S')),
          IconButton(
              onPressed: () {
                setState(() {
                  sizeIcon = 300;
                });
              },
              icon: Text('M')),
          IconButton(
              onPressed: () {
                setState(() {
                  sizeIcon = 500;
                });
              },
              icon: Text('L')),
          IconButton(
              onPressed: () {
                setState(() {
                  if (sizeIcon < 500) {
                    sizeIcon = sizeIcon + 50;
                  }
                });
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [
          Center(
              child:
                  Icon(Icons.alarm, size: sizeIcon, color: Color.fromRGBO(red, green, blue, 50))),
          Slider(
            min: 0,
            max: 255,
            divisions: 255,
            value: 0,
            onChanged: (double value) {
              setState(() {
                red = int.tryParse(value)!;
              });
            },
            activeColor: Colors.red,
          ),
          Slider(
            min: 0,
            max: 255,
            divisions: 255,
            value: 0,
            onChanged: (double value) {
              setState(() {
                
              });
            },
            activeColor: Colors.green,
          ),
          Slider(
            min: 0,
            max: 255,
            divisions: 255,
            value: 0,
            onChanged: (double value) {
              setState(() {
                
              });
            },
            activeColor: Colors.blue,
          )
        ],
      ),
    );
  }
}