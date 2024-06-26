// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class DisplayPsychiatrist extends StatefulWidget {
//   @override
//   _DisplayPsychiatristState createState() => _DisplayPsychiatristState();
// }
//
// class _DisplayPsychiatristState extends State<DisplayPsychiatrist> {
//   final CollectionReference _psychiatristsCollection =
//   FirebaseFirestore.instance.collection('psychiatrists');
//
//   String _searchQuery = '';
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
//         title: Text('Psychiatrists List'),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               decoration: InputDecoration(
//                 labelText: 'Search',
//                 prefixIcon: Icon(Icons.search),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//               ),
//               onChanged: (value) {
//                 setState(() {
//                   _searchQuery = value.toLowerCase();
//                 });
//               },
//             ),
//           ),
//           Expanded(
//             child: StreamBuilder<QuerySnapshot>(
//               stream: _psychiatristsCollection.snapshots(),
//               builder: (context, snapshot) {
//                 if (snapshot.hasError) {
//                   return Center(child: Text('Error: ${snapshot.error}'));
//                 }
//
//                 if (snapshot.connectionState == ConnectionState.waiting) {
//                   return Center(child: CircularProgressIndicator());
//                 }
//
//                 final data = snapshot.requireData;
//
//                 final filteredData = data.docs.where((doc) {
//                   return doc['name'].toString().toLowerCase().contains(_searchQuery) ||
//                       doc['email'].toString().toLowerCase().contains(_searchQuery) ||
//                       doc['phone'].toString().toLowerCase().contains(_searchQuery) ||
//                       doc['address'].toString().toLowerCase().contains(_searchQuery);
//                 }).toList();
//
//                 return ListView.builder(
//                   itemCount: filteredData.length,
//                   itemBuilder: (context, index) {
//                     var psychiatrist = filteredData[index];
//                     return ListTile(
//                       title: Text(psychiatrist['name']),
//                       subtitle: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text('Email: ${psychiatrist['email']}'),
//                           Text('Phone: ${psychiatrist['phone']}'),
//                           Text('Address: ${psychiatrist['address']}'),
//                         ],
//                       ),
//                     );
//                   },
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DisplayPsychiatrist extends StatefulWidget {
  @override
  _DisplayPsychiatristState createState() => _DisplayPsychiatristState();
}

class _DisplayPsychiatristState extends State<DisplayPsychiatrist> {
  final CollectionReference _psychiatristsCollection =
  FirebaseFirestore.instance.collection('psychiatrists');

  String _searchQuery = '';

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
        title: Text('Psychiatrists List'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  _searchQuery = value.toLowerCase();
                });
              },
            ),
          ),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: _psychiatristsCollection.snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }

                final data = snapshot.requireData;

                final filteredData = data.docs.where((doc) {
                  return doc['name'].toString().toLowerCase().contains(_searchQuery) ||
                      doc['email'].toString().toLowerCase().contains(_searchQuery) ||
                      doc['phone'].toString().toLowerCase().contains(_searchQuery) ||
                      doc['address'].toString().toLowerCase().contains(_searchQuery);
                }).toList();

                return ListView.builder(
                  itemCount: filteredData.length,
                  itemBuilder: (context, index) {
                    var psychiatrist = filteredData[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  psychiatrist['name'],
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text('Email: ${psychiatrist['email']}'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text('Phone: ${psychiatrist['phone']}'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text('Address: ${psychiatrist['address']}'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
