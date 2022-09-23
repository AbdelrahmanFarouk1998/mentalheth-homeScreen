import 'package:flutter/material.dart';
class emojiTypes extends StatelessWidget {
  final String emoje;
  final String txtemoje;
  const emojiTypes({

    required this.emoje,
    required this.txtemoje,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [Container(
    padding:EdgeInsets.all(12),
    child: Text('$emoje',style: TextStyle(fontSize: 25),),
    decoration: BoxDecoration(
    color: Colors.blue[600],
    borderRadius: BorderRadius.circular(12)
    ),
    ),
    SizedBox(height: 9,),
    Text('$txtemoje',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight:FontWeight.bold),)
   
    ],);
  }
}
