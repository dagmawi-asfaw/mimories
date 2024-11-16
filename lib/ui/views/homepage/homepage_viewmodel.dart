import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';
import 'package:mimories/app/app.locator.dart';
import 'package:mimories/app/app.logger.dart';
import 'package:mimories/services/services.dart';
import 'package:stacked/stacked.dart';

class HomepageViewModel extends BaseViewModel {
  String title = "test";
 final logger = getLogger('Home page view model');
  final UserService _usersService = locator<UserService>();

  void fetchUserList() async{
    final res =await  _usersService.getUsers();
    logger.log(Logger.level,res);

  }
}