import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unsplash/bloc/post/bloc.dart';
import 'package:unsplash/page/home/components/grid_view.dart';
import 'package:unsplash/page/home/components/loader.dart';
import 'package:unsplash/page/home/components/loading.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<PostBloc, PostState>(
        listener: (BuildContext context, PostState state) {
          if (state is LoadingMoreState) {
            loading(context);
          }
          return;
        },
        builder: (context, state) {
          if (state is InitialState) {
            context.read<PostBloc>().add(LoadEvent());
            return const Center(child: CupertinoActivityIndicator());
          } else if (state is LoadingState) {
            return const Loader();
          } else if (state is LoadedState || state is LoadingMoreState) {
            return const PostsView();
          } else if (state is ErrorState) {
            return Center(child: Text(state.errorMessage));
          }
          return const Text('Error');
        },
      ),
    );
  }
}