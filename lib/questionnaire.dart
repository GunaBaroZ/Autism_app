import 'package:flutter/material.dart';
import 'package:autism_application/consent.dart';

class AutismQuestionnaire extends StatefulWidget {
  const AutismQuestionnaire({Key? key}) : super(key: key);

  @override
  _AutismQuestionnaireState createState() => _AutismQuestionnaireState();
}

class _AutismQuestionnaireState extends State<AutismQuestionnaire> {
  final List<String> _items = [
    "Has poor eye contact",
    "Lacks social smile",
    "Remains aloof",
    "Does not reach out to others",
    "Unable to relate to people" ,
    "Unable to respond to social/ environmental cues",
    "Engages in solitary and repetitive play activities",
    "Unable to take turns in social interaction",
    "Does not maintain peer relationships",
    "Shows inappropriate emotional response",
    "Shows exaggerated emotions",
    "Engages in self-stimulating emotions",
    "Lacks fear of danger",
    "Excited or agitated for no apparent reason",
    "Acquired speech and lost it",
    "Has difficulty in using non-verbal language orgestures to communicate",
    "Engages in stereotyped and repetitive use of language",
    "Engages in echolalic speech",
    "Produces infantile squeals/ unusual noises",
    "Unable to initiate or sustain conversation with others",
    "Uses jargon or meaningless words",
    "Uses pronoun reversals",
    "Unable to grasp pragmatics of communication (real meaning)",
    "Engages in stereotyped and repetitive motor mannerisms",
    "Shows attachment to inanimate objects",
    "Shows hyperactivity/restlessness",
    "Exhibits aggressive behavior",
    "Throws temper tantrums",
    "Engages in self-injurious behavior",
    "Insists on sameness",
    "Unusually sensitive to sensory stimuli",
    "Stares into space for long periods of time",
    "Has difficulty in tracking objects",
    "Has unusual vision",
    "Insensitive to pain",
    "Responds to objects/people unusually by smelling, touching or tasting",
    "Inconsistent attention and concentration",
    "Shows delay in responding",
    "Has unusual memory of some kind",
    "Has 'savant' ability",
  ];

  final List<int> _scores = List.filled(41, 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Autism Questionnaire", style: TextStyle(fontSize: 18)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(_items[index], style: TextStyle(fontSize: 16)),
                trailing: DropdownButton<int>(
                  value: _scores[index],
                  onChanged: (value) {
                    setState(() {
                      _scores[index] = value!;
                    });
                  },
                  items: [
                    DropdownMenuItem(value: 0, child: Text("Rarely")),
                    DropdownMenuItem(value: 1, child: Text("Sometimes")),
                    DropdownMenuItem(value: 2, child: Text("Frequently")),
                    DropdownMenuItem(value: 3, child: Text("Mostly")),
                    DropdownMenuItem(value: 4, child: Text("Always")),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: ElevatedButton(
          onPressed: () {
            int totalScore = _scores.reduce((a, b) => a + b);
            String classification;
            if (totalScore < 70) {
              classification = "No Autism";
            } else if (totalScore >= 70 && totalScore <= 106) {
              classification = "Mild Autism";
            } else if (totalScore >= 107 && totalScore <= 153) {
              classification = "Moderate Autism";
            } else {
              classification = "Severe Autism";
            }
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Results", style: TextStyle(fontSize: 18)),
                  content: Text("Total Score: $totalScore\nClassification: $classification"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        if (classification!= "No Autism") {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => MyForm()),
                          );
                        } else {
                          Navigator.of(context).pop();
                        }
                      },
                      child: Text("OK"),
                    ),
                  ],
                );
              },
            );
          },
          child: Text("Calculate Results", style: TextStyle(fontSize: 16)),
        ),
      ),
    );
  }
}