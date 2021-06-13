import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dev_flutter/services/api.dart';
import 'package:meta/meta.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final API api;

  PostBloc(this.api) : super(const PostInitial());

  @override
  Stream<PostState> mapEventToState(
    PostEvent event,
  ) async* {
    if (event is GetArticleById) {
      yield const PostLoading();
      try {
        final response = await api.article.getById(event.id);

        if (response.isSuccessful && response.body != null) {
          yield PostLoaded(response.body!);
        } else {
          yield const PostError();
        }
      } catch (e) {
        yield const PostError();
      }
    }
  }
}
