import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';
import 'package:mimories/app/app.locator.dart';
import 'package:mimories/app/app.logger.dart';
import 'package:mimories/models/user_model.dart';
import 'package:mimories/services/services.dart';
import 'package:stacked/stacked.dart';

enum STATUS { init, loading, success, error }

class HomepageViewModel extends BaseViewModel {
  List<UserModel> users = [];
  STATUS status = STATUS.init;
  final logger = getLogger('Home page view model');
  final UserService _usersService = locator<UserService>();

  void fetchUserList() async {
    // fetching users
    status = STATUS.loading;
    rebuildUi();

    try {
      final result = await _usersService.getUsers();
      users.addAll(result);
      status = STATUS.success;
    } catch (e) {
      //catch and log the error
      status = STATUS.error;
      logger.log(Logger.level, e);
    }

    rebuildUi();
  }
}
