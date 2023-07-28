import 'package:flutter/material.dart';
import 'package:medlogs/home.dart';
import 'package:medlogs/login_page.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'models/ModelProvider.dart';
import 'amplifyconfiguration.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    bool _amplifyConfigured = false;
@override
  void initState() {
 
        super.initState();
    _configureAmplify();
  }
  //const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      home: LoginPage()
    );
  }

    void _configureAmplify() async {


    await Amplify.addPlugin(AmplifyDataStore(modelProvider: ModelProvider.instance));

    await Amplify.configure(amplifyconfig);
    try {
      setState(() {
        _amplifyConfigured = true;
      });
    } catch (e) {
      print(e);
    }
  }
}
