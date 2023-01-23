import 'package:cached_network_image/cached_network_image.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:streamo/config/s.dart';
import 'package:streamo/model/browse_models/browse_category_item.dart';

import '../../config/data.dart';
import '../../model/discover_models/discover_may_like_stream_item.dart';

class BrowseView extends StatefulWidget {
  const BrowseView({super.key});

  @override
  State<BrowseView> createState() => _BrowseViewState();
}

class _BrowseViewState extends State<BrowseView> {
  List<DiscoverMayLikeStreamItem> liveChannelStreams =
      Data().discoverOverwatchList;

  List<BrowseCategoryItem> gameList = Data().browseCategoryItem;

  @override
  Widget build(BuildContext context) {
    var dw = MediaQuery.of(context).size.width;
    var dh = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: S.colors.mainBackgroundColor,
      appBar: buildAppBar(),
      body: SizedBox(
        width: dw,
        height: dh,
        child: ContainedTabBarView(
          tabs: const [
            Text(
              'Categories',
              textScaleFactor: 1.25,
            ),
            Text(
              'Live Channels',
              textScaleFactor: 1.25,
            ),
          ],
          tabBarProperties: TabBarProperties(
            indicatorWeight: 5,
            labelColor: S.colors.themeIndigo,
            unselectedLabelColor: S.colors.grey,
            indicatorColor: S.colors.themeIndigo,
          ),
          views: [
            Container(
              color: S.colors.mainBackgroundColor,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  buildCategoriesList(),
                  buildFilterButton(),
                ],
              ),
            ),
            Container(
              color: S.colors.mainBackgroundColor,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  buildLiveChannelsList(),
                  buildFilterButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildFilterButton() {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      decoration: BoxDecoration(
        color: S.colors.themeIndigo,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Feather.filter, color: S.colors.white),
          const SizedBox(width: 18),
          Text("Filter & Sort",
              style: S.textStyles.semiBoldWhite, textScaleFactor: 1.25),
        ],
      ),
    );
  }

  buildLiveChannelsList() {
    var dw = MediaQuery.of(context).size.width;
    var dh = MediaQuery.of(context).size.height;
    return ListView.builder(
      itemCount: liveChannelStreams.length,
      itemBuilder: ((context, index) {
        return Column(
          children: [
            Container(
              height: dh * .25,
              margin: const EdgeInsets.only(
                top: 24,
                left: 8,
                right: 8,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: S.colors.grey,
                image: DecorationImage(
                  image: CachedNetworkImageProvider(
                    liveChannelStreams[index].streamImageUrl,
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
                          "${liveChannelStreams[index].totalViewer} Viewers",
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
                              liveChannelStreams[index].channelImageUrl,
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
                            liveChannelStreams[index].channelName,
                            style: S.textStyles.semiBoldWhite,
                            textScaleFactor: 1.2,
                          ),
                          const SizedBox(height: 12),
                          Text(
                            liveChannelStreams[index].streamTitle,
                            style: S.textStyles.lightWhite,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textScaleFactor: 1,
                          ),
                          const SizedBox(height: 12),
                          Text(
                            liveChannelStreams[index].gameName,
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
                                child: Text(
                                    liveChannelStreams[index].categories[0],
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
                                child: Text(
                                    liveChannelStreams[index].categories[1],
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
                                child: Text(
                                    liveChannelStreams[index].categories[2],
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
      }),
    );
  }

  buildCategoriesList() {
    var dw = MediaQuery.of(context).size.width;
    var dh = MediaQuery.of(context).size.height;
    return ListView.builder(
      itemCount: gameList.length,
      padding: const EdgeInsets.only(top: 16),
      itemBuilder: (context, index) {
        return Row(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                margin: const EdgeInsets.only(left: 12, top: 12),
                height: dh * .2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: S.colors.grey,
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                      gameList[index].imgUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 8,
                child: Padding(
                  padding: const EdgeInsets.only(left: 26.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        gameList[index].name,
                        style: S.textStyles.semiBoldWhite,
                        textScaleFactor: 1.5,
                      ),
                      const SizedBox(height: 18),
                      Text(
                        "${gameList[index].totalViewer} viewers",
                        style: S.textStyles.semiBoldWhite,
                        textScaleFactor: 1.25,
                      ),
                      const SizedBox(height: 18),
                      Container(
                        padding: const EdgeInsets.only(right: 12, bottom: 8),
                        child: Wrap(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 12),
                              margin: const EdgeInsets.only(bottom: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: S.colors.themeGrey,
                              ),
                              child: Text(gameList[index].categories[0],
                                  style: S.textStyles.mediumWhite),
                            ),
                            const SizedBox(width: 12),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 12),
                              margin: const EdgeInsets.only(bottom: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: S.colors.themeGrey,
                              ),
                              child: Text(gameList[index].categories[1],
                                  style: S.textStyles.mediumWhite),
                            ),
                            const SizedBox(width: 12),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 12),
                              margin: const EdgeInsets.only(bottom: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: S.colors.themeGrey,
                              ),
                              child: Text(gameList[index].categories[2],
                                  style: S.textStyles.mediumWhite),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ))
          ],
        );
      },
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(
        'Browse',
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
