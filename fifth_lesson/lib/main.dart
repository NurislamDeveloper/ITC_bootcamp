import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DemoListView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DemoListView extends StatelessWidget {
  const DemoListView({super.key});

  // Dart collections
  final List<String> fruits = const ['Apple', 'Banana', 'Cherry', 'Mango'];
  final Set<String> colors = const {'Red', 'Green', 'Blue', }; // Set removes duplicates
  final Map<String, String> capitals = const {
    'USA': 'Washington, D.C.',
    'France': 'Paris',
    'Japan': 'Tokyo',
  };

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ListView demo'),
          bottom: const TabBar(tabs: [
            Tab(text: 'List'),
            Tab(text: 'Set'),
            Tab(text: 'Map'),
          ]),
        ),
        body: TabBarView(
          children: [
            // 1) List<String>
            ListView.builder(
              itemCount: fruits.length,
              itemBuilder: (context, i) => ListTile(
                leading: CircleAvatar(child: Text('${i + 1}')),
                title: Text(fruits[i]),
              ),
            ),

            // 2) Set<String>  -> convert to list
            ListView.builder(
              itemCount: colors.length,
              itemBuilder: (context, i) {
                final items = colors.toList(); // make it indexable
                return ListTile(title: Text(items[i]));
              },
            ),

            // 3) Map<String, String> -> iterate entries
            ListView.builder(
              itemCount: capitals.length,
              itemBuilder: (context, i) {
                final entry = capitals.entries.toList()[i];
                return ListTile(
                  title: Text(entry.key),
                  subtitle: Text(entry.value),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
