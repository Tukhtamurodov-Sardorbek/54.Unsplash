import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unsplash/bloc/bloc.dart';
import 'package:unsplash/page/home/components/grid_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PostBloc, PostState>(
        builder: (context, state) {
          if (state is InitialState) {
            context.read<PostBloc>().add(LoadEvent());
            return const CircularProgressIndicator();
          } else if (state is LoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is LoadedState) {
            return PostsView(posts: state.posts);
          } else if (state is ErrorState) {
            return const Center(
              child: Text('Something went wrong!'),
            );
          }
          return const Text('Error');
        },
      ),
    );
  }
}