import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviiie/app/ui/screens/home/home_screen_view_model.dart';
import 'package:moviiie/app/ui/widget/home/movie_item.dart';
import 'package:moviiie/domain/bloc/home/home_bloc.dart';
import 'package:moviiie/domain/bloc/home/home_state.dart';
import 'package:moviiie/library/resource/typography.dart';

class HomeScreen extends StatefulWidget {
  final HomeScreenViewModel viewModel;
  const HomeScreen({super.key, required this.viewModel});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp){
      widget.viewModel.fetchTrendingMovies(context);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Trending 🔥🔥🔥',style: AppTypography.title,),
            SizedBox(height: 16,),
            BlocBuilder<HomeBloc, HomeState>(
              builder:(context,state) {
                if(state is FetchedTrendingMoviesHomeState){
                  return Expanded(
                    child: ListView.separated(
                      itemCount: state.movies.length,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (BuildContext context, int index) => SizedBox(height: 8),
                      itemBuilder: (BuildContext context, int index) {
                        final movie = state.movies[index];
                        print(movie);
                        return MovieItem(movie: movie);
                      },
                    ),
                  );
                }
                return Center(child: CircularProgressIndicator(),);
              }
            ),
          ],
        )
      ),
    );
  }
}
