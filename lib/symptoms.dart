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
                   padding:EdgeInsets.only(left: 40, top: 40, right: 40),
                   child: const Text(
                  'Autism in young children :',textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.black54, fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
                  Container(
                    padding: const EdgeInsets.only(left: 30, top: 10, right: 40),
                    child: const Text(
                      "Signs of autism in young children include:\n",textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 50, right: 40,bottom: 40),
                    child: const Text(
                      '\u2022'"not responding to their name\n"  '\u2022'"avoiding eye contact\n"  '\u2022'"not smiling when you smile at them\n"  '\u2022'"getting very upset if they do not like a certain taste, smell or sound\n"  '\u2022'"repetitive movements, such as flapping their hands, flicking their fingers or rocking their body\n"  '\u2022'"not talking as much as other children\n"  '\u2022'"not doing as much pretend play\n"  '\u2022'"repeating the same phrases",textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),

                ],
              ),

              Column(
                children: [
                  Container(
                    padding:EdgeInsets.only(left: 40, top: 40, right: 40),
                    child: const Text(
                      'Autism in older children',textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black54, fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 30, top: 10, right: 40),
                    child: const Text(
                      "Signs of autism in older children include:\n",textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 50, right: 40,bottom: 40),
                    child: const Text(
                      '\u2022'"not seeming to understand what others are thinking or feeling\n"  '\u2022'"unusual speech, such as repeating phrases and talking ‘at’ others\n"  '\u2022'"liking a strict daily routine and getting very upset if it changes\n"  '\u2022'"having a very keen interest in certain subjects or activities\n"  '\u2022'"getting very upset if you ask them to do something\n"  '\u2022'"finding it hard to make friends or preferring to be on their own\n"  '\u2022'"taking things very literally – for example, they may not understand phrases like 'break a leg'\n"  '\u2022'"finding it hard to say how they feel",textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding:EdgeInsets.only(left: 40, top: 40, right: 40),
                    child: const Text(
                      'Autism in girls and boys',textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black54, fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 50, top: 10, right: 40),
                    child: const Text(
                      "Autism can sometimes be different in girls and boys.\nAutistic girls may:\n",textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 50, right: 40,bottom: 40),
                    child: const Text(
                      '\u2022'"hide some signs of autism by copying how other children behave and play\n"  '\u2022'"withdraw in situations they find difficult\n"  '\u2022'"appear to cope better with social situations\n"  '\u2022'"show fewer signs of repetitive behaviours\n\n"  "This means autism can be harder to spot in girls.\n"  ,textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black, fontSize: 15),
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


