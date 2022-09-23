import 'package:flutter/material.dart';
class Exercises extends StatelessWidget {

  final String logo ;
  final String title ;
  final String subtitle;
  Exercises({required this.title,required this.logo,required this.subtitle});



  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(child: Text('$logo'),
        padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.blue[400],
          borderRadius: BorderRadius.circular(13),
      ),
      ),
      SizedBox(width: 9,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text('$title',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
        Text('$subtitle',style: TextStyle(fontSize: 15,color: Colors.grey[500]),),
      ],
        ),
      ],);
  }
}
