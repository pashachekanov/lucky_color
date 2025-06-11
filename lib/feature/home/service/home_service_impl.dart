import 'dart:math';
import 'dart:ui';

import 'package:lucky_color/feature/home/service/home_service.dart';
import 'package:lucky_color/utils/constants.dart';

/// Implementation for [HomeService]
class HomeServiceImpl implements HomeService {
  @override
  Color generateRandomColor() {
    return Color.fromARGB(
      Constants.alphaValue,
      Random().nextInt(Constants.maxRedIntValue),
      Random().nextInt(Constants.maxGreenIntValue),
      Random().nextInt(Constants.maxBlueIntValue),
    );
  }
}
