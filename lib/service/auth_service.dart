import 'package:dio/dio.dart';
import 'package:exame_flutter/core/config/get_it_config.dart';
import 'package:exame_flutter/model/people_login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';


abstract class AuthService {
  Dio req = Dio();
  late Response response;
  String baseurl = "https://663230d6c51e14d69563a3eb.mockapi.io/LoginPeople";

  Future<bool> logIn(PeopleLoginModel person);
}

class AuthSeviceImp extends AuthService {
  @override
  Future<bool> logIn(PeopleLoginModel person) async {
      try {
      response = await req.post(baseurl, data: person.toMap());
      if (response.statusCode == 201) {
  
         core.get<SharedPreferences>().setString('name',person.name );

        return true;
      } else {
        return false;
      }
    } on DioException catch (e) {
      print(e.message);
      return false;
    }
  }
  
}
