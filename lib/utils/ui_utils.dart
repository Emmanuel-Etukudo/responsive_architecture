

import 'package:flutter/material.dart';
import 'package:responsive_architecture/enums/device_screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQuery){
  var orientation = mediaQuery.orientation;

  // fixed device width changes with orientation
  double deviceWidth = 0;

  // check orientation
  if (orientation == Orientation.landscape){
    deviceWidth = mediaQuery.size.height;
  }else{
    deviceWidth = mediaQuery.size.width;
  }
  // select device screen type based on device width
  if(deviceWidth > 950){
    return DeviceScreenType.desktop;
  }
  if( deviceWidth > 600){
    return DeviceScreenType.tablet;
  }

  return DeviceScreenType.mobile;

}