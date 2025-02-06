import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_time/core/theme/theme_bloc.dart';
import 'package:train_time/features/train_search/presentation/widgets/action_list/appearance_modal.dart';
import 'package:url_launcher/url_launcher.dart';

class ActionList extends StatelessWidget {
  const ActionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _action(
          context,
          icon: Icons.palette_rounded,
          title: "外觀設定",
          text: "設定主題深淺與色彩",
          url: Uri.parse(""),
          isAppearanceSetting: true,
        ),
        _action(
          context,
          icon: Icons.question_answer_rounded,
          title: "問題回報",
          text: "回報軟體內錯誤或提供建議",
          url: Uri.parse("https://forms.gle/YH6tXQUgnszMuh928"),
        ),
        _action(
          context,
          icon: Icons.rate_review_rounded,
          title: "給予評價",
          text: "提供您的建議與評分",
          url: Uri.parse(
              "https://play.google.com/store/apps/details?id=com.train_time"),
        ),
        _action(
          context,
          icon: Icons.coffee_rounded,
          title: "請開發者喝杯咖啡",
          text: "喜歡本軟體的朋友們，不妨請我喝杯咖啡吧",
          url: Uri.parse("https://www.buymeacoffee.com/yuanchuang"),
        ),
        _action(
          context,
          icon: Icons.policy_rounded,
          title: "使用者條款",
          text: "當您使用本軟體之服務時，即代表您同意我們的使用者條款",
          url: Uri.parse(
              "https://frank0945.github.io/yuanchuangWebsite/train_time/index.html"),
        ),
      ],
    );
  }

  _action(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String text,
    required Uri url,
    bool isAppearanceSetting = false,
  }) {
    return Column(
      children: [
        Divider(height: 0),
        ListTile(
          onTap: () async {
            if (isAppearanceSetting) {
              showModalBottomSheet(
                context: context,
                builder: (_) => BlocProvider.value(
                  value: context.read<ThemeBloc>(),
                  child: AppearanceModal(),
                ),
              );
              return;
            }

            await launchUrl(url);
          },
          leading: Icon(
            icon,
            color: Theme.of(context).colorScheme.secondary,
            size: 28,
          ),
          title: Text(title),
          subtitle: Text(text),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
        ),
      ],
    );
  }
}
