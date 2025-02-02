import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../AboutUs.dart';
import '../GifsImages.dart';
import '../ImagesList.dart';
import '../MemeGenerator.dart';
import '../MessagesList.dart';
import '../QuotesList.dart';
import '../ShayariList.dart';
import '../StatusList.dart';
import 'Strings.dart';

class AdService {
  static var adCount =2;

  static String get admobBannerAdUnitId => Platform.isAndroid
      ? Strings.androidAdmobBannerId
      : Strings.iosAdmobBannerId;
  static String get admobInterstitialAdUnitId => Platform.isAndroid
      ? Strings.androidAdmobInterstitialId
      : Strings.iosAdmobInterstitialId;
  static String get fbBannerAdUnitId =>
      Platform.isAndroid ? "" : Strings.iosFBBannerId;

  static String get fbInterstitialAdUnitId =>
      Platform.isAndroid ? "" : Strings.iosFBInterstitialId;

  static BannerAd? admobBannerAd;
  static bool isAdmobBannerLoaded = false;
  static bool isfbInterstitialAdLoaded = false;

  BannerAd? banner;

  static InterstitialAd? admobInterstitialAd;
  static bool isAdmobInterstitialAdLoaded = false;
  static bool isAdmobInterstitialAdReady = false;
  static int _numInterstitialLoadAttempts = 0;
  static int maxFailedLoadAttempts = 3;

  static String interstitialTag = "";

  static BuildContext? context;

  static initialize() {
    
      MobileAds.instance.initialize();
    

    AdService.createBannerAd().load();

    //admobInterstitialAd = AdService.createInterstialAd()..load();
    AdService.createInterstialAd();
  }

  static BannerAd createBannerAd() {
    admobBannerAd = BannerAd(
        size: AdSize.largeBanner,
        adUnitId: Strings.iosAdmobBannerId,
        listener: BannerAdListener(
          onAdLoaded: (_) {
            isAdmobBannerLoaded = true;
            debugPrint("Admob Banner Ad Loaded");
            checkForAd();
          },
          onAdFailedToLoad: (_, LoadAdError error) {
            debugPrint("Admob Banner Ad Error: $error");
            _.dispose();
            isAdmobBannerLoaded = false;
          },
        ),
        request: const AdRequest());
    return admobBannerAd!;
  }

  static Widget checkForAd() {
    if (isAdmobBannerLoaded == true) {
      return AdWidget(ad: admobBannerAd!, key: UniqueKey());
    } else {
      return Container();
    }
  }

  static createInterstialAd() {
    InterstitialAd.load(
      adUnitId: Platform.isAndroid
          ? Strings.androidAdmobInterstitialId
          : Strings.iosAdmobInterstitialId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (InterstitialAd ad) {
          debugPrint('$ad loaded');
          admobInterstitialAd = ad;
          _numInterstitialLoadAttempts = 0;
          admobInterstitialAd!.setImmersiveMode(true);
        },
        onAdFailedToLoad: (LoadAdError error) {
          debugPrint('InterstitialAd failed to load: $error.');
          _numInterstitialLoadAttempts += 1;
          admobInterstitialAd = null;

          isAdmobInterstitialAdReady = false;
          goTo(context, interstitialTag);

          if (_numInterstitialLoadAttempts <= maxFailedLoadAttempts) {
            //createInterstialAd();
          }
        },
      ),
    );
  }

  static void showInterstitialAd() {
    //admobInterstitialAd?.dispose();
    //admobInterstitialAd = null;
    if (admobInterstitialAd == null) {
      admobInterstitialAd = createInterstialAd();
      return;
    } else {
      adCount++;
      
      debugPrint("adCount $adCount");

      if(adCount % 3 != 0)
      {
        goTo(context, interstitialTag);
        return;
      }
      
    
      //goTo(context, interstitialTag);

    }

    admobInterstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (InterstitialAd ad) =>
          debugPrint('$ad onAdShowedFullScreenContent.'),
      onAdDismissedFullScreenContent: (InterstitialAd ad) {
        debugPrint('$ad onAdDismissedFullScreenContent.');
        ad.dispose();
        isAdmobInterstitialAdReady = false;
        goTo(context, interstitialTag);
        createInterstialAd();
      },
      onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
        debugPrint('$ad onAdFailedToShowFullScreenContent: $error');
        ad.dispose();
        //createInterstialAd();
      },
    );
    admobInterstitialAd!.show();
    admobInterstitialAd = null;
  }

  static void goTo(BuildContext? context, String interstitialTag) {
    switch (interstitialTag) {
     case "message":
        Navigator.of(context!).push(MaterialPageRoute(
            builder: (BuildContext context) => MessagesList()));
        break;
      case "lang_english":
        Navigator.of(context!).push(MaterialPageRoute(
            builder: (BuildContext context) => MessagesList(type: "1")));
        break;

      case "lang_french":
        Navigator.of(context!).push(MaterialPageRoute(
            builder: (BuildContext context) => MessagesList(type: "2")));
        break;

      case "lang_german":
        Navigator.of(context!).push(MaterialPageRoute(
            builder: (BuildContext context) => MessagesList(type: "3")));
        break;

      case "lang_hindi":
        Navigator.of(context!).push(MaterialPageRoute(
            builder: (BuildContext context) => MessagesList(type: "4")));
        break;

      case "lang_italian":
        Navigator.of(context!).push(MaterialPageRoute(
            builder: (BuildContext context) => MessagesList(type: "5")));
        break;

      case "lang_portuguese":
        Navigator.of(context!).push(MaterialPageRoute(
            builder: (BuildContext context) => MessagesList(type: "6")));
        break;

      case "lang_spanish":
        Navigator.of(context!).push(MaterialPageRoute(
            builder: (BuildContext context) => MessagesList(type: "7")));
        break;
      
      case "wedding_data":
        Navigator.of(context!).push(MaterialPageRoute(
            builder: (BuildContext context) => MessagesList(type: "8")));
        break;
      case "gif":
        Navigator.of(context!).push(
            MaterialPageRoute(builder: (BuildContext context) => GifsImages()));
        break;

      case "image":
        Navigator.of(context!).push(
            MaterialPageRoute(builder: (BuildContext context) => ImagesList()));
        break;

      case "shayari":
        Navigator.of(context!).push(MaterialPageRoute(
            builder: (BuildContext context) => ShayariList()));
        break;

      case "meme":
        Navigator.of(context!).push(MaterialPageRoute(builder: (BuildContext context) => MemeGenerator()));
        break;

      case "about":
        Navigator.of(context!).push(
            MaterialPageRoute(builder: (BuildContext context) => AboutUs()));
        break;

      case "status":
        Navigator.of(context!).push(
            MaterialPageRoute(builder: (BuildContext context) => StatusList()));
        break;

      case "quotes":
        Navigator.of(context!).push(
            MaterialPageRoute(builder: (BuildContext context) => QuotesList()));
        break;
      default:
    
    }
  }
}
