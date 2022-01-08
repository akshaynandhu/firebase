import 'package:firebase/view/login.dart';
import 'package:firebase/widgets/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{
  static AuthController instance = Get.find();
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);

    super.onReady();
  }
  _initialScreen(User? user){
    if (user == null){
      print("login page");
      Get.offAll(()=>const Login());
    }
    else{
        Get.offAll(()=>const Backdrop());
      }
  }

  void register(String email, password) async{
    try{
     await auth.createUserWithEmailAndPassword(email: email, password: password);
    }catch(e){
      Get.snackbar("About User", "User Message",
      backgroundColor: Colors.redAccent,
      snackPosition: SnackPosition.BOTTOM,
        titleText: const Text("Account Creation Failed",style: TextStyle(
          color: Colors.white
        ),
        ),
        messageText: Text(e.toString(),style: const TextStyle(
          color: Colors.white
        ),)
      );
    }
  }
}