import 'package:dev_flutter/services/api.dart';
import 'package:dev_flutter/shared_components/centered_spinner.dart';
import 'package:dev_flutter/shared_components/error_message.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'components/post.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments as int;
    final api = GetIt.I.get<API>();

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: FutureBuilder(
          builder: _postBuilder,
          future: api.article.getById(id),
        ));
  }

  Widget _postBuilder(context, AsyncSnapshot<dynamic> snapshot) {
    if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
      return Post(
          title: snapshot.data.title,
          coverImageUrl: snapshot.data.coverImageUrl,
          tags: snapshot.data.tags,
          username: snapshot.data.username,
          data: snapshot.data.data,
          publishDate: snapshot.data.publishDate,
          profileImageUrl: snapshot.data.profileImage);
    }

    if (snapshot.hasError) {
      return const ErrorMessage();
    }

    return const CenteredSpinner();
  }
}
