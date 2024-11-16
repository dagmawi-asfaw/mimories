import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class NormalFormViewModel extends BaseViewModel {
  String _name = '';

  String get name => _name;

  final TextEditingController _nameController = TextEditingController();

  TextEditingController get nameController => _nameController;

  onNameChanged(value) {
    //Validate Form here
    if (isNameValid(value)) {
      //do sth here
    } else {
      //throw an error here
    }
  }

  bool isNameValid(String value) {
    //validate name field here

    return true;
  }

  onSubmit() {
    //if validated and isValid
    //submit form and call user service to submit the form
  }
}
