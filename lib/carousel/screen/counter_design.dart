import 'package:flutter/material.dart';

class CounterDesign extends StatefulWidget {
  const CounterDesign({super.key});

  @override
  State<CounterDesign> createState() => _CounterDesignState();
}

class _CounterDesignState extends State<CounterDesign> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 140.0,
          decoration: BoxDecoration(
              color: Colors.blueGrey[50],
              borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          if (_counter == 20) return;
                          _counter++;
                        });
                      },
                      icon: const Icon(Icons.add, color: Colors.black)),
                  Text(
                    "$_counter",
                    style: const TextStyle(fontSize: 30.0),
                  ),
                  const Expanded(child: Text("")),
                  IconButton(
                    icon: const Icon(
                      Icons.remove,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        if (_counter == 0) return;
                        _counter--;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        const Expanded(child: Text("")),
        Container(
            child: Text(
          'MXN ${_counter * 10}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        )),
      ],
    );
  }
}
