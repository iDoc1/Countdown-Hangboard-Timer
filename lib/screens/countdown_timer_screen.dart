import 'package:flutter/material.dart';
import '../widgets/timer_details.dart';
import '../widgets/timer_control_buttons.dart';

/// Provides a layout for the countdown timer, timer details, and timer control
/// buttons. Contains the state variable necessary to start a countdown timer.
class CountdownTimerScreen extends StatefulWidget {
  final Duration workDuration;
  final Duration restDuration;
  final Duration breakDuration;

  const CountdownTimerScreen(
      {super.key,
      required this.workDuration,
      required this.restDuration,
      required this.breakDuration});

  @override
  State<CountdownTimerScreen> createState() => _CountdownTimerScreenState();
}

class _CountdownTimerScreenState extends State<CountdownTimerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer'),
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 18,
              child: TimerDetails(
                workDuration: widget.workDuration,
                restDuration: widget.restDuration,
                breakDuration: widget.breakDuration,
              ),
            ),
            const Flexible(
              flex: 60,
              child: Placeholder(child: Text('Timer Here')),
            ),
            const Flexible(
              flex: 22,
              child: TimerControlButtons(),
            ),
          ],
        ),
      ),
    );
  }
}
