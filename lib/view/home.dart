import 'package:firebase/view/signup.dart';
import 'package:firebase/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.network('https://media.architecturaldigest.com/photos/59ef9c41ce2a2e6477d9a69a/master/pass/lightbulb-on-off-tout.gif',scale: 2.3,),
            ]
          ),

          const SizedBox(
            height: 50,
          ),

          Row(
            children: const [
              SizedBox(
                width: 60,
              ),
              Image(image: NetworkImage('https://www.clipartmax.com/png/full/144-1449922_businessman-free-icon-freelancer-icon-png.png',scale: 1.8)),
            ],
          ),

          const SizedBox(
            height: 60,
          ),

         GestureDetector(
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));
           },
           child: Container(
             height: 50,
             width: 300,
             child: const  Center(child: Text('LOGIN',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
             decoration: BoxDecoration(
               color: Colors.blue[200],
               borderRadius: BorderRadius.circular(20),
             ),
           ),
         ),

          const SizedBox(
            height: 30,
          ),

          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Signup()));
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.yellow[500],
                borderRadius: BorderRadius.circular(20),
              ),
              height: 50,
              width: 300,
              child: const  Center(child: Text('SIGN UP',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
            ),
          ),



        ],
      ),
    );
  }
}
