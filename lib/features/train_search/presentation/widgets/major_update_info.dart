import 'package:flutter/material.dart';
import 'package:train_time/core/storage/shared_preferences_service.dart';

final _note = '''
親愛的 台鐵一點通 使用者，您好：

感謝您一直以來的支持！台鐵一點通致力於提供優質的使用體驗，並且不置入任何廣告。多年來，我持續進行維護與更新，以確保軟體的穩定運作。

在此次重大改版中，我對底層架構進行了全面重新設計，雖然這些改動在畫面中不易察覺，但它們對軟體的可持續性至關重要，確保了未來的穩定運行。希望這次的改版能帶給您更好的使用體驗，並期待您繼續支持台鐵一點通。

不幸的是，由於技術上的困難，舊版本中的收藏路線無法遷移至新版本。如果您有收藏路線，請您重新設定。非常抱歉給您帶來的不便。

若您有任何問題或建議，歡迎透過問題回報功能與我聯繫。

再次感謝您的支持與愛護！
by 獨立開發者：Trien

＊此公告僅會保留三天，之後將不再顯示
''';

final _version = "v4.0.0";

class MajorUpdateInfo extends StatelessWidget {
  final SharedPreferencesService prefs;
  const MajorUpdateInfo({super.key, required this.prefs});

  @override
  Widget build(BuildContext context) {
    final firstUseDate = prefs.getString(_version);
    final now = DateTime.now();

    if (firstUseDate == null) {
      prefs.setString(_version, now.toString());
    } else {
      final firstUse = DateTime.parse(firstUseDate);
      final difference = now.difference(firstUse).inHours;
      if (difference >= 24 * 3) {
        return SizedBox();
      }
    }

    return ListTile(
      tileColor: Theme.of(context).colorScheme.tertiaryContainer,
      minTileHeight: 0,
      leading: Icon(
        Icons.star_rounded,
        color: Theme.of(context).colorScheme.tertiary,
        size: 20,
      ),
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            icon: Icon(
              Icons.star_rounded,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            title: Text("重大改版公告"),
            content: SingleChildScrollView(
              child: Text(_note),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text("確定"),
              ),
            ],
          ),
        );
      },
      title: Text(
        "應用程式已完成重大改版！",
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.tertiary,
            ),
      ),
      subtitle: Text(
        "點擊瞭解更多",
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Theme.of(context)
                  .colorScheme
                  .onTertiaryContainer
                  .withAlpha(155),
            ),
      ),
    );
  }
}
