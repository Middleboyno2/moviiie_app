import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviiie/domain/bloc/home/home_bloc.dart';
import 'package:moviiie/domain/bloc/home/home_event.dart';

class HomeScreenViewModel{
  void fetchTrendingMovies(BuildContext context){
    context.read<HomeBloc>().add(FetchTrendingMoviesHomeEvent());
  }
}