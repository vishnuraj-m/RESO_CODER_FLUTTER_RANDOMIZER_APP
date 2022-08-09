import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_foundations/randomizer_change_notifier.dart';
import 'package:provider/provider.dart';

class RandomizerPage extends StatelessWidget {
  const RandomizerPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Randomizer'),
      ),
      body: Center(child: Consumer<RandomizerChangeNotifier>(
        builder: (context, notifier, child) {
          return Text(
            notifier.generatedNumber?.toString() ?? 'Generate a Number',
            style: const TextStyle(fontSize: 42),
          );
        },
      )),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Generate'),
        onPressed: () {
          context.read<RandomizerChangeNotifier>().generateRandomNumber();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
