import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // stateless widgets are immutable
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: const Center(
            // no const preceding Center as now val dependent
            // on variable
            child: RandomWords()),
      ),
    );
  }
}

// This stateful (dynamic) portion generates random words to display as
// immutable text above on every refresh / hot reload of the app
class RandomWords extends StatefulWidget {
  // stateful widgets are dynamic
  const RandomWords({super.key});

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random(); //initiate word pairs
    return Text(wordPair.asPascalCase); // 'method' on wordpair object
    // Pascal case / upper camel case makes first letter of each word
    // capital
  }
}
