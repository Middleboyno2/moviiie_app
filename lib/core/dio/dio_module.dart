import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:moviiie/core/dio/api_interceptor.dart';
import 'package:moviiie/domain/repositories/token_repository.dart';

final _baseUrl = "https://api.themoviedb.org/3";
const _requestTimeOut = Duration(seconds: 7);

@module
abstract class DioModule{
  @singleton
  Dio getAuthorizedDioClient(TokenRepository tokenRepository){
    final dioClient = _dioClient();
    dioClient.interceptors.addAll([
      AuthorizedRequestInterceptor(tokenRepository)
    ]);
    return dioClient;
  }
  @Named('Unauthorized')
  @singleton
  Dio getUnauthorizedDioClient(){
    final dioClient = _dioClient();
    dioClient.interceptors.addAll([
      UnauthorizedRequestInterceptor(),
    ]);
    return dioClient;
  }

  Dio _dioClient(){
    final baseOption = BaseOptions(
      baseUrl: _baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: _requestTimeOut,
      receiveTimeout: _requestTimeOut
    );
    return Dio(baseOption);
  }
}