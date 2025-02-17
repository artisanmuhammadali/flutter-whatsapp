import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);
  static const String id = 'status';
  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Row(
          children: [
            Icon(Icons.arrow_back),
            CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('images/profile.jpeg'),
            ),
          ],
        ),
        title: Text('Muhammad Ali'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                    image: AssetImage('images/status.jpg')
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Icon(Icons.arrow_drop_up_outlined , color: Colors.white,),
                  Text('Reply' , style: TextStyle(color: Colors.white),),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
