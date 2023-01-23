class HomeStreamItem {
  String channelName;
  String streamTitle;
  String totalViewer;
  String streamImageUrl;
  String channelImageUrl;
  List<String> categories;

  HomeStreamItem({
    required this.channelName,
    required this.streamTitle,
    required this.totalViewer,
    required this.streamImageUrl,
    required this.channelImageUrl,
    required this.categories,
  });
}
