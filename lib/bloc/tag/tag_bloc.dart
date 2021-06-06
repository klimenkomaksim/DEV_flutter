import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'tag_event.dart';
part 'tag_state.dart';

class TagBloc extends Bloc<TagEvent, TagState> {
  TagBloc() : super(TagInitial());

  @override
  Stream<TagState> mapEventToState(
    TagEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
