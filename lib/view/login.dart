import 'package:firebase/view/signup.dart';
import 'package:firebase/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [

          const SizedBox(
            height: 100,
          ),

          Image.network('https://www.streetas.com/images/candidate-login.png'),

          const SizedBox(
            height: 30,
          ),

          const Text('LOGIN',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),

          const SizedBox(
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
            child: TextField(
              decoration:  InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  border:   OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  hintStyle:  const TextStyle(color: Colors.grey),
                  hintText: "Enter Your Name",
                  fillColor: Colors.white70),
            ),
          ),

           Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
            child: TextField(
              decoration:  InputDecoration(
                  suffixIcon: const Icon(Icons.remove_red_eye,color: Colors.grey),
                  prefixIcon: const Icon(Icons.lock),
                  border:   OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  hintStyle:  const TextStyle(color: Colors.grey),
                  hintText: "Enter Your Password",
                  fillColor: Colors.white70),
            ),
          ),

          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Backdrop()));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
              child: Container(
                height: 50,
                width: 350,
                child: const  Center(child: Text('LOGIN',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Text("Don't have an Account ?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Signup()));
              }, child:  const Text('Sign Up',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),))
            ],
          ),
        ],
      ),
    );
  }
}
