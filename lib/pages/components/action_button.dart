import 'package:flutter/material.dart';
import 'package:tasbeeh/models/tasbeeh_state.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.tasbeeh,
  });

  final TasbeehState tasbeeh;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18.0, right: 10),
      child: GestureDetector(
        onTap: () {
          tasbeeh.makeZero();
        },
        child: Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                blurRadius: 15,
                spreadRadius: 15,
                color: Colors.black54,
                blurStyle: BlurStyle.outer,
              ),
            ],
          ),
          child: const Icon(
            Icons.refresh,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
    );
  }
}
