import 'package:flutter/material.dart';

const themeModeMap = {
  ThemeMode.system: "使用裝置主題",
  ThemeMode.dark: "深色主題",
  ThemeMode.light: "淺色主題",
};

class ThemeSetting extends StatelessWidget {
  final Function(ThemeMode) onChanged;
  final ThemeMode themeMode;
  const ThemeSetting(
      {super.key, required this.onChanged, required this.themeMode});

  @override
  Widget build(BuildContext context) {
    void onTap() {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text("主題設定"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: themeModeMap.keys
                  .map(
                    (key) => RadioListTile(
                      title: Text(themeModeMap[key]!),
                      value: key,
                      groupValue: themeMode,
                      onChanged: (value) {
                        if (value != null) onChanged(value);
                        Navigator.pop(context);
                      },
                    ),
                  )
                  .toList(),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("取消"),
              ),
            ],
          );
        },
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 12, top: 0, bottom: 8),
          child: Text(
            "主題",
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
        ListTile(
          onTap: onTap,
          title: Text(
            "主題設定",
          ),
          subtitle: Text(
            "依偏好選擇深色或淺色主題",
          ),
        ),
      ],
    );
  }
}
