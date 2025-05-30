import 'package:moviiie/domain/entities/token_data.dart';

abstract class TokenRepository{
  Future<TokenData?> getToken();

  Future<String> getBearerToken();

  // Future<TokenData> refreshToken(TokenData token);
  //
  // Future<void> saveToken(TokenData token);
  //
  // Future<void> deleteToken();
}