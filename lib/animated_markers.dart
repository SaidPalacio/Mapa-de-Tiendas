import 'package:flutter/material.dart';
import 'package:mapa/animated_map.dart';

class MainAnimatedMarkert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark() ,
      child: AnimatedMarkersMap(),
      );
  } 
}