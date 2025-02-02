import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/api/network/remot/api_manager.dart';
import 'package:untitled1/constants/constants.dart';
import 'package:untitled1/models/movie_response.dart';
import 'package:untitled1/screens/movie_details.dart';
import 'package:untitled1/widgets/add_movie.dart';
import 'package:untitled1/widgets/widgets.dart';


class TopRatedWidget extends StatelessWidget {
  const TopRatedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(

      child: Container(
        color: const Color(0xFF282A28),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Top Rated",
                style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10.h,
              ),
              Expanded(
                child: FutureBuilder<MovieResponse>(
                  future: ApiManager.getTopRatedMovies(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}',style: const TextStyle(color: Colors.white,fontSize: 15),);
                    }
                    if (snapshot.data == null) {
                      return Image.asset("assets/images/loading.png");
                    }
                    final MovieResponse topRated = snapshot.data!;
                      return ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data!.results!.length,
                        itemBuilder: (BuildContext context, int index) {
                              final String movieId = "${topRated.results![index].id}";
                          return GestureDetector(
                            onTap: (){
                              nextScreen(context, MovieDetails(movieId: movieId, movie: topRated.results![index]));
                            },
                            child: Stack(
                              children: [
                                CachedNetworkImage(
                                  imageUrl: "$baseImageUrl/original/${topRated.results?[index].posterPath}",
                                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                                      Center(child: CircularProgressIndicator(value: downloadProgress.progress)),
                                  errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
                                ),
                                AddMovie(result: topRated.results![index]),
                                   // AddMovie(result: topRated.results![index],)
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 14.w,
                          );
                        },
                      );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
