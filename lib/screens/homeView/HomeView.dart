import 'package:flutter/material.dart';
//import 'package:admob_flutter/admob_flutter.dart';
import 'dart:io';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    //Admob.requestTrackingAuthorization();  //ye user se permission lenay k liay hai 
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ads'),),
      body:  Column(
        children: [
        //   Container(height: 60,//android->app->src->main men jana hai or copy paste karna hai documentation se (ye android k liay setup hai),
        //   width: double.infinity,
        //   color: Colors.amber,
        //  // child: AdmobBanner(
        //   //  adUnitId: getBannerAdUnitId()!, adSize: AdmobBannerSize.BANNER),), 
        //   Text('Native Ads') //ios->Runner->Info.plist men jana hai or copy paste karna hai documentation se (ye ios k liay setup hai)
        ],
      ),
    );
  }
  String? getBannerAdUnitId() {
  if (Platform.isIOS) {
    return 'ca-app-pub-3940256099942544/2934735716';
  } else if (Platform.isAndroid) {
    return 'ca-app-pub-3940256099942544/6300978111';
  }
  return null;
}
}