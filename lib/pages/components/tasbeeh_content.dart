import 'package:flutter/material.dart';
import 'package:tasbeeh/models/tasbeeh_state.dart';
import 'package:tasbeeh/pages/components/counter_widget.dart';

class TasbeehContent extends StatelessWidget {
  const TasbeehContent({
    super.key,
    required this.whichOne,
    required this.tasbeeh,
  });

  final String whichOne;
  final TasbeehState tasbeeh;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          whichOne,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: 'ScheherazadeNew',
            fontSize: 25,
          ),
        ),
        CounterWidget(tasbeeh: tasbeeh),
        const SizedBox(height: 60),
      ],
    );
  }
}
