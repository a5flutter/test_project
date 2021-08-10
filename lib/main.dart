import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_pr/bloc/file_bloc/file_bloc.dart';
import 'package:test_pr/ui/home_screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FileBloc()),
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
