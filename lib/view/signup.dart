import 'package:firebase/controller/auth_controller.dart';
import 'package:firebase/view/login.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.network('https://cdn.dribbble.com/users/4662362/screenshots/15298845/illustration.png'),

           const Text('SIGN UP',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),

          const SizedBox(
            height: 5,
          ),

            Padding(
             padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 20),
             child: TextField(
               controller: emailController,
              decoration:  InputDecoration(
                prefixIcon: const Icon(Icons.person),
                  border:   OutlineInputBorder(
                    borderRadius:  BorderRadius.circular(30
                    ),
                  ),
                  filled: true,
                  hintStyle:  const TextStyle(color: Colors.grey),
                  hintText: "Enter Your Name",
                  fillColor: Colors.white70),
          ),
           ),

           Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 20),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              decoration:  InputDecoration(
                  suffixIcon: const Icon(Icons.remove_red_eye,color: Colors.grey),
                  prefixIcon: const Icon(Icons.lock),
                  border:   OutlineInputBorder(
                    borderRadius:  BorderRadius.circular(30
                    ),
                  ),
                  filled: true,
                  hintStyle: const TextStyle(color: Colors.grey),
                  hintText: "Enter Your Password",
                  fillColor: Colors.white70),
            ),
          ),

           Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 20),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              decoration:  InputDecoration(
                  suffixIcon: const Icon(Icons.remove_red_eye,color: Colors.grey),
                  prefixIcon: const Icon(Icons.lock),
                  border:   OutlineInputBorder(
                    borderRadius:  BorderRadius.circular(30
                    ),
                  ),
                  filled: true,
                  hintStyle: const TextStyle(color: Colors.grey),
                  hintText: "Re-enter Your Password",
                  fillColor: Colors.white70),
            ),
          ),

          const SizedBox(
            height: 5,
          ),

          GestureDetector(
            onTap: (){
              AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.yellow[500],
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 50,
                width: 350,
                child: const  Center(child: Text('SIGN UP',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Text("Already have an Account ?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));
              }, child: const Text('Login',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),))
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Divider(color: Colors.black,thickness: 20,),
              Text('OR'),
              Divider(color: Colors.black,),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Image.network('https://allaboutbasic.files.wordpress.com/2018/03/social-icons-in-the-sidebar.jpg'),
            ),
          )
          
        ],
      ),
    );
  }
}
