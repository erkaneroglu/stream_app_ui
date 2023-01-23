import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:streamo/config/data.dart';
import 'package:streamo/config/s.dart';
import 'package:streamo/model/home_models/game_item.dart';
import 'package:streamo/model/home_models/home_stream_item.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<GameItem> gameList = Data().homeGameItems;
  List<HomeStreamItem> streamList = Data().homeStreamList;
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
            buildTitle("Followed Categories"),
            buildGameCategorySlider(dw, dh),
            buildTitle("Followed Channel"),
            buildChannelsSlider(dw, dh),
            buildTitle("Recomended For You"),
            buildRecomendedStreamsList(dh, dw),
            buildTitle("Continue Watching"),
            buildRecomendedStreamsList(dh, dw),
          ],
        ),
      ),
    );
  }

  SizedBox buildRecomendedStreamsList(double dh, double dw) {
    return SizedBox(
      height: dh * .75,
      width: dw,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: streamList.length,
        itemBuilder: (context, index) {
          return Container(
            padding: S.padding.all12,
            height: dh * .15,
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: S.colors.themeGrey,
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(
                          streamList[index].streamImageUrl,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12, bottom: 12),
                        child: Row(
                          children: [
                            Text(
                              "●",
                              style: TextStyle(
                                color: S.colors.themeRed,
                              ),
                              textScaleFactor: 1.2,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              gameList[index].totalViewer,
                              style: S.textStyles.mediumWhite,
                              textScaleFactor: 1,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    margin: const EdgeInsets.only(left: 6),
                    padding: S.padding.all8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: S.colors.themeGrey,
                                image: DecorationImage(
                                  image: CachedNetworkImageProvider(
                                    streamList[index].channelImageUrl,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 6),
                            Text(
                              streamList[index].channelName,
                              style: S.textStyles.semiBoldWhite,
                              textScaleFactor: 1.1,
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          streamList[index].streamTitle,
                          style: S.textStyles.lightWhite,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          textScaleFactor: 1,
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: S.colors.themeGrey,
                              ),
                              child: Text(streamList[index].categories[0],
                                  style: S.textStyles.mediumWhite),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: S.colors.themeGrey,
                              ),
                              child: Text(streamList[index].categories[1],
                                  style: S.textStyles.mediumWhite),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.only(top: 6, right: 4),
                    alignment: Alignment.topRight,
                    child:
                        Icon(Icons.more_vert_outlined, color: S.colors.white),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Container buildChannelsSlider(double dw, double dh) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: dw,
      height: dh * .125,
      child: ListView(
        padding: S.padding.all6,
        scrollDirection: Axis.horizontal,
        children: [
          buildLiveChannelImage(
            dw,
            dh,
            "https://static-cdn.jtvnw.net/jtv_user_pictures/cae142b9-473b-4360-ba65-708e0697cb82-profile_image-70x70.png",
          ),
          buildChannelImage(
            dw,
            dh,
            "https://static-cdn.jtvnw.net/jtv_user_pictures/0f6fbd48-036f-4bea-a3b5-ed589e18e74f-profile_image-70x70.png",
          ),
          buildLiveChannelImage(
            dw,
            dh,
            "https://static-cdn.jtvnw.net/jtv_user_pictures/5cab2c4a-6061-4a6d-aafe-702d008c64ad-profile_image-70x70.png",
          ),
          buildChannelImage(
            dw,
            dh,
            "https://static-cdn.jtvnw.net/jtv_user_pictures/1eda049c091b0f04-profile_image-70x70.jpeg",
          ),
          buildChannelImage(
            dw,
            dh,
            "https://static-cdn.jtvnw.net/jtv_user_pictures/f5d5fc6b-a707-4b01-8816-28099445fcae-profile_image-70x70.png",
          ),
          buildChannelImage(
            dw,
            dh,
            "https://static-cdn.jtvnw.net/jtv_user_pictures/bffe2a31-fcaa-4ba2-a479-cad518942f30-profile_image-70x70.jpeg",
          ),
        ],
      ),
    );
  }

  Container buildChannelImage(double dw, double dh, String imgPath) {
    return Container(
      width: dw * .175,
      height: dh * .095,
      margin: const EdgeInsets.only(right: 8, left: 6),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: CachedNetworkImageProvider(
            imgPath,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Stack buildLiveChannelImage(double dw, double dh, String imgPath) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: dw * .2,
          height: dh * .095,
          margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 3, color: S.colors.red),
            image: DecorationImage(
              image: CachedNetworkImageProvider(
                imgPath,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: S.colors.themeRed,
            ),
            child: Text("LIVE", style: S.textStyles.semiBoldWhite),
          ),
        ),
      ],
    );
  }

  Container buildGameCategorySlider(double dw, double dh) {
    return Container(
      width: dw,
      height: dh * .265,
      margin: const EdgeInsets.only(left: 12),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: gameList.length,
        itemBuilder: ((context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: S.colors.grey,
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(gameList[index].imgUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                margin: S.margins.all8,
                padding: S.padding.all6,
                width: dw * .275,
                height: dh * .175,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 6),
                child: Text(
                  gameList[index].name,
                  style: S.textStyles.semiBoldWhite,
                  textScaleFactor: 1.2,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 8),
                child: Row(
                  children: [
                    Text(
                      "●",
                      style: TextStyle(
                        color: S.colors.themeRed,
                      ),
                      textScaleFactor: 1.1,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      "${gameList[index].totalViewer} viewers",
                      style: S.textStyles.mediumWhite,
                      textScaleFactor: 1,
                    ),
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }

  Padding buildTitle(String title) {
    return Padding(
      padding: S.padding.all16,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            textScaleFactor: 1.65,
            style: S.textStyles.semiBoldWhite,
          ),
          Icon(
            AntDesign.arrowright,
            color: S.colors.themeIndigo,
            size: 32,
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(
        'Home',
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
