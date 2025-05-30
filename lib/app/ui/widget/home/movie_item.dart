import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviiie/domain/entities/movie_data.dart';
import 'package:moviiie/library/resource/colors.dart';

import '../../../../library/resource/typography.dart';

class MovieItem extends StatelessWidget {
  final MovieData movie;
  const MovieItem({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 300,
            width: 200,
            child: Stack(
              children: [
                // poster
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.kGray2,
                          offset: Offset(4.0, 4.0),
                          blurRadius: 15,
                          spreadRadius: 1
                      ),
                      BoxShadow(
                          color: AppColors.kWhite,
                          offset: Offset(-4.0, -4.0),
                          blurRadius: 15,
                          spreadRadius: 1
                      )
                    ],
                  ),
                  child: Image.network(
                    movie.posterUrl,
                    fit: BoxFit.fill,
                    width: 200,
                  ),
                ),
                //rating
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: AppColors.kGold3,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5)
                      )
                    ),
                    child: Text(
                      movie.rating.toString(),
                      style: AppTypography.smallTextSecondary,
                    ),
                  )
                ),
              ],
            ),
          ),
          SizedBox(height: 8,),
          Text(
            movie.title,
            style: AppTypography.text,
          ),
        ],
      ),
    );
  }
}
