import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:share_plus/share_plus.dart';
import 'package:stake_lounge/features/settings/widgets/settings_item.dart';
import 'package:stake_lounge/router/router.dart';
import 'package:stake_lounge/shared/widgets/custom_container.dart';

bool ableToCallShareWindow = true;

class SettingsSection extends StatelessWidget {
  const SettingsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        child: Column(
      children: [
        SettingsItem(
          title: 'Share with friends',
          assetPath: 'assets/icons/share.svg',
          onPressed: (ctx) async {
            final box = ctx.findRenderObject() as RenderBox?;
            if (ableToCallShareWindow) {
              ableToCallShareWindow = false;
              await Share.shareWithResult('Check out this Stake Lounge app!',
                      sharePositionOrigin:
                          box!.localToGlobal(Offset.zero) & box.size)
                  .whenComplete(() => ableToCallShareWindow = true);
            }
          },
        ),
        SettingsItem(
          title: 'Terms of use',
          assetPath: 'assets/icons/tou.svg',
          onPressed: (p0) => context.router.push(const TermsOfUseRoute()),
        ),
        SettingsItem(
          title: 'Privacy Policy',
          assetPath: 'assets/icons/pp.svg',
          onPressed: (p0) => context.router.push(const PrivacyPolicyRoute()),
        ),
      ],
    ));
  }
}
