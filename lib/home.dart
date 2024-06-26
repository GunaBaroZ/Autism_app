import 'package:autism_application/signup.dart';
import 'package:autism_application/login.dart';
import 'package:flutter/material.dart';
import 'package:autism_application/stats.dart';
import 'package:autism_application/symptoms.dart';
import 'package:autism_application/questionnaire.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header section
            Container(
              padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'What is Autism?',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LogIn()),
                      );
                    },
                    child: Icon(Icons.logout, size: 24),
                  ),
                ],
              ),
            ),

            // Image section
            Container(
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                'images/autism_hp.jpg',
                fit: BoxFit.cover,
              ),
            ),

            // Text section
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Autism spectrum disorders (ASD) are a diverse group of conditions. They are characterized by some degree of difficulty with social interaction and communication. Other characteristics are atypical patterns of activities and behaviours, such as difficulty with transition from one activity to another, a focus on details and unusual reactions to sensations.\n\nAutism often has an impact on education and employment opportunities. In addition, the demands on families providing care and support can be significant. Societal attitudes and the level of support provided by local and national authorities are important factors determining the quality of life of people with autism.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),

            // Button section
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Stats()),
                      );
                    },
                    child: Text('Stats'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      textStyle: TextStyle(color: Colors.white),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Symptoms()),
                      );
                    },
                    child: Text('Symptoms'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      textStyle: TextStyle(color: Colors.white),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Questionnaire button
            Container(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AutismQuestionnaire()),
                  );
                },
                child: Text('Questionnaire'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  textStyle: TextStyle(color: Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}