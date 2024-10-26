import 'package:flutter/material.dart';

class PortionCounter extends StatefulWidget {
  @override
  _PortionCounterState createState() => _PortionCounterState();
}

class _PortionCounterState extends State<PortionCounter> {
  int _portionCount = 2; 

  void _increment() {
    setState(() {
      _portionCount++;
    });
  }

  void _decrement() {
    if (_portionCount > 1) {
      setState(() {
        _portionCount--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150, 
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5), 
        borderRadius: BorderRadius.circular(10), 
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: const Icon(
              Icons.remove,
              size: 34,
              color: Color.fromARGB(221, 40, 36, 36),
            ),
            onPressed: _decrement,
          ),
          Text(
            "$_portionCount", 
            style: const TextStyle(fontSize: 34, color: Colors.white), 
          ),
          IconButton(
            icon: const Icon(
              Icons.add,
              size: 34,
              color: Colors.red,
            ),
            onPressed: _increment,
          ),
        ],
      ),
    );
  }
}
