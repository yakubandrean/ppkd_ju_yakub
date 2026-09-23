import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';


import '../models/character_model.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'https://thronesapi.com/api/v2/')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('Characters')
  Future<List<Character>> getAllCharacters();
}
