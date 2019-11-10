import 'package:mobx/mobx.dart';
import 'package:mvvm_mobx/core/config/ApiClient.dart';
import 'package:mvvm_mobx/core/models/user_model.dart';
part 'user_mobx.g.dart';
class UserMobx = _UserMobx with _$UserMobx;

abstract class _UserMobx with Store {
    @observable
    User user;
  
    @action
    Future getUser(int value) async {
      var jsonObject = await ApiClient.getUser(value.toString());
      var userData = (jsonObject as Map<String, dynamic>)['data'];
      user = User.fromJson(userData);

    }
}