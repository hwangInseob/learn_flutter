import 'package:flutter/material.dart';

class ListGeneratePage extends StatelessWidget {
  static final routeName = '/listGenerate';
  static final routeTitle = 'List.generate';
  const ListGeneratePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(routeTitle),
      ),
      body: Column(
        // List.generate( itemLength, (index) => (Widget);
        children: List.generate(
          10,
              (index) => Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 30,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Text(
                index.toString(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
