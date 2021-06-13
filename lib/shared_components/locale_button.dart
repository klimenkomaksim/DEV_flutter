import 'package:dev_flutter/bloc/locale/locale_bloc.dart';
import 'package:dev_flutter/consts/border_radius.dart';
import 'package:dev_flutter/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocaleButton extends StatelessWidget {
  final List<Locale> locales = AppLocalizations.supportedLocales;

  const LocaleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleBloc, LocaleState>(builder: (ctx, state) {
      final bloc = BlocProvider.of<LocaleBloc>(context);

      return ToggleButtons(
        isSelected: _mapLocaleList((locale) => locale == state.currentLocale),
        borderColor: CustomColors.border,
        selectedBorderColor: CustomColors.border,
        fillColor: CustomColors.buttonBackground,
        selectedColor: CustomColors.primaryText,
        borderRadius: CustomBorderRadius.localeButton,
        onPressed: (index) {
          bloc.add(ChangerLocale(index));
        },
        children: _mapLocaleList<Widget>(
            (locale) => Text(locale.toString().toUpperCase())),
      );
    });
  }

  List<T> _mapLocaleList<T>(T Function(dynamic) cb) => locales.map(cb).toList();
}
