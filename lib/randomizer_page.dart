import 'package:flutter/material.dart';

class RandomizerPage extends StatefulWidget {
  final int min, max;
  const RandomizerPage({
    super.key,
    required this.min,
    required this.max,
  });

  @override
  State<RandomizerPage> createState() => _RandomizerPageState();
}

class _RandomizerPageState extends State<RandomizerPage> {
  @override
  Widget build(BuildContext context) {
    widget.min;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Randomizer'),
      ),
    );
  }
}
