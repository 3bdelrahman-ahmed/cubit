import 'package:flutter/material.dart';
import 'package:session_6/Services/Sp_Services/cashe_helper.dart';
import 'package:session_6/Src/root_app.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
 WidgetsFlutterBinding.ensureInitialized();
 await SharedPreferencesHelper.init();
  runApp(RootApp());
}

