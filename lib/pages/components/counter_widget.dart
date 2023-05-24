import 'package:flutter/material.dart';
import 'package:tasbeeh/models/tasbeeh_state.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    super.key,
    required this.tasbeeh,
  });

  final TasbeehState tasbeeh;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tasbeeh.increment();
      },
      child: Container(
        width: 250,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(130),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 10,
              spreadRadius: 10,
              color: Colors.black54,
              blurStyle: BlurStyle.outer,
            ),
          ],
        ),
        child: Center(
          child: Text(
            tasbeeh.counter.toString(),
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
