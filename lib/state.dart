class AppStates {
  int counter;
  // here, we are just declaring the variable.
  AppStates({required this.counter});
}
class InitStates extends AppStates{
  // here, we have to initialize the counter variable.
  InitStates(): super(counter: 5);
}
