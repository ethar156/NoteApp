// ignore_for_file: always_specify_types

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';



 class SimpleBlocObserver extends BlocObserver {

  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('change = $change');
  
  }
  @override
  void onClose(BlocBase bloc) {
    debugPrint('close = $bloc');
  }  

  @override
  void onCreate(BlocBase bloc) {
     debugPrint('create = $bloc');
    
  } 
 
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    
  }
 
 
  @override
  void onEvent(Bloc bloc, Object? event) {
   
  
  } 
  }
