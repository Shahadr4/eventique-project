import 'package:evtq/const/logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Catogory();
  }
}

class Catogory extends StatelessWidget {
  const Catogory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 247, 247, 247),
      child: ListView(
        
        children: [
          appLogo,
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CupertinoSearchTextField(
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
          )


          


        ],
      ),
    );
  }
}