import 'package:flutter/material.dart';

class Numbersdemo extends StatefulWidget {
  final int initialvalue;
  final int min;
  final int max;
  final int step;
  final Function(int) onchanged;

  const Numbersdemo(
      {super.key,
      required this.initialvalue,
      required this.min,
      required this.max,
      required this.step,
      required this.onchanged});

  @override
  State<Numbersdemo> createState() => _NumbersdemoState();
}

class _NumbersdemoState extends State<Numbersdemo> {
  int _currentvalue = 0;
  @override
  void initState() {
    super.initState();
    _currentvalue = widget.initialvalue;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              setState(() {
                if (_currentvalue > widget.min) {
                  _currentvalue -= widget.step;
                }
                widget.onchanged(_currentvalue);
              });
            },
            icon: Icon(Icons.remove_circle)),
        Text(_currentvalue.toString()),
        IconButton(
            onPressed: () {
              setState(() {
                if (_currentvalue < widget.max) {
                  _currentvalue += widget.step;
                }
                widget.onchanged(_currentvalue);
              });
            },
            icon: Icon(Icons.add_circle))
      ],
    );
  }
}
