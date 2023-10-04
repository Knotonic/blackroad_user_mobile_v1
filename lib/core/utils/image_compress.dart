import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path_provider/path_provider.dart';

class ImageCompress {
  static final ImageCompress _init = ImageCompress._internal();

  factory ImageCompress() {
    return _init;
  }

  ImageCompress._internal();
  double getSize(XFile? image) {
    final bytes = File(image!.path).lengthSync();

    final kb = bytes / 1024;
    final mb = kb / 1024;

    return mb;
  }

//compress the image
  Future<XFile?> compress(XFile? file, String targetPath) async {
    try {
      if (file == null) {
        throw Exception("Something went wrong");
      }

      Uint8List data = await file.readAsBytes();
      var result = await FlutterImageCompress.compressWithList(
        data,
        quality: 80,
      );
      File newFile = await File(file.path).writeAsBytes(result, flush: true);

      return file;
    } catch (e) {
      rethrow;
    }
  }

  Future<XFile?> compressImage(File file) async {
    try {
      XFile? compressImage = XFile(file.path);
      // ignore: unnecessary_null_comparison
      if (compressImage == null) {
        throw Exception("Something went wrong");
      }
      Directory tempDir = await getTemporaryDirectory();
      String tempPath = tempDir.path;
      while (getSize(compressImage) > 1) {
        compressImage = await compress(compressImage, tempPath);
      }
      return compressImage;
    } catch (e) {
      rethrow;
    }
  }
}
