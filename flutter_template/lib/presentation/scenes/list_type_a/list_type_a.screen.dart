import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../domain/entities/movie.dart';
import '../../../utils/logger.dart';
import '../movies_cubit/movies.cubit.dart';

class ListTypeAScreen extends StatefulWidget {
  const ListTypeAScreen({super.key});

  @override
  State<ListTypeAScreen> createState() => _ListTypeAScreenState();
}

class _ListTypeAScreenState extends State<ListTypeAScreen> {
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
          body: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: data.results
                .map((e) => _MovieCell(e, onTap: handleMovieTap))
                .toList(growable: false),
          ),
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
  final Function(Movie, BuildContext) onTap; // Define a callback function

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
            image: NetworkImage("https://image.tmdb.org/t/p/w500/${movie.posterPath}"), // Replace with your remote image URL
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
