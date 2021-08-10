import 'dart:math';

import 'package:test_pr/model/file.dart';

abstract class IFileService {
  Future<List<File>> getFiles();

  File addFile(List<File> files);
}

class FileService extends IFileService {
  @override
  Future<List<File>> getFiles() async {
    List<File> result = [];
      Random rng = Random();
      for (var i = 0; i < 20; i++) {
        result.add(File(name: 'Item $i', size: rng.nextDouble() * 10));
      }
    return result;
  }

  @override
  File addFile(List<File> files) {
    Random rng = Random();
    return File(name: 'Item ${files.length}', size: rng.nextDouble() * 10);
  }
}