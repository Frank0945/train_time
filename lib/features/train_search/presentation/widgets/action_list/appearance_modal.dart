import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_time/core/theme/colors/colors.dart';
import 'package:train_time/core/theme/theme_bloc.dart';
import 'package:train_time/core/theme/theme_event.dart';
import 'package:train_time/core/theme/theme_state.dart';
import 'package:train_time/features/train_search/presentation/widgets/action_list/theme_setting.dart';

class AppearanceModal extends StatelessWidget {
  const AppearanceModal({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (_, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      "關閉",
                    ),
                  ),
                ],
              ),
            ),
            ThemeSetting(
              onChanged: (themeMode) {
                context.read<ThemeBloc>().add(
                      UpdateTheme(
                        themeMode: themeMode,
                      ),
                    );
              },
              themeMode: state.themeMode,
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Text(
                "色彩 (${colorMap.length})",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: colorMap.keys
                    .map(
                      (key) => ListTile(
                        onTap: () {
                          context.read<ThemeBloc>().add(
                                UpdateTheme(
                                  seedColor: colorMap[key],
                                ),
                              );
                        },
                        title: Row(
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: colorMap[key],
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            SizedBox(width: 16),
                            Text(
                              "$key - ${colorMapZh[key]}",
                            ),
                            Spacer(),
                            if (state.seedColor == colorMap[key])
                              Icon(
                                Icons.check,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        );
      },
    );
  }
}
