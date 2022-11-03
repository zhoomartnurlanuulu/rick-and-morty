import 'package:dio/dio.dart';

class CharactersRepo {
  CharactersRepo({required this.dio});
  final Dio dio;
  Future<Response> getCharacters({String? name, int? currentPage}) async {
    return await dio.get(
      'character',
      queryParameters: {'name': name, 'page': currentPage},
    );
  }

  Future<Response> searchCharacters(
      {String? name, int? page}) async {
    return await dio.get(
      'character',
      queryParameters: {'name': name,'page':page},
    );
  }
}
