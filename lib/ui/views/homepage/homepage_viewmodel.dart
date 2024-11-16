import 'package:logger/logger.dart';
import 'package:mimories/app/app.locator.dart';
import 'package:mimories/app/app.logger.dart';
import 'package:mimories/models/user_model.dart';
import 'package:mimories/services/services.dart';
import 'package:stacked/stacked.dart';

enum STATUS { init, loading, success, error }

class HomepageViewModel extends BaseViewModel {
  List<UserModel> _users = [];
  STATUS _status = STATUS.init;
  final logger = getLogger('Home page view model');
  final UserService _usersService = locator<UserService>();

  List<UserModel> get users => _users;
  STATUS get status => _status;

  void fetchUserList() async {
    // fetching users
    _status = STATUS.loading;
    rebuildUi();

    try {
      final result = await _usersService.getUsers();
      _users.addAll(result);
      _status = STATUS.success;
    } catch (e) {
      //catch and log the error
      _status = STATUS.error;
      logger.log(Logger.level, e);
    }

    rebuildUi();
  }
}