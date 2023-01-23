import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:streamo/config/data.dart';
import 'package:streamo/config/s.dart';
import 'package:streamo/model/discover_models/discover_chip_item.dart';
import 'package:streamo/model/discover_models/discover_may_like_stream_item.dart';
import 'package:streamo/model/discover_models/discover_stream_item.dart';

import '../../model/home_models/game_item.dart';

class DiscoverView extends StatefulWidget {
  const DiscoverView({super.key});

  @override
  State<DiscoverView> createState() => _DiscoverViewState();
}

class _DiscoverViewState extends State<DiscoverView> {
  List<DiscoverStreamItem> streamList = Data().discoverStreamList;
  List<DiscoverChipItem> chipItemList = Data().discoverChipList;

  List<GameItem> gameList = Data().discoverGameItems;
  List<GameItem> releaseGameList = Data().discoverReleasedGames;

  List<DiscoverMayLikeStreamItem> mayLikeStreamList =
      Data().discoverMayLikeStreamItemList;
  List<DiscoverMayLikeStreamItem> recomendedOverwatchStreams =
      Data().discoverOverwatchList;

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
            buildSearchBar(dw, dh),
            buildStreamsSlider(dh),
            buildChipList(dh, dw),
            buildTitle("Live Channels You May Like"),
            buildMayLikeStreams(dh),
            buildTitle("Categories You May Like"),
            buildGameCategorySlider(dw, dh),
            buildTitle("Recomended Overwatch 2"),
            buildRecomendedOverwatchSlider(dh),
            buildTitle("Recently Released Games"),
            buildReleasedGameSlider(dw, dh),
          ],
        ),
      ),
    );
  }

  CarouselSlider buildMayLikeStreams(double dh) {
    return CarouselSlider(
      options: CarouselOptions(
        height: dh * .425,
        viewportFraction: .95,
      ),
      items: mayLikeStreamList.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Column(
              children: [
                Container(
                  height: dh * .25,
                  margin: const EdgeInsets.only(
                    top: 12,
                    left: 8,
                    right: 8,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: S.colors.grey,
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(
                        i.streamImageUrl,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18, top: 18),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: S.colors.themeRed,
                            ),
                            child: Text(
                              "LIVE",
                              style: S.textStyles.mediumWhite,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 12),
                            padding: const EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 12,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: S.colors.textColor.withOpacity(.6),
                            ),
                            child: Text(
                              "${i.totalViewer} Viewers",
                              style: S.textStyles.mediumWhite,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: dh * .15,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 65,
                            width: 65,
                            margin: const EdgeInsets.only(
                              left: 12,
                              top: 16,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: CachedNetworkImageProvider(
                                  i.channelImageUrl,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 12,
                        child: Container(
                          height: dh * .15,
                          padding: const EdgeInsets.only(top: 16, left: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                i.channelName,
                                style: S.textStyles.semiBoldWhite,
                                textScaleFactor: 1.2,
                              ),
                              const SizedBox(height: 12),
                              Text(
                                i.streamTitle,
                                style: S.textStyles.lightWhite,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textScaleFactor: 1,
                              ),
                              const SizedBox(height: 12),
                              Text(
                                i.gameName,
                                style: TextStyle(
                                  color: S.colors.themeIndigo,
                                  fontWeight: FontWeight.w600,
                                ),
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
                                    child: Text(i.categories[0],
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
                                    child: Text(i.categories[1],
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
                                    child: Text(i.categories[2],
                                        style: S.textStyles.mediumWhite),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: const EdgeInsets.only(top: 12, right: 12),
                          height: dh * .15,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Icon(Icons.more_vert, color: S.colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      }).toList(),
    );
  }

  CarouselSlider buildRecomendedOverwatchSlider(double dh) {
    return CarouselSlider(
      options: CarouselOptions(
        height: dh * .425,
        viewportFraction: .95,
      ),
      items: recomendedOverwatchStreams.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Column(
              children: [
                Container(
                  height: dh * .25,
                  margin: const EdgeInsets.only(
                    top: 12,
                    left: 8,
                    right: 8,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: S.colors.grey,
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(
                        i.streamImageUrl,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18, top: 18),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: S.colors.themeRed,
                            ),
                            child: Text(
                              "LIVE",
                              style: S.textStyles.mediumWhite,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 12),
                            padding: const EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 12,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: S.colors.textColor.withOpacity(.6),
                            ),
                            child: Text(
                              "${i.totalViewer} Viewers",
                              style: S.textStyles.mediumWhite,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: dh * .15,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 65,
                            width: 65,
                            margin: const EdgeInsets.only(
                              left: 12,
                              top: 16,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: CachedNetworkImageProvider(
                                  i.channelImageUrl,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 12,
                        child: Container(
                          height: dh * .15,
                          padding: const EdgeInsets.only(top: 16, left: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                i.channelName,
                                style: S.textStyles.semiBoldWhite,
                                textScaleFactor: 1.2,
                              ),
                              const SizedBox(height: 12),
                              Text(
                                i.streamTitle,
                                style: S.textStyles.lightWhite,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                textScaleFactor: 1,
                              ),
                              const SizedBox(height: 12),
                              Text(
                                i.gameName,
                                style: TextStyle(
                                  color: S.colors.themeIndigo,
                                  fontWeight: FontWeight.w600,
                                ),
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
                                    child: Text(i.categories[0],
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
                                    child: Text(i.categories[1],
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
                                    child: Text(i.categories[2],
                                        style: S.textStyles.mediumWhite),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: const EdgeInsets.only(top: 12, right: 12),
                          height: dh * .15,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Icon(Icons.more_vert, color: S.colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      }).toList(),
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
              Container(
                padding: const EdgeInsets.only(left: 16, top: 6),
                width: dw * .275,
                child: Text(
                  gameList[index].name,
                  style: S.textStyles.semiBoldWhite,
                  textScaleFactor: 1.1,
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

  Container buildReleasedGameSlider(double dw, double dh) {
    return Container(
      width: dw,
      height: dh * .265,
      margin: const EdgeInsets.only(left: 12),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: releaseGameList.length,
        itemBuilder: ((context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: S.colors.grey,
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                        releaseGameList[index].imgUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                margin: S.margins.all8,
                padding: S.padding.all6,
                width: dw * .275,
                height: dh * .175,
              ),
              Container(
                padding: const EdgeInsets.only(left: 16, top: 6),
                width: dw * .275,
                child: Text(
                  releaseGameList[index].name,
                  style: S.textStyles.semiBoldWhite,
                  textScaleFactor: 1.1,
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
                      "${releaseGameList[index].totalViewer} viewers",
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

  Container buildChipList(double dh, double dw) {
    return Container(
      margin: const EdgeInsets.only(top: 12, left: 18),
      height: dh * .08,
      width: dw,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: chipItemList.length,
        itemBuilder: ((context, index) {
          return Container(
            margin: const EdgeInsets.only(
              top: 12,
              bottom: 12,
              right: 12,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 18,
            ),
            height: dh * .075,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: S.colors.themeIndigo,
            ),
            child: Row(
              children: [
                Icon(
                  chipItemList[index].icon,
                  color: S.colors.white,
                  size: 18,
                ),
                const SizedBox(width: 12),
                Text(
                  chipItemList[index].name,
                  style: S.textStyles.mediumWhite,
                  textScaleFactor: 1.15,
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  CarouselSlider buildStreamsSlider(double dh) {
    return CarouselSlider(
      options: CarouselOptions(
        height: dh * .275,
        viewportFraction: .95,
      ),
      items: streamList.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              margin: const EdgeInsets.only(
                top: 32,
                left: 8,
                right: 8,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: S.colors.grey,
                image: DecorationImage(
                  image: CachedNetworkImageProvider(
                    i.imgUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18, top: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: S.colors.themeRed,
                        ),
                        child: Text(
                          "LIVE",
                          style: S.textStyles.mediumWhite,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 12,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: S.colors.textColor.withOpacity(.6),
                        ),
                        child: Text(
                          "${i.totalViewers} Viewers",
                          style: S.textStyles.mediumWhite,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Center buildSearchBar(double dw, double dh) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: S.colors.themeSearchBarBG,
        ),
        width: dw * .9,
        height: dh * .075,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Feather.search,
                color: S.colors.grey,
                size: 28,
              ),
            ),
            Text(
              "Search games, categories, or videos",
              style: S.textStyles.regularGrey,
              textScaleFactor: 1.2,
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(
        'Discover',
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
}
