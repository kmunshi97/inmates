export 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ImageHelper {
  Future<String> assetImageExists(String imagePath, String alternateImagePath) {
    final String defaultImagePath = 'assets/images/dormitory.png';

    if (alternateImagePath == null || alternateImagePath.isEmpty) {
      alternateImagePath = defaultImagePath;
    }

    return rootBundle
        .load(imagePath)
        .then((value) => imagePath)
        .catchError((onError) => alternateImagePath);
  }
}
