
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
       appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Signs of Autism'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // Header
              Text(
                'Signs of Autism',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              // Section 1: Autism in young children
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Text(
                      'Autism in Young Children',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      'Signs of autism in young children include:',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '\u2022 Not responding to their name\n'
                          '\u2022 Avoiding eye contact\n'
                          '\u2022 Not smiling when you smile at them\n'
                          '\u2022 Getting very upset if they do not like a certain taste, smell or sound\n'
                          '\u2022 Repetitive movements, such as flapping their hands, flicking their fingers or rocking their body\n'
                          '\u2022 Not talking as much as other children\n'
                          '\u2022 Not doing as much pretend play\n'
                          '\u2022 Repeating the same phrases',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              // Section 2: Autism in older children
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Text(
                      'Autism in Older Children',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      'Signs of autism in older children include:',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '\u2022 Not seeming to understand what others are thinking or feeling\n'
                          '\u2022 Unusual speech, such as repeating phrases and talking “at” others\n'
                          '\u2022 Liking a strict daily routine and getting very upset if it changes\n'
                          '\u2022 Having a very keen interest in certain subjects or activities\n'
                          '\u2022 Getting very upset if you ask them to do something\n'
                          '\u2022 Finding it hard to make friends or preferring to be on their own\n'
                          '\u2022 Taking things very literally – for example, they may not understand phrases like "break a leg"\n'
                          '\u2022 Finding it hard to say how they feel',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              // Section 3: Autism in girls and boys
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Text(
                      'Autism in Girls and Boys',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      'Autism can sometimes be different in girls and boys.',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Autistic girls may:\n'
                          '\u2022 Hide some signs of autism by copying how other children behave and play\n'
                          '\u2022 Withdraw in situations they find difficult\n'
                          '\u2022 Appear to cope better with social situations\n'
                          '\u2022 Show fewer signs of repetitive behaviours\n\n'
                          'This means autism can be harder to spot in girls.',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



/*
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
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Signs of Autism'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // Section 1: Autism in young children
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Text(
                      'Autism in Young Children',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      'Signs of autism in young children include:',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '\u2022 Not responding to their name\n'
                          '\u2022 Avoiding eye contact\n'
                          '\u2022 Not smiling when you smile at them\n'
                          '\u2022 Getting very upset if they do not like a certain taste, smell or sound\n'
                          '\u2022 Repetitive movements, such as flapping their hands, flicking their fingers or rocking their body\n'
                          '\u2022 Not talking as much as other children\n'
                          '\u2022 Not doing as much pretend play\n'
                          '\u2022 Repeating the same phrases',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              // Section 2: Autism in older children
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Text(
                      'Autism in Older Children',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      'Signs of autism in older children include:',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '\u2022 Not seeming to understand what others are thinking or feeling\n'
                          '\u2022 Unusual speech, such as repeating phrases and talking “at” others\n'
                          '\u2022 Liking a strict daily routine and getting very upset if it changes\n'
                          '\u2022 Having a very keen interest in certain subjects or activities\n'
                          '\u2022 Getting very upset if you ask them to do something\n'
                          '\u2022 Finding it hard to make friends or preferring to be on their own\n'
                          '\u2022 Taking things very literally – for example, they may not understand phrases like "break a leg"\n'
                          '\u2022 Finding it hard to say how they feel',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              // Section 3: Autism in girls and boys
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Text(
                      'Autism in Girls and Boys',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      'Autism can sometimes be different in girls and boys.',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Autistic girls may:\n'
                          '\u2022 Hide some signs of autism by copying how other children behave and play\n'
                          '\u2022 Withdraw in situations they find difficult\n'
                          '\u2022 Appear to cope better with social situations\n'
                          '\u2022 Show fewer signs of repetitive behaviours\n\n'
                          'This means autism can be harder to spot in girls.',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 */