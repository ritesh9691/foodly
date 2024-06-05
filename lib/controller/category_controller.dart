import 'package:get/get.dart';

class CategoryController extends GetxController{
  /// to  update the category value
    RxString _category = "".obs;

    String get categoryvalue => _category.value;

    set updateCategory(String value) {
      _category.value = value;
    }

    /// to upadate the title of the category
    RxString _title = "".obs;

    String get Titlevalue => _title.value;

    set updateTitle(String value) {
      _title.value = value;
    }
}