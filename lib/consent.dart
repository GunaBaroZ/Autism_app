// import 'package:flutter/material.dart';
// import 'package:autism_application/psychiatrist_list.dart';
//
// class MyForm extends StatefulWidget {
//   @override
//   _MyFormState createState() => _MyFormState();
// }
//
// class _MyFormState extends State<MyForm> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // A key for managing the form
//
//   String _name = ''; // Variable to store the entered name
//   String _email = ''; // Variable to store the entered email
//   String _location = ''; // Variable to store the entered location
//   String _mobileNumber = ''; // Variable to store the entered mobile number
//
//   void _submitForm() {
//     // Check if the form is valid
//     if (_formKey.currentState!.validate()) {
//       _formKey.currentState!.save(); // Save the form data
//
//       // You can perform actions with the form data here and extract the details
//       print('Name: $_name'); // Print the name
//       print('Email: $_email'); // Print the email
//       print('Location: $_location'); // Print the location
//       print('Mobile Number: $_mobileNumber'); // Print the mobile number
//
//       // Navigate to the PsychiatristList screen
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => DisplayPsychiatrist()),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         title: Text('Consent Form'),
//       ),
//       body: Form(
//         key: _formKey, // Associate the form key with this Form widget
//         child: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: SingleChildScrollView(
//             child: Column(
//               children: <Widget>[
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'Name'), // Label for the name field
//                   validator: (value) {
//                     // Validation function for the name field
//                     if (value!.isEmpty) {
//                       return 'Please enter your name.'; // Return an error message if the name is empty
//                     }
//                   },
//                   onSaved: (value) {
//                     _name = value!; // Save the entered name
//                   },
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'Email'), // Label for the email field
//                   validator: (value) {
//                     // Validation function for the email field
//                     if (value!.isEmpty || !value.contains('@')) {
//                       return 'Please enter a valid email.'; // Return an error message if the email is invalid
//                     }
//                   },
//                   onSaved: (value) {
//                     _email = value!; // Save the entered email
//                   },
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'Location'), // Label for the location field
//                   validator: (value) {
//                     // Validation function for the location field
//                     if (value!.isEmpty) {
//                       return 'Please enter your location.'; // Return an error message if the location is empty
//                     }
//                   },
//                   onSaved: (value) {
//                     _location = value!; // Save the entered location
//                   },
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'Mobile Number'), // Label for the mobile number field
//                   validator: (value) {
//                     // Validation function for the mobile number field
//                     if (value!.isEmpty || value.length < 10) {
//                       return 'Please enter a valid mobile number.'; // Return an error message if the mobile number is invalid
//                     }
//                   },
//                   onSaved: (value) {
//                     _mobileNumber = value!; // Save the entered mobile number
//                   },
//                 ),
//                 ElevatedButton(
//                   onPressed: _submitForm,
//                   child: Text('Submit'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:autism_application/psychiatrist_list.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _name = '';
  String _email = '';
  String _location = '';
  String _mobileNumber = '';

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      try {
        await FirebaseFirestore.instance.collection('Consent_Entry').add({
          'name': _name,
          'email': _email,
          'location': _location,
          'mobileNumber': _mobileNumber,
        });

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => DisplayPsychiatrist()),
        );
      } catch (e) {
        print('Error adding user to Firestore: $e');
      }
    }
  }

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
        title: Text('Consent Form'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Name'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name.';
                    }
                  },
                  onSaved: (value) {
                    _name = value!;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (value!.isEmpty || !value.contains('@')) {
                      return 'Please enter a valid email.';
                    }
                  },
                  onSaved: (value) {
                    _email = value!;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Location'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your location.';
                    }
                  },
                  onSaved: (value) {
                    _location = value!;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Mobile Number'),
                  validator: (value) {
                    if (value!.isEmpty || value.length < 10) {
                      return 'Please enter a valid mobile number.';
                    }
                  },
                  onSaved: (value) {
                    _mobileNumber = value!;
                  },
                ),
                ElevatedButton(
                  onPressed: _submitForm,
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
