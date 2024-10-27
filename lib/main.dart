import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentoracademy/features/home/presentation/views/cubit/cubit.dart';
import 'package:mentoracademy/features/home/presentation/views/cubit/states.dart';
import 'package:mentoracademy/features/splash/presentation/views/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (BuildContext context, HomeStates state) {},
        builder: (BuildContext context, HomeStates state) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Splash(),
          );
        },
      ),
    );
  }
}
