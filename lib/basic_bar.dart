// Copyright (c) 2014, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
library basic_bar;

import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('basic-bar')
class BasicBar extends PolymerElement {
  factory BasicBar () => new Element.tag('basic-bar');
  BasicBar.created() : super.created();
  
  @observable String code = 
      "<highcharts-polymer\n" + 
      "        chartTitle=\"Basic Bar\" type=\"bar\" creditsEnabled=\"false\"\n" + 
      "        backgroundColor=\"rgba(0,0,0,0)\">\n" + 
      "    <highcharts-x-axis categories=\"['Africa', 'America', 'Asia', 'Europe', 'Oceania']\"></highcharts-x-axis>\n" + 
      "    <highcharts-y-axis min=\"0\" axisTitle=\"\"></highcharts-y-axis>\n" + 
      "    <highcharts-series name=\"Year 1800\" numData=\"[107, 31, 635, 203, 2]\"></highcharts-series>\n" + 
      "    <highcharts-series name=\"Year 1900\" numData=\"[133, 156, 947, 408, 6]\"></highcharts-series>\n" + 
      "    <highcharts-series name=\"Year 2008\" numData=\"[973, 914, 4054, 732, 34]\"></highcharts-series>\n" + 
      "</highcharts-polymer>";
}
