import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:streamo/config/s.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    var dw = MediaQuery.of(context).size.width;
    var dh = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: S.colors.mainBackgroundColor,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildProfileSection(dw),
            buildDivider(0),
            buildTileWithArrow(
              "My Channel",
              Ionicons.ios_person,
              S.colors.themeIndigo,
            ),
            buildTileWithArrow(
              "Subscription",
              MaterialCommunityIcons.brightness_percent,
              S.colors.green,
            ),
            buildTileWithArrow(
              "Payment",
              Ionicons.wallet,
              S.colors.blue,
            ),
            buildDivider(16),
            buildTileWithArrow(
              "Profile",
              Ionicons.ios_person,
              S.colors.orange,
            ),
            buildTileWithArrow(
              "Notification",
              Octicons.bell_fill,
              Colors.pink,
            ),
            buildTileWithArrow(
              "Preferences",
              FontAwesome.cog,
              Colors.blue,
            ),
            buildTileWithArrow(
              "Security",
              Ionicons.shield_checkmark,
              Colors.green,
            ),
            buildTileWithWidget(
              "Language",
              Ionicons.apps,
              Text(
                "English(US)",
                style: S.textStyles.semiBoldWhite,
                textScaleFactor: 1.25,
              ),
              S.colors.themeIndigo,
            ),
            buildTileWithoutArrowWithWidget(
              "Dark Mode",
              Ionicons.eye,
              CupertinoSwitch(
                value: true,
                activeColor: S.colors.themeIndigo,
                onChanged: (bool? value) {
                  // This is called when the user toggles the switch.
                  setState(() {});
                },
              ),
              S.colors.orange,
            ),
            buildTileWithArrow(
              "Help Center",
              FontAwesome5Solid.file_alt,
              Colors.green,
            ),
            buildTileWithArrow(
              "Community Guidelines",
              FontAwesome5Solid.users,
              S.colors.themeIndigo,
            ),
            buildTileWithArrow(
              "Terms of Services",
              FontAwesome5Solid.file_alt,
              S.colors.orange,
            ),
            buildTileWithArrow(
              "About Streamo",
              MaterialIcons.info,
              Colors.teal,
            ),
            buildTileWithoutArrow(
              "Logout",
              MaterialIcons.logout,
              Colors.red,
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }

  Row buildTileWithArrow(String title, IconData icon, Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 18, left: 18),
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color.withOpacity(.15),
              ),
              child: Icon(
                icon,
                color: color,
                size: 24,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18, left: 24),
              child: Text(
                title,
                style: S.textStyles.semiBoldWhite,
                textScaleFactor: 1.45,
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18, right: 18),
          child: Icon(
            Icons.keyboard_arrow_right,
            color: S.colors.white,
            size: 32,
          ),
        )
      ],
    );
  }

  Row buildTileWithoutArrow(String title, IconData icon, Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 18, left: 18),
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color.withOpacity(.15),
              ),
              child: Icon(
                icon,
                color: color,
                size: 24,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18, left: 24),
              child: Text(
                title,
                style:
                    TextStyle(color: S.colors.red, fontWeight: FontWeight.bold),
                textScaleFactor: 1.45,
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 18, right: 18),
          child: null,
        )
      ],
    );
  }

  Row buildTileWithoutArrowWithWidget(
      String title, IconData icon, Widget widget, Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 18, left: 18),
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color.withOpacity(.15),
              ),
              child: Icon(
                icon,
                color: color,
                size: 24,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18, left: 24),
              child: Text(
                title,
                style: S.textStyles.semiBoldWhite,
                textScaleFactor: 1.45,
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18, right: 18),
          child: widget,
        )
      ],
    );
  }

  Row buildTileWithWidget(
      String title, IconData icon, Widget widget, Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 18, left: 18),
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color.withOpacity(.15),
              ),
              child: Icon(
                icon,
                color: color,
                size: 24,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18, left: 24),
              child: Text(
                title,
                style: S.textStyles.semiBoldWhite,
                textScaleFactor: 1.45,
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18, right: 18),
          child: Row(
            children: [
              widget,
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Icon(
                  Icons.keyboard_arrow_right,
                  color: S.colors.white,
                  size: 32,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Padding buildDivider(double x) {
    return Padding(
      padding: EdgeInsets.only(left: 18, right: 18, top: x),
      child: Divider(color: S.colors.grey, thickness: .5),
    );
  }

  Padding buildProfileSection(double dw) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: dw * .25,
                height: 85,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: S.colors.themeGrey,
                  image: const DecorationImage(
                    image: CachedNetworkImageProvider(
                      "https://static.wikia.nocookie.net/bakerstreet/images/2/24/Jim_moriarty.png/revision/latest?cb=20150601131646",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jim Moriarty",
                      style: S.textStyles.semiBoldWhite,
                      textScaleFactor: 1.25,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Offline",
                      style: S.textStyles.mediumWhite,
                      textScaleFactor: 1,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(
              Feather.edit_3,
              color: S.colors.themeIndigo,
            ),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(
        'Account',
        style: S.textStyles.boldWhite,
        textScaleFactor: 1.25,
      ),
      centerTitle: false,
      toolbarHeight: AppBar().preferredSize.height + 15,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Center(
          child: Icon(
            Ionicons.md_chatbox,
            color: S.colors.themeIndigo,
            size: 36,
          ),
        ),
      ),
      actions: [
        Row(
          children: [
            Container(
              padding: S.padding.all8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: S.colors.themeGrey,
                ),
              ),
              child: Icon(Feather.bell, color: S.colors.white),
            ),
            const SizedBox(width: 12),
            Container(
              margin: const EdgeInsets.only(right: 24),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(width: 2.5, color: S.colors.themeIndigo),
                borderRadius: BorderRadius.circular(25),
                color: S.colors.mainBackgroundColor,
              ),
              child: Row(
                children: [
                  Icon(
                    Octicons.broadcast,
                    color: S.colors.themeIndigo,
                    size: 18,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "Create",
                    style: TextStyle(
                      color: S.colors.themeIndigo,
                      fontWeight: FontWeight.w600,
                    ),
                    textScaleFactor: 1.35,
                  )
                ],
              ),
            ),
          ],
        )
      ],
      backgroundColor: S.colors.mainBackgroundColor,
    );
  }
}
