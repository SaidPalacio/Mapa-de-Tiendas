import 'package:flutter/material.dart';
//import 'package:mapa/animated_map.dart';
import 'package:mapa/welcome.dart';
//import 'package:map_flutter/Screem/map_screen.dart';


void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MAPA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const AnimatedMarkersMap (),
      home: const MyHomePage()
    );
  }
}



