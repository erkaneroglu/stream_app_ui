import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:streamo/model/browse_models/browse_category_item.dart';
import 'package:streamo/model/discover_models/discover_chip_item.dart';
import 'package:streamo/model/discover_models/discover_may_like_stream_item.dart';
import 'package:streamo/model/discover_models/discover_stream_item.dart';
import 'package:streamo/model/home_models/game_item.dart';

import '../model/home_models/home_stream_item.dart';

class Data {
  List<GameItem> homeGameItems = [
    GameItem(
      name: "DotA 2",
      totalViewer: "156K",
      imgUrl: "https://static-cdn.jtvnw.net/ttv-boxart/29595-285x380.jpg",
    ),
    GameItem(
      name: "FIFA 23",
      totalViewer: "245K",
      imgUrl:
          "https://static-cdn.jtvnw.net/ttv-boxart/1745202732_IGDB-285x380.jpg",
    ),
    GameItem(
      name: "Elden Ring",
      totalViewer: "84K",
      imgUrl: "https://static-cdn.jtvnw.net/ttv-boxart/512953_IGDB-285x380.jpg",
    ),
    GameItem(
      name: "Black Desert",
      totalViewer: "13K",
      imgUrl: "https://static-cdn.jtvnw.net/ttv-boxart/386821_IGDB-285x380.jpg",
    ),
    GameItem(
      name: "Lost Ark",
      totalViewer: "122K",
      imgUrl: "https://static-cdn.jtvnw.net/ttv-boxart/490100-285x380.jpg",
    ),
    GameItem(
      name: "Minecraft",
      totalViewer: "108K",
      imgUrl: "https://static-cdn.jtvnw.net/ttv-boxart/27471_IGDB-285x380.jpg",
    ),
  ];

  List<HomeStreamItem> homeStreamList = [
    HomeStreamItem(
      channelName: "Video Oyun",
      streamTitle: "Overwatch 2 Günü LETS GOO!!!",
      totalViewer: "2.4K",
      streamImageUrl:
          "https://www.gameinformer.com/sites/default/files/styles/full/public/2022/09/29/6e3299b8/ow2-2.jpg",
      channelImageUrl:
          "https://static-cdn.jtvnw.net/jtv_user_pictures/1eda049c091b0f04-profile_image-70x70.jpeg",
      categories: ["FPS", "Shooter"],
    ),
    HomeStreamItem(
      channelName: "1000DAYS",
      streamTitle: "Günlerden DOTA 2",
      totalViewer: "1.6K",
      streamImageUrl:
          "https://cdn.akamai.steamstatic.com/steam/apps/570/ss_86d675fdc73ba10462abb8f5ece7791c5047072c.1920x1080.jpg?t=1674071345",
      channelImageUrl:
          "https://static-cdn.jtvnw.net/jtv_user_pictures/bffe2a31-fcaa-4ba2-a479-cad518942f30-profile_image-70x70.jpeg",
      categories: ["MOBA", "Action"],
    ),
    HomeStreamItem(
      channelName: "Grimnax",
      streamTitle: "GTA V RP Bol Eğlence",
      totalViewer: "2K",
      streamImageUrl: "https://i.ytimg.com/vi/rOpariPFAeM/maxresdefault.jpg",
      channelImageUrl:
          "https://static-cdn.jtvnw.net/jtv_user_pictures/cae142b9-473b-4360-ba65-708e0697cb82-profile_image-70x70.png",
      categories: ["FPS", "Shooter"],
    ),
    HomeStreamItem(
      channelName: "Çağatay Akman",
      streamTitle: "İlk defa Türk Oyunu Oynuyorum..",
      totalViewer: "829",
      streamImageUrl: "https://i.ytimg.com/vi/5ihAx4BaX-w/maxresdefault.jpg",
      channelImageUrl:
          "https://static-cdn.jtvnw.net/jtv_user_pictures/0f6fbd48-036f-4bea-a3b5-ed589e18e74f-profile_image-70x70.png",
      categories: ["Shooter", "FPS"],
    ),
    HomeStreamItem(
      channelName: "MasterOfRox",
      streamTitle: "BDO Yeni Güncelleme İlgili Konuşak kop gel",
      totalViewer: "1.8K",
      streamImageUrl: "https://s2.dmcdn.net/v/95Bt_1Kz-K1ES-zQb/x1080",
      channelImageUrl:
          "https://static-cdn.jtvnw.net/jtv_user_pictures/f5d5fc6b-a707-4b01-8816-28099445fcae-profile_image-70x70.png",
      categories: ["Action", "RPG"],
    ),
  ];

