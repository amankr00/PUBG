import 'package:flutter/material.dart';

class HoverContainer extends StatefulWidget {
  @override
  _HoverContainerState createState() => _HoverContainerState();
}

class _HoverContainerState extends State<HoverContainer> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: 275,
        height: 100,
        color: _isHovered ? Colors.orange : Color.fromARGB(255, 246, 193, 0),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'PLAY NOW',
            style: TextStyle(
              color: _isHovered ? Colors.white : Color.fromARGB(255, 0, 0, 0),
              fontSize: 25,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}