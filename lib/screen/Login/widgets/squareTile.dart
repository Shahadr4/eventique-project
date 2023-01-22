import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SquareBox extends StatelessWidget {
  final String imagepath;
  const SquareBox({super.key,required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(border: Border.all(color: Colors.white,) ),
      child:Image.network(imagepath),
      height: 50,
    );
  }
}