  List<DiscoverStreamItem> discoverStreamList = [
    DiscoverStreamItem(
      imgUrl:
          "https://cdn.akamai.steamstatic.com/steam/apps/570/ss_f9ebafedaf2d5cfb80ef1f74baa18eb08cad6494.1920x1080.jpg?t=1674071345",
      totalViewers: "9.4K",
    ),
    DiscoverStreamItem(
      imgUrl: "https://i.ytimg.com/vi/UPtoIy-oPWQ/maxresdefault.jpg",
      totalViewers: "1.7K",
    ),
    DiscoverStreamItem(
      imgUrl:
          "https://cdn3.whatculture.com/images/2020/01/0034edd2d55ea7d0-600x338.jpg",
      totalViewers: "12.1K",
    ),
    DiscoverStreamItem(
      imgUrl: "https://i.ytimg.com/vi/xx8kQ4s5hCY/maxresdefault.jpg",
      totalViewers: "173",
    ),
    DiscoverStreamItem(
      imgUrl: "https://i.ytimg.com/vi/cC3NHzm9cCg/maxresdefault.jpg",
      totalViewers: "32.9K",
    ),
  ];

  List<DiscoverChipItem> discoverChipList = [
    DiscoverChipItem(name: "Games", icon: Ionicons.ios_game_controller),
    DiscoverChipItem(name: "IRL", icon: Ionicons.person),
    DiscoverChipItem(name: "Music", icon: Ionicons.musical_notes),
    DiscoverChipItem(name: "Esport", icon: Ionicons.ios_trophy),
    DiscoverChipItem(name: "Food and Drink", icon: Ionicons.pizza),
    DiscoverChipItem(name: "Sports", icon: Ionicons.tennisball_sharp),
  ];

  List<DiscoverMayLikeStreamItem> discoverMayLikeStreamItemList = [
    DiscoverMayLikeStreamItem(
      channelName: "Alphonzo",
      streamTitle: "Kaldigimiz Yerden Devam / !dc !yt ",
      totalViewer: "2.4K",
      gameName: "Minecraft",
      streamImageUrl:
          "https://i.pinimg.com/originals/0e/22/4f/0e224f8fe90372ec96db32ca9ea98d72.jpg",
      channelImageUrl:
          "https://static-cdn.jtvnw.net/jtv_user_pictures/6652d250-aa67-4d0e-9ddc-f4ee30f35f95-profile_image-70x70.png",
      categories: ["Turkish", "DropsEnabled", "Happy"],
    ),
    DiscoverMayLikeStreamItem(
      channelName: "scump",
      streamTitle: "OpTic WATCH PARTY!",
      totalViewer: "12.2K",
      gameName: "Call of Duty: Modern Warfare II",
      streamImageUrl:
          "https://cdn.akamai.steamstatic.com/steam/apps/570/ss_86d675fdc73ba10462abb8f5ece7791c5047072c.1920x1080.jpg?t=1674071345",
      channelImageUrl:
          "https://www.nme.com/wp-content/uploads/2022/08/modern-warfare-2-las-almas-1.jpg",
      categories: ["Shooter", "FPS", "English", "Esport"],
    ),
    DiscoverMayLikeStreamItem(
      channelName: "Blastryan",
      streamTitle:
          "Holy Priest M+ | 2652 Rio | !method #methodcommunity #holypriest",
      totalViewer: "189",
      gameName: "World of Warcraft",
      streamImageUrl:
          "https://i.pinimg.com/originals/ec/7b/d1/ec7bd1ea1c9848ad9580df75dce40176.jpg",
      channelImageUrl:
          "https://static-cdn.jtvnw.net/jtv_user_pictures/cae142b9-473b-4360-ba65-708e0697cb82-profile_image-70x70.png",
      categories: ["MMORPG", "French", "Healer", "HolyPriest", "DropsEnabled"],
    ),
    DiscoverMayLikeStreamItem(
      channelName: "Ege Arseven",
      streamTitle:
          "!probably HEEEEEY JUUUUDE. BELLINGHAM. GEL YERİN HAZIR BURADAYIZ BEKLİYORUZ BE",
      totalViewer: "3.6K",
      gameName: "FIFA 23",
      streamImageUrl: "https://i.ytimg.com/vi/bpy-w3i3OjA/maxresdefault.jpg",
      channelImageUrl:
          "https://static-cdn.jtvnw.net/jtv_user_pictures/66eeeffa-53b8-4b95-b5f8-295fe6077465-profile_image-70x70.png",
      categories: ["Turkish", "Football", "Happy", "Crazy", "DropsEnabled"],
    ),
  ];

