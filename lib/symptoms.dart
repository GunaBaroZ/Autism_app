import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Symptoms extends StatefulWidget {
  const Symptoms({super.key});

  @override
  State<Symptoms> createState() => _SymptomsState();
}

class _SymptomsState extends State<Symptoms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 60),
                    child: const Text(
                      'Signs of autism\nin children',
                      style: TextStyle(color: Colors.black, fontSize: 45, fontWeight: FontWeight.bold),
                    ),
                  ),

                  Container(
                   padding:EdgeInsets.only(left: 20, top: 40),
                   child: const Text(
                  'Autism in young children :',textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.black54, fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
                ],
              ),

            ],
          ),

      ],
      ),
      ),
    );
  }
}


