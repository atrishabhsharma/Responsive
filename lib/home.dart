import 'package:flutter/material.dart';
import 'package:reponsive/utils/Strings.dart';
import 'package:reponsive/utils/config.dart';
import 'package:reponsive/utils/images.dart';
import 'package:reponsive/utils/styling.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(flex: 9, child: WelcomeContentScreen()),
          Expanded(flex: 1, child: ButtonWidget()),
        ],
      )),
    );
  }
}

class WelcomeContentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(top: 1 * SizeConfig.vmultiplier),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: FittedBox(
                    // this will handle everything for us....
                    child: Text(
                      Strings.welcomeScreenTitle,
                      style: Theme.of(context).textTheme.headline5,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )),
          Expanded(
            flex: 3,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(vertical: 1.1 * SizeConfig.vmultiplier),
              child: Image.asset(
                Images.homeImage,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.topCenter,
                child: FittedBox(
                  child: Text(
                    Strings.welcomeScreenSubTitle,
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.center,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 1 * SizeConfig.vmultiplier),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          color: AppTheme.topBarBackgroundColor,
        ),
        child: Row(
          children: [
            Expanded(child: Icon(Icons.rotate_left)),
            Text(
              Strings.getStartedbutton,
              style: Theme.of(context).textTheme.button,
            ),
            Expanded(child: Icon(Icons.rotate_right)),
          ],
        ),
      ),
    );
  }
}