  List<GameItem> discoverGameItems = [
    GameItem(
      name: "League of Legends",
      totalViewer: "630K",
      imgUrl: "https://static-cdn.jtvnw.net/ttv-boxart/21779-285x380.jpg",
    ),
    GameItem(
      name: "Genshin Impact",
      totalViewer: "26K",
      imgUrl: "https://static-cdn.jtvnw.net/ttv-boxart/513181-285x380.jpg",
    ),
    GameItem(
      name: "Apex Legends",
      totalViewer: "159.2K",
      imgUrl: "https://static-cdn.jtvnw.net/ttv-boxart/511224-285x380.jpg",
    ),
    GameItem(
      name: "FIFA 2023",
      totalViewer: "245K",
      imgUrl:
          "https://static-cdn.jtvnw.net/ttv-boxart/1745202732_IGDB-285x380.jpg",
    ),
    GameItem(
      name: "Lost Ark",
      totalViewer: "122K",
      imgUrl: "https://static-cdn.jtvnw.net/ttv-boxart/490100-285x380.jpg",
    ),
    GameItem(
      name: "Minecraft",
      totalViewer: "108K",
      imgUrl: "https://static-cdn.jtvnw.net/ttv-boxart/27471_IGDB-285x380.jpg",
    ),
  ];

  List<DiscoverMayLikeStreamItem> discoverOverwatchList = [
    DiscoverMayLikeStreamItem(
      channelName: "pikomane",
      streamTitle: "diamond solo q",
      totalViewer: "14.9K",
      gameName: "Valorant",
      streamImageUrl:
          "https://image.winudf.com/v2/image1/Y29tLnZhbHdhbGsuZ2FtZXBsYXlfc2NyZWVuXzBfMTYxOTE1MzU2Ml8wOTc/screen-0.jpg?fakeurl=1&type=.webp",
      channelImageUrl:
          "https://static-cdn.jtvnw.net/jtv_user_pictures/6cd4de40-1a83-46c7-aea5-3bd73f90e7e4-profile_image-70x70.png",
      categories: ["English", "FPS", "Shooter"],
    ),
    DiscoverMayLikeStreamItem(
      channelName: "animetue",
      streamTitle: "On test pour la premiere fois ce jeu pépite",
      totalViewer: "51.4K",
      gameName: "Detroit: Become Human",
      streamImageUrl:
          "https://media.game-debate.com/images/articles/3203/detroit-become-human34.jpg",
      channelImageUrl:
          "https://static-cdn.jtvnw.net/jtv_user_pictures/13e55cbe-a1b0-4f4c-b69b-2748274b9e48-profile_image-70x70.png",
      categories: ["French", "DropsEnabled", "Happy"],
    ),
    DiscoverMayLikeStreamItem(
      channelName: "Elwind",
      streamTitle: "gececi tayfaa | instagram.com/elwind",
      totalViewer: "9.5K",
      gameName: "League of Legends",
      streamImageUrl: "https://i.ytimg.com/vi/p4QG59y6FGE/maxresdefault.jpg",
      channelImageUrl:
          "https://static-cdn.jtvnw.net/jtv_user_pictures/54799134-a516-49bb-8d80-389551c0682f-profile_image-70x70.jpg",
      categories: ["Turkish", "Chat", "MOBA"],
    ),
    DiscoverMayLikeStreamItem(
      channelName: "hJune",
      streamTitle:
          "[EXCLUSIVE DROPS] LONG STREAM !youtube !hjune2 !ironside !rustoria",
      totalViewer: "8.2K",
      gameName: "Rust",
      streamImageUrl:
          "http://assets1.ignimgs.com/2018/02/24/rust-screenshot-20180223---04472514-1519437662330.png",
      channelImageUrl:
          "https://static-cdn.jtvnw.net/jtv_user_pictures/7610c39060476845-profile_image-70x70.png",
      categories: ["English", "DropsEnabled", "Survival"],
    ),
    DiscoverMayLikeStreamItem(
      channelName: "XQN_TheSad",
      streamTitle: "Exploring new patch",
      totalViewer: "3.3K",
      gameName: "Heartstone",
      streamImageUrl:
          "https://static.wikia.nocookie.net/wowpedia/images/3/36/Hearthstone-Red_battlefield.jpg/revision/latest?cb=20140317231033",
      channelImageUrl:
          "https://static-cdn.jtvnw.net/jtv_user_pictures/aee9bad3-cac4-459a-8854-8584bc30d6d9-profile_image-70x70.png",
      categories: ["English", "DropsEnabled", "Strategy"],
    ),
  ];

