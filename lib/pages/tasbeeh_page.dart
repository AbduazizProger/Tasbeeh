import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasbeeh/models/tasbeeh_state.dart';
import 'package:tasbeeh/pages/components/action_button.dart';
import 'package:tasbeeh/pages/components/tasbeeh_content.dart';

class TasbeehPage extends StatelessWidget {
  const TasbeehPage({super.key});

  @override
  Widget build(BuildContext context) {
    TasbeehState tasbeeh = context.watch<TasbeehState>();
    String whichOne = tasbeeh.whichOne;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasbeeh'),
        centerTitle: true,
      ),
      body: Center(
        child: TasbeehContent(whichOne: whichOne, tasbeeh: tasbeeh),
      ),
      floatingActionButton: ActionButton(tasbeeh: tasbeeh),
    );
  }
}
