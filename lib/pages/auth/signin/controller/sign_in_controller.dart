import 'package:easylearn/pages/auth/signin/bloc/signin_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInController {
  final BuildContext context;

  SignInController({required this.context});

  void handleSignIn(String type) async {
    // 1st try catch class
    try {
      if (type == "email") {
        final state = context
            .read<SignInBloc>()
            .state;
        final String emailAddress = state.email;
        final password = state.password;
        if (emailAddress.isEmpty) {
          //TODO:: PRESETNING EMPTY EMAIL MESSAGE
        }
        if (password.isEmpty) {
          //TODO:: PRESENTING EMPTY PASSWORD MESSAGE.
        }
        // another try catch class
        try {
          final credential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(
              email: emailAddress, password: password);
          if(credential.user == null){
            //TODO:: not found
          }
          if(!credential.user!.emailVerified){
            //TODO:: email is not verified
          }
          var user = credential.user;
          if(user != null){
            // user verified from Firebase
          }else{
            // Error getting user from Firebase.
          }
        } catch (e) {

        }
      }
    } catch (e) {

    }
  }
}