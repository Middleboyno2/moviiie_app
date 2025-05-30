
import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviiie/domain/bloc/home/home_event.dart';
import 'package:moviiie/domain/bloc/home/home_state.dart';
import 'package:moviiie/domain/repositories/movie_reponsitory.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState>{
  HomeBloc(
    this._movieRepository
  ):super(InitialHomeState()){
    on<FetchTrendingMoviesHomeEvent>(_onFetchTrendingMovies);
  }
  final MovieRepository _movieRepository;

  FutureOr<void> _onFetchTrendingMovies(
    FetchTrendingMoviesHomeEvent event,
    Emitter<HomeState> emit
  ) async {
    emit(FetchingTrendingMoviesHomeState());
    try{
      final data = await _movieRepository.getTrendingMoviesOfThisWeek();
      log('Request data: $data');
      emit(FetchedTrendingMoviesHomeState(data));
    }on Object catch(_){
      emit(FetchFailTrendingMoviesHomeState());
    }
  }
}