import 'package:dev_flutter/bloc/main_bloc.dart';
import 'package:dev_flutter/models/post_model.dart';
import 'package:dev_flutter/shared_components/centered_spinner.dart';
import 'package:dev_flutter/shared_components/error_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/post.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments as int;
    _loadArticle(context, id);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: BlocBuilder<MainBloc, BlocState>(builder: (ctx, state) {
        if (state is Initial) {
          return const CenteredSpinner();
        }

        if (state is Error) {
          return const ErrorMessage();
        }

        if (state is LoadedItem) {
          return _postBuilder(state.data);
        }

        return const CenteredSpinner();
      }),
    );
  }

  Widget _postBuilder(PostModel data) {
    return Post(
        title: data.title,
        coverImageUrl: data.coverImageUrl,
        tags: data.tags,
        username: data.username,
        data: data.data,
        publishDate: data.publishDate,
        profileImageUrl: data.profileImage);
  }

  void _loadArticle(BuildContext ctx, int id) {
    final bloc = BlocProvider.of<MainBloc>(ctx);
    bloc.add(GetArticleById(id));
  }
}
