import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class HomeView2 extends StatefulWidget {
  const HomeView2({super.key});

  @override
  State<HomeView2> createState() => _HomeView2State();
}

class _HomeView2State extends State<HomeView2> {
  @override
  void initState() {
    
    super.initState();
    initBannerAd();
  }
  late BannerAd  bannerAd;
  bool isAdLoaded = false;
  var adUnit = 'ca-app-pub-3940256099942544/6300978111'; //testing Ad Id

  initBannerAd(){
    bannerAd = BannerAd(
      size: AdSize.banner, 
      adUnitId: adUnit, 
      listener: BannerAdListener(
        onAdLoaded: (ad){
          setState(() {
            isAdLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
          print(error);
        },
      ), 
      request: const AdRequest());
      bannerAd.load();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Banner Ads'),),
      body: const Center(child: Text('Banner Ads'),),
      bottomNavigationBar: isAdLoaded ? SizedBox(
        height: bannerAd.size.height.toDouble(),
        width: bannerAd.size.width.toDouble(),
        child: AdWidget(ad: bannerAd),
      ) : const SizedBox(),
    );
  }
}