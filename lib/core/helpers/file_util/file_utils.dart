import 'dart:io';

import 'package:flutter/services.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';

class FileUtils {
  FileUtils._();
  static Future<File?> convertResponseToFile(response,
      [dynamic fileName]) async {
    try {
      final appStorage = await getApplicationDocumentsDirectory();
      final file = File('${appStorage.path}/$fileName.pdf');
      final raf = file.openSync(mode: FileMode.write);
      raf.writeFromSync(response);
      await raf.close();
      return file;
    } on Exception {
      return null;
    }
  }

  static Future<void> openFile(File? file) async {
    OpenFilex.open(file!.path);
  }

  static Future<File> saveUint8ListToFile(
      Uint8List uint8List, String fileName) async {
    final Directory tempDir = await getTemporaryDirectory();

    final File file = File('${tempDir.path}/$fileName');

    return await file.writeAsBytes(uint8List);
  }
}
