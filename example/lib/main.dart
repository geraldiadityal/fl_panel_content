import 'package:flutter/material.dart';

import 'package:fl_panel_content/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: PanelContent(
                // icon: Icon(Icons.info),
                title: 'Example Title',
                body: Column(
                  children: [
                    Text(
                        "Example Body"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
