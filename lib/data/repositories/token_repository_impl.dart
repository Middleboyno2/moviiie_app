
import 'package:injectable/injectable.dart';
import 'package:moviiie/domain/entities/token_data.dart';
import 'package:moviiie/domain/repositories/token_repository.dart';

@Singleton(as: TokenRepository)
class TokenRepositoryImpl implements TokenRepository{

  @override
  Future<TokenData?> getToken() async {
    // generate from https://www.themoviedb.org/settings/api
    const accessToken = 'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJlNjg2MmQ1ZWJmY2IyNGJlOWEwOWI1ZWFiNWJjODdjMyIsIm5iZiI6MTc0ODQyMDMzMC4yMzcsInN1YiI6IjY4MzZjNmVhNzAzMTVmMzQ4MTJiN2UyMiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.umKCSuFnfRTxnQtfPsjhz5656qhYvQfMMigdOzZg1jc';
    const refreshToken = '';
    return const TokenData(
      accessToken: accessToken,
      refreshToken: refreshToken
    );
  }

  @override
  Future<String> getBearerToken() async {
    const accessToken = 'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJlNjg2MmQ1ZWJmY2IyNGJlOWEwOWI1ZWFiNWJjODdjMyIsIm5iZiI6MTc0ODQyMDMzMC4yMzcsInN1YiI6IjY4MzZjNmVhNzAzMTVmMzQ4MTJiN2UyMiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.umKCSuFnfRTxnQtfPsjhz5656qhYvQfMMigdOzZg1jc';
    const refreshToken = '';
    return 'Bearer $accessToken';
  }
}