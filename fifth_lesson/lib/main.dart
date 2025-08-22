import 'package:fifth_lesson/text.dart';
import 'package:flutter/material.dart';

void main() =>
    runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListView.builder",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ), 
      debugShowCheckedModeBanner:
          false, 
      
      home: const ListViewBuilder(),
    );
  }
}

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({Key? key})
    : super(key: key); 

  @override
  Widget build(BuildContext context) {
    List<int> numbers = [1, 4, 7, 8, 9, 11, 32];
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView.builder"),
        leading: Icon(Icons.widgets),
        actions: [],
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: const Icon(Icons.list),
            trailing: CustomText(title: 'GFG $index'),
            title: Text("List item $index"),
          );
        },
      ),
    );
  }
}
