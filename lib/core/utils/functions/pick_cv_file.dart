import 'package:file_picker/file_picker.dart';
import 'package:jobseque/core/errors/exception.dart';

Future<PlatformFile?> pickCvFile() async {
  PlatformFile? platformFile;
  FilePickerResult? result = await FilePicker.platform.pickFiles(
      // type: FileType.custom,
      // allowedExtensions: ['pdf'],
      );

  if (result != null) {
    platformFile = result.files.single;
    return platformFile;
  } else {
    throw CanceldExeption();
  }
}
