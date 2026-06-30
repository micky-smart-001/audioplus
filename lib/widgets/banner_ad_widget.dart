BannerAd bannerAd =
    BannerAd(
  size: AdSize.banner,
  adUnitId:
      'YOUR_BANNER_ID',
  listener:
      BannerAdListener(),
  request: const AdRequest(),
);

bannerAd.load();

SizedBox(
  height:
      bannerAd.size.height
          .toDouble(),
  width:
      bannerAd.size.width
          .toDouble(),
  child: AdWidget(
    ad: bannerAd,
  ),
)