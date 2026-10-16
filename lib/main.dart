import 'package:easylearn/bloc.dart';
import 'package:easylearn/common/utils/app_routes.dart';
import 'package:easylearn/common/utils/kstrings.dart';
import 'package:easylearn/even.dart';
import 'package:easylearn/pages/splashscreen/views/splashscreen_screen.dart';
import 'package:easylearn/pages/welcome/bloc/welcome_bloc.dart';
import 'package:easylearn/pages/welcome/welcome.dart';
import 'package:easylearn/state.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(providers: [
            BlocProvider(
            create: (context) => WelcomeBloc(),
            ),
          BlocProvider(
            create: (context) => AppBlocs(),
          )
        ],
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: AppText.kAppName,
            theme: ThemeData(
              appBarTheme: AppBarTheme(
                backgroundColor: Colors.white,
              ),
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            ),
           routerConfig: router,
          ),

        );
      },
      child: SplashScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: BlocBuilder<AppBlocs, AppStates>(
          builder: (context, state) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('You have pushed the button this many times:'),
              Text(
                '${context.watch<AppBlocs>().state.counter}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<AppBlocs>().add(Increments());
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<AppBlocs>().add(Decrement());
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
