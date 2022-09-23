import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentalhelth_app/emoji.dart';
import 'package:mentalhelth_app/exercises.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favorite'),
        BottomNavigationBarItem(icon: Icon(Icons.chat),label: 'Chat'),
      ]),
     backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 25,left: 25,right: 25),
              child:  Column(

                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hi, Abdo !',style: TextStyle(color:Colors.white,fontSize: 24,fontWeight:FontWeight.bold),),
                          SizedBox(height: 7,),
                          Text('12 jan 2022',style: TextStyle(color: Colors.white54),)
                        ],
                      ),

                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(13)
                          ),
                          padding: EdgeInsets.all(9),

                          child:
                          Icon(Icons.notifications,color: Colors.blue[800],)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    style: TextStyle(fontSize: 18),
                    decoration: InputDecoration(

                      hintText: 'Search...',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('How do you feel ?',style: TextStyle(color:Colors.white,fontSize: 19,fontWeight:FontWeight.bold),),
                      Text('...',style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),)
                    ],),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      emojiTypes(emoje: '😢',txtemoje: 'Badly',),
                      emojiTypes(emoje: '🙂', txtemoje: 'Fine'),
                      emojiTypes(emoje: '😁', txtemoje: 'well'),
                      emojiTypes(emoje: '🥰', txtemoje: 'Execellent'),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
                child:
                Container(color:Colors.white,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Exercices..',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold)),Text('...'),
                        ],

                      ),
                        Expanded(
                          child: ListView(

                            scrollDirection: Axis.vertical,
                            children: [
                            Exercises(title: 'Speaking Skills',logo: "Ex1",subtitle: "16 Exercise",),
                              SizedBox(height: 10,),
                              Exercises(title: 'Reading Skills',logo: "EX2",subtitle: "14 Exercise",),
                              SizedBox(height: 10,),
                              Exercises(title: 'Playing Tools',logo: "fun",subtitle: "12 Exercise",),
                              SizedBox(height: 10,),
                              Exercises(title: 'Math Skills',logo: "Ex3",subtitle: "11 Exercise",),
                              SizedBox(height: 10,),
                              Exercises(title: 'Bio Skills',logo: "Ex4",subtitle: "4 Exercise",),
                              SizedBox(height: 10,),
                              Exercises(title: 'Tools Helper',logo: "fun",subtitle: "3 Exercise",),
                              SizedBox(height: 10,),
                              Exercises(title: 'Playing Tools',logo: "fun",subtitle: "7 Exercise",),
                          ],),
                        ),

                      ],

                    ),
                  ),
                ),)),


           ],),
      ),
    );
  }
}
