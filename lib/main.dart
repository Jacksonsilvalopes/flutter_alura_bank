import 'package:alurabank/screens/home.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(DevicePreview(builder: (context) {
    return const Alurabank();
  }));
}

class Alurabank extends StatelessWidget {
  const Alurabank({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),

      debugShowCheckedModeBanner: false,

      title: 'Alubank',
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
