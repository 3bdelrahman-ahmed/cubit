import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session_6/cubit/adduser_cubit.dart';
import 'package:session_6/sccreens/first_screen.dart';

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: FirstScreen(),
        );
      }
    
  }

