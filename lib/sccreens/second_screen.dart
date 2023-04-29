import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session_6/Services/Sp_Services/cashe_helper.dart';
import 'package:session_6/cubit/adduser_cubit.dart';
import 'package:session_6/sccreens/first_screen.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocConsumer<AdduserCubit, AdduserState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'hello  ' +AdduserCubit.get(context).username(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                    onPressed: () {
                      SharedPreferencesHelper.removeData(key: 'k');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FirstScreen(),
                          ));
                    },
                    child: const Text('log out'))
              ],
            ),
          ),
        );
      },
    );
  }
}
