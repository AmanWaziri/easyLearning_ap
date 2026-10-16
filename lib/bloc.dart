import 'package:flutter_bloc/flutter_bloc.dart';
import '../even.dart';
import '../state.dart';


class AppBlocs extends Bloc<AppEvents, AppStates>{
  AppBlocs(): super(InitStates()){
    on<Increments>((event, ask){
      ask(AppStates(counter: state.counter + 1));
    });
    on<Decrement>((event, ask){
      ask(AppStates(counter: state.counter - 1));
    });
  }
}