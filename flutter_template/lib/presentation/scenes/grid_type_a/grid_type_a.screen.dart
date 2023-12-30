import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/presentation/scenes/movies_cubit/movies.cubit.dart';
import 'package:velocity_x/velocity_x.dart';

class GridTypeAScreen extends StatelessWidget {
  const GridTypeAScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MoviesCubit()..fetchMovies(1),
      child: const _GridTypeAScreenView(),
    );
  }
}

class _GridTypeAScreenView extends StatelessWidget {
  const _GridTypeAScreenView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesCubit, MoviesResultState>(
        builder: (context, state) {
          return state.maybeWhen(
              success: (data) {
                return Scaffold(
                  appBar: _appBar(context),
                  body: GridView.builder(
                    shrinkWrap: true,
                    itemCount: data.results.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1 / 1,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      final movie = data.results[index];
                      return Image.network(
                        "https://image.tmdb.org/t/p/w500/${movie.posterPath}",
                        height: 200,);
                    },
                  ).pSymmetric(v: 16),
                );
              },
              failure: (error) {
                return Scaffold(
                  appBar: _appBar(context),
                  body: Center(
                    child: (error.message ?? '').text.color(Colors.red).make(),
                  ),
                );
              },
              orElse: () {
                return Scaffold(
                    appBar: _appBar(context),
                    body: const Center(
                      child: CircularProgressIndicator(),
                    )
                );
              });
        }
    );
  }
}

PreferredSizeWidget _appBar(BuildContext context) {
  return AppBar(
    leading: IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    title: "GridTypeA".text.make(),
  );
}
