
import 'package:dio/dio.dart';
import 'package:exame_flutter/model/people_model.dart';

Future<List<PeopleModel>> getPeopleData() async {
  try{
  Dio req = Dio();
  Response response = await req.get("https://664dcb37ede9a2b55654e96c.mockapi.io/api/v1/people");
  print(response);
  List<PeopleModel> user =List.generate(response.data!.length, (index) => PeopleModel.fromMap(response.data![index],));
  print(user);
  return user;

  }
  catch(error)
{
  print('No internet $error');
 return [];
}
}
