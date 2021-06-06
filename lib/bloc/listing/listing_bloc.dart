import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'listing_event.dart';
part 'listing_state.dart';

class ListingBloc extends Bloc<ListingEvent, ListingState> {
  ListingBloc() : super(ListingInitial());

  @override
  Stream<ListingState> mapEventToState(
    ListingEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
