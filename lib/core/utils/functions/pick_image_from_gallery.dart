import 'package:image_picker/image_picker.dart';

Future<String?> pickImageFromGallery() async {
  final image = await ImagePicker().pickImage(source: ImageSource.gallery);
  if (image == null) return null;
  final imageFilePath = image.path;
  return imageFilePath;
}
