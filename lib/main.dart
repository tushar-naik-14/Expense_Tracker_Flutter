import 'package:bloc/bloc.dart';
import 'package:expenses_tracker/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'simple_bloc_observer.dart';

void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
       apiKey:"AIzaSyBtOhXKld5eZmfkZlBQxQ7QcdY54neOrG8 ",
       appId:"1:732666416158:android:1d38fb7ee10ccd5bc0f20f",
       messagingSenderId:"2010326977",
       projectId:"expense-tracker-8d507",
    ),
  );
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}