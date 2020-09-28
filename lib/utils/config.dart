import 'package:flutter/material.dart';

class SizeConfig {
  static double _screenwidth;
  static double _screenheight;
  static double _blocksizehorizontal = 0;
  static double _blocksizeverticle = 0;

  static double vmultiplier;
  static double hmultiplier;

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      _screenwidth = constraints.maxWidth;
      _screenheight = constraints.maxHeight;
    } else {
      // reverse
      _screenwidth = constraints.maxHeight;
      _screenheight = constraints.maxWidth;
    }

    _blocksizehorizontal = _screenwidth / 100;
    _blocksizeverticle = _screenheight / 100;

// public multipliers
    vmultiplier = _blocksizeverticle;
    hmultiplier = _blocksizehorizontal;

    // divide the result of this with the text ex: text = 28 & _blocksize 8.84  = 3.3 something....
    print(_blocksizehorizontal);
    print(_blocksizeverticle);
  }
}
