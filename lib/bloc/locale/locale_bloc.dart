import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

part 'locale_event.dart';
part 'locale_state.dart';

class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  LocaleBloc() : super(LocaleInitial(AppLocalizations.supportedLocales[0], 0));

  @override
  Stream<LocaleState> mapEventToState(
    LocaleEvent event,
  ) async* {
    if (event is ChangerLocale) {
      const supportedLocales = AppLocalizations.supportedLocales;

      yield CurrentLocale(supportedLocales[event.index], event.index);
    }
  }
}
