// import 'package:flutter/material.dart';
// import 'Api_Services.dart';
//
// class PostScreen extends StatefulWidget {
//   @override
//   _PostScreenState createState() => _PostScreenState();
// }
//
// class _PostScreenState extends State<PostScreen> {
//   @override
//   void initState() {
//     getPostApi();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'API Demo',
//           style: TextStyle(fontSize: 30),
//         ),
//         centerTitle: true,
//         foregroundColor: Colors.white,
//         backgroundColor: Colors.pinkAccent[100],
//       ),
//       backgroundColor: Colors.grey,
//       body: ListView.builder(
//         itemCount: samplePosts.length,
//         itemBuilder: (context, index) {
//           return Container(
//                 color: Colors.teal[200],
//              width: double.infinity,
//             margin: EdgeInsets.all(5),
//             padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
//             child: Column(
//               children: [
//                 Row(
//                    children: [
//                     CircleAvatar(
//                       backgroundColor: Colors.pinkAccent[100],
//                       foregroundColor: Colors.white,
//                       radius: 14,
//                       child: Text(
//                         '${samplePosts[index].id}',
//                         style: TextStyle(
//                           fontSize: 18,
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 8),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Title : ${samplePosts[index].title}',
//                             maxLines: 4,
//                              style: TextStyle(fontSize: 18),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 35.0),
//                   child: Text(
//                     'Body : ${samplePosts[index].body}',
//                     maxLines: 8,
//                      style: TextStyle(fontSize: 18),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }





import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Api_Services.dart';

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  void initState() {
    getPostApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'API Demo',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.pinkAccent[100],
      ),
      backgroundColor: Colors.grey,
      body: ListView.builder(
        itemCount: samplePosts.length,
        itemBuilder: (context, index) {
          return Container(
             color: Colors.teal[200],
            width: double.infinity,
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.pinkAccent[100],
                  foregroundColor: Colors.white,
                  radius: 20,
                  child: Text(
                    '${samplePosts[index].id}',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Title : ${samplePosts[index].title}',
                              maxLines: 4,
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              'Body : ${samplePosts[index].body}',
                              maxLines: 7,
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

