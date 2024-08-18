 import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';



class SimpleBlocObserver extends BlocObserver {
  @override
    void onChange(BlocBase bloc, Change change) {
    debugPrint('change = $Change');
   
   
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(bloc, error, stackTrace);
  }

 

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    // TODO: implement onChange
  }
}
