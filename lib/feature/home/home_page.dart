import 'package:flutter/material.dart';
import 'package:lucky_color/feature/home/service/home_service.dart';
import 'package:lucky_color/feature/home/service/home_service_impl.dart';
import 'package:lucky_color/utils/constants.dart';

/// Widget of [HomePage]
class HomePage extends StatefulWidget {
  /// Constructor for [HomePage]
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _backgroundColor = Colors.white;
  final HomeService _service = HomeServiceImpl();

  Color? _previousColor;
  void _generateColor() {
    setState(() {
      _previousColor = _backgroundColor;
      _backgroundColor = _service.generateRandomColor();
    });
  }

  void _returnPreviousColor() {
    setState(() {
      _backgroundColor = _previousColor ?? Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: _generateColor,
      onHorizontalDragUpdate: (value) {
        const int swipeSensitivity = Constants.swipeSensitivity;
        if (value.delta.dx > swipeSensitivity) {
          _returnPreviousColor();
        }
      },
      child: Scaffold(
        backgroundColor: _backgroundColor,
        body: const Center(
          child: Text(Constants.homeText),
        ),
      ),
    );
  }
}
