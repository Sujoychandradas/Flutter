import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Example extends StatefulWidget {
  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  final AdManagerBannerAd myBanner = AdManagerBannerAd(
    sizes: [AdSize.banner],
    // https://developers.google.com/admob/android/test-ads for android ad testing ID
    //https://developers.google.com/admob/ios/test-ads fo IOS ad testing ID
    // adUnitId: Platform.isAndroid
    //     ? 'ca-app-pub-3940256099942544/6300978111'
    //     : 'ca-app-pub-3940256099942544/2934735716',

    adUnitId: Platform.isAndroid
        ? 'ca-app-pub-3940256099942544/6300978111'
        : 'ca-app-pub-3940256099942544/2934735716',

    request: AdManagerAdRequest(),
    listener: AdManagerBannerAdListener(
        // Called when an ad is successfully received.
        onAdLoaded: (Ad ad) => print('Ad Loaded.'),
        // Called when an ad request failed.
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          // debugPrint('AdManagerBannerAd failed to load: $error');

          // Dispose the ad here to free resources.
          ad.dispose();
          print('Ad failed to load: $error');
        },
        // Called when an ad opens an overlay that covers the screen.
        onAdOpened: (Ad ad) => print('Ad Opend'),
        // Called when an ad removes an overlay that covers the screen.
        onAdClosed: (Ad ad) => print('Ad closed'),
        // Called when an impression occurs on the ad.
        onAdImpression: (Ad ad) => print('Ad impression')),
  );

  final MyInterstitialAd = AdManagerInterstitialAd.load(
      adUnitId: Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/1033173712'
          : 'ca-app-pub-3940256099942544/4411468910',
      request: const AdManagerAdRequest(),
      adLoadCallback: AdManagerInterstitialAdLoadCallback(
        // Called when an ad is successfully received.
        onAdLoaded: (AdManagerInterstitialAd ad) {
          // debugPrint('$ad loaded.');
          ad.show();
          // Keep a reference to the ad so you can show it later.
          // _interstitialAd = ad;
        },
        // Called when an ad request failed.
        onAdFailedToLoad: (LoadAdError error) {
          debugPrint('AdManagerInterstitialAd failed to load: $error');
        },
      ));

  // TODO: replace this test ad unit with your own ad unit.
  @override
  void initState() {
    myBanner.load();
    MyInterstitialAd;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ad-Mob'),
      ),
      body: Column(children: [
        Expanded(
          child: Container(
            color: Colors.blue,
          ),
        ),
        Container(
          height: 50,
          child: AdWidget(ad: myBanner),
        ),
      ]),
    );
  }
}
