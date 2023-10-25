import 'dart:developer';

import 'package:file_picker/file_picker.dart';
import 'package:jobseque/core/errors/exception.dart';

Future<PlatformFile?> pickCvFile() async {
  log('From pickCvFile');
  PlatformFile? platformFile;
  FilePickerResult? result = await FilePicker.platform.pickFiles(
      // type: FileType.any,
      // allowedExtensions: ['pdf'],
      );

  if (result != null) {
    platformFile = result.files.single;
    return platformFile;
  } else {
    throw CanceldExeption();
  }
}
