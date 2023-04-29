import 'package:flutter/material.dart';
import 'package:session_6/Services/Sp_Services/cashe_helper.dart';
import 'package:session_6/sccreens/second_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirstScreen extends StatefulWidget{
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final _formKey = GlobalKey<FormState>();
  final textinput=TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Form(
        key: _formKey,
        child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: textinput,
            keyboardAppearance: Brightness.light,
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }

    return null;
  },
),
  ElevatedButton(
  onPressed: () {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),

      );
          
      SharedPreferencesHelper.saveData(key: 'k', value: textinput.text);
      Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(),));
    }
  },
  child: const Text('Submit'),
),
        ],
      )
      ),
    );
  }
}