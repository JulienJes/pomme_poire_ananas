import 'package:flutter/material.dart';
import 'package:pomme_poire_ananas/list.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liste',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyList(),
    );
  }
}
