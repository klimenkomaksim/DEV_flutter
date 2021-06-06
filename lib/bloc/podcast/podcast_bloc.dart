import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'podcast_event.dart';
part 'podcast_state.dart';

class PodcastBloc extends Bloc<PodcastEvent, PodcastState> {
  PodcastBloc() : super(PodcastInitial());

  @override
  Stream<PodcastState> mapEventToState(
    PodcastEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
