import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnengo/Widget/languageSelector.dart';

class boarding_five extends StatefulWidget {


  const boarding_five({super.key});

  @override
  State<boarding_five> createState() => _boarding_fiveState();
}

class _boarding_fiveState extends State<boarding_five> {
  int groupVal = 0;

  @override
  Widget build(BuildContext context) {


    AppLocalizations appLocale = AppLocalizations.of(context)!;
    List<String> time = [
      appLocale.min5,
      appLocale.min10,
      appLocale.min15,
      appLocale.min30,
      appLocale.min60,
    ];
    List<String> trailing = [
      appLocale.placeholder,
      appLocale.normal,
      appLocale.serious,
      appLocale.great,
      appLocale.awesome,
    ];
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return CustomSelectorBTN(
              btnText: time[index],
              trailing: trailing[index],
              trailingColor: Theme.of(context).colorScheme.surface,
          isSelected: groupVal == index,
          customMethod: () {
             setState(() {
               groupVal = index;
             });
          },

            );
        },

        separatorBuilder: (context, index) => SizedBox(height: 20.h),
        itemCount: time.length);
  }
}