  List<GameItem> discoverReleasedGames = [
    GameItem(
      name: "Path of Exile",
      totalViewer: "12.4K",
      imgUrl: "https://static-cdn.jtvnw.net/ttv-boxart/29307_IGDB-285x380.jpg",
    ),
    GameItem(
      name: "Destiny 2",
      totalViewer: "235K",
      imgUrl: "https://static-cdn.jtvnw.net/ttv-boxart/497057-285x380.jpg",
    ),
    GameItem(
      name: "World of Tanks",
      totalViewer: "35.2K",
      imgUrl: "https://static-cdn.jtvnw.net/ttv-boxart/27546-285x380.jpg",
    ),
    GameItem(
      name: "Red Dead Redemption 2",
      totalViewer: "7.5K",
      imgUrl: "https://static-cdn.jtvnw.net/ttv-boxart/493959_IGDB-285x380.jpg",
    ),
    GameItem(
      name: "Dead By Day Light",
      totalViewer: "32.8K",
      imgUrl: "https://static-cdn.jtvnw.net/ttv-boxart/491487-285x380.jpg",
    ),
    GameItem(
      name: "Mario Party Superstarts",
      totalViewer: "4.8K",
      imgUrl:
          "https://static-cdn.jtvnw.net/ttv-boxart/1068239917_IGDB-285x380.jpg",
    ),
  ];

  List<BrowseCategoryItem> browseCategoryItem = [
    BrowseCategoryItem(
      name: "DotA 2",
      totalViewer: "156K",
      categories: ["MOBA", "Action", "Strategy"],
      imgUrl: "https://static-cdn.jtvnw.net/ttv-boxart/29595-285x380.jpg",
    ),
    BrowseCategoryItem(
      name: "FIFA 23",
      totalViewer: "245K",
      categories: ["Sport", "Football", "Esport"],
      imgUrl:
          "https://static-cdn.jtvnw.net/ttv-boxart/1745202732_IGDB-285x380.jpg",
    ),
    BrowseCategoryItem(
      name: "Elden Ring",
      totalViewer: "84K",
      categories: ["RPG", "Action", "Strategy"],
      imgUrl: "https://static-cdn.jtvnw.net/ttv-boxart/512953_IGDB-285x380.jpg",
    ),
    BrowseCategoryItem(
      name: "Black Desert",
      totalViewer: "13K",
      categories: ["MMORPG", "Action", "Strategy"],
      imgUrl: "https://static-cdn.jtvnw.net/ttv-boxart/386821_IGDB-285x380.jpg",
    ),
    BrowseCategoryItem(
      name: "Lost Ark",
      totalViewer: "122K",
      categories: ["MMORPG", "Izometric View", "Action"],
      imgUrl: "https://static-cdn.jtvnw.net/ttv-boxart/490100-285x380.jpg",
    ),
    BrowseCategoryItem(
      name: "Minecraft",
      totalViewer: "108K",
      categories: ["Survival", "Craft", "Open World"],
      imgUrl: "https://static-cdn.jtvnw.net/ttv-boxart/27471_IGDB-285x380.jpg",
    ),
  ];
}
