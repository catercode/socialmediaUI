import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const CaterCode());
  }
}

class CaterCode extends StatefulWidget {
  const CaterCode({Key? key}) : super(key: key);

  @override
  State<CaterCode> createState() => _CaterCodeState();
}

class _CaterCodeState extends State<CaterCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(
          Icons.camera_alt,
          color: Colors.black,
        ),
        title: const Text('CaterCode'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.black,
              child: Text('3'),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 8, right: 8),
            child: Row(
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  backgroundImage: AssetImage('assets/images/profile_img.jpg'),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Waltme',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                Spacer(),
                Icon(Icons.menu)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: AssetImage('assets/images/profile_img.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Icon(Icons.favorite_outline_outlined),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.comment),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.send_sharp),
                Spacer(),
                Icon(Icons.bookmark_border_outlined)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  '76 Likes',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                    'The kinship that a small child experiences with thier grandparent. The kinship that a small child experiences with thier grandparent,'),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'View all 5 comments,',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                    'The kinship that a small child experiences with thier grandparent.The kinship that a small child experiences with thier grandparent. The kinship that a small child experiences with thier grandparent,'),
              ],
            ),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
