import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../domain/entities/movie.dart';
import '../../../utils/logger.dart';
import '../movies_cubit/movies.cubit.dart';

class ListTypeAScreen extends StatelessWidget {
  const ListTypeAScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MoviesCubit()..fetchMovies(1),
      child: const _ListTypeAScreenView(),
    );
  }
}

class _ListTypeAScreenView extends StatelessWidget {
  const _ListTypeAScreenView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesCubit, MoviesResultState>(
        builder: (context, state) {
      return state.maybeWhen(success: (data) {
        return Scaffold(
          appBar: _appBar(context),
          body: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: data.results.length,
              itemBuilder: (BuildContext context, int index) {
                final movie = data.results[index];
                return _MovieCell(movie, onTap: handleMovieTap);
              }),
        );
      }, failure: (error) {
        return Scaffold(
          appBar: _appBar(context),
          body: Center(
            child: (error.message ?? '').text.color(Colors.red).make(),
          ),
        );
      }, orElse: () {
        return Scaffold(
          appBar: _appBar(context),
          body: const Center(
            child: CircularProgressIndicator(),
          ),
        );
      });
    });
  }

  PreferredSizeWidget _appBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: "ListTypeA".text.make(),
    );
  }

  void handleMovieTap(Movie movie, BuildContext context) {
    logD(movie.title);
  }
}

class _MovieCell extends StatelessWidget {
  final Movie movie;
  final Function(Movie, BuildContext) onTap;

  const _MovieCell(this.movie, {required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
            image: NetworkImage(
                "https://image.tmdb.org/t/p/w500/${movie.posterPath}"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: (movie.title ?? '').text.bold.color(Colors.black).size(16).make(),
      onTap: () {
        onTap(movie, context);
      },
    ).pSymmetric(v: 8);
  }
}
