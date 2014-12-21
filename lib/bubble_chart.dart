// Copyright (c) 2014, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
library bubble_chart;

import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('bubble-chart')
class BubbleChart extends PolymerElement {
  factory BubbleChart () => new Element.tag('bubble-chart');
  BubbleChart.created() : super.created();
  
  @observable List bubbleSeries1 = [[97, 36, 79], [94, 74, 60], [68, 76, 58], [64, 87, 56], [68, 27, 73], [74, 99, 42], [7, 93, 87], [51, 69, 40], [38, 23, 33], [57, 86, 31]];
  @observable List bubbleSeries2 = [[25, 10, 87], [2, 75, 59], [11, 54, 8], [86, 55, 93], [5, 3, 58], [90, 63, 44], [91, 33, 17], [97, 3, 56], [15, 67, 48], [54, 25, 81]];
  @observable List bubbleSeries3 = [[47, 47, 21], [20, 12, 4], [6, 76, 91], [38, 30, 60], [57, 98, 64], [61, 17, 80], [83, 60, 13], [67, 78, 75], [64, 12, 10], [30, 77, 82]];
  
  @observable String code = 
      "<highcharts-polymer \n" + 
      "        chartTitle=\"Bubble Chart\" type=\"bubble\" creditsEnabled=\"false\"\n" + 
      "        backgroundColor=\"rgba(0,0,0,0)\">\n" + 
      "    <highcharts-series numData=\"{{bubbleSeries1}}\"></highcharts-series>\n" + 
      "    <highcharts-series numData=\"{{bubbleSeries2}}\"></highcharts-series>\n" + 
      "    <highcharts-series numData=\"{{bubbleSeries3}}\"></highcharts-series>\n" + 
      "</highcharts-polymer>";
  
}
