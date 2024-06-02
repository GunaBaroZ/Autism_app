import 'package:autism_application/signup.dart';
import 'package:autism_application/login.dart';
import 'package:flutter/material.dart';


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
      child: Stack(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 35, top: 60),
                    child: const Text(
                      'What is\nAutism ?',
                      style: TextStyle(color: Colors.black, fontSize: 45, fontWeight: FontWeight.bold),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LogIn()),
                      );
                    }, // Image tapped
                    child: Container(
                      padding: EdgeInsets.only(left:130),
                      child: Image.asset(
                        'images/icons8-logout-50.png',
                        fit: BoxFit.cover, // Fixes border issues
                        width: 20,
                        height: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(left: 40, top: 30, right: 40,bottom: 40),
                child: const Text(
                  'Autism spectrum disorders (ASD) are a diverse group of conditions. They are characterized by some degree of difficulty with social interaction and communication. Other characteristics are atypical patterns of activities and behaviours, such as difficulty with transition from one activity to another, a focus on details and unusual reactions to sensations.\n\nAutism often has an impact on education and employment opportunities. In addition, the demands on families providing care and support can be significant. Societal attitudes and the level of support provided by local and national authorities are important factors determining the quality of life of people with autism.',textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    ElevatedButton(onPressed: () {print("test");}, child: Text('Stats',style: TextStyle(color: Colors.black),),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder( side: BorderSide(color: Colors.red,width: 4),
                            borderRadius: BorderRadius.circular(20),
                          ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),),
                    SizedBox(width: 20,),
                    ElevatedButton(onPressed: () {}, child: Text('Symptoms',style: TextStyle(color: Colors.black),),
                      style:ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder( side: BorderSide(color: Colors.red,width: 4),
                            borderRadius: BorderRadius.circular(20),
                          ),

                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                          textStyle: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold))),
                  ],
                ),
              ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: () {}, child: Text('Questionnaire',style: TextStyle(color: Colors.black),),
                      style:ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder( side: BorderSide(color: Colors.red,width: 4),
                            borderRadius: BorderRadius.circular(20),
                          ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),),
                  )

            ],
          ),

        ],
      ),
      )
    );
  }
}