import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Custom Widget'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

const kheight = SizedBox(
  height: 10,
);

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            CustomWidget(text: 'Container 1'),
            kheight,
            CustomWidget(text: 'Container 2'),
            kheight,
            CustomWidget(text: 'Container 3'),
            kheight,
            CustomWidget(text: 'Container 4'),
            kheight,
            CustomWidget(text: 'Container 5'),
            kheight,
            CustomWidget(text: 'Container 6'),
            kheight,
            CustomWidget(text: 'Container 7'),
            kheight,
            CustomWidget(text: 'Container 8'),
            kheight,
            CustomWidget(text: 'Container 9'),
            kheight,
          ],
        ),
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  final String text;
  const CustomWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 14, 13, 13),
              Color.fromARGB(255, 83, 83, 83)
            ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
