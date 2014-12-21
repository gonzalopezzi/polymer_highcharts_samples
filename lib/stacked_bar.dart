// Copyright (c) 2014, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
library stacked_bar;

import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('stacked-bar')
class StackedBar extends PolymerElement {
  factory StackedBar () => new Element.tag('stacked-bar');
  StackedBar.created() : super.created();
  
  @observable String code = 
      "<highcharts-polymer\n" + 
      "        chartTitle=\"Stacked Bar\" type=\"bar\" creditsEnabled=\"false\"\n" + 
      "        backgroundColor=\"rgba(0,0,0,0)\"\n" + 
      "        plotOptions=\"\n" + 
      "            {\n" + 
      "                'series': {\n" + 
      "                    'stacking': 'normal'\n" + 
      "                }\n" + 
      "            }\n" + 
      "        \">\n" + 
      "    <highcharts-x-axis categories=\"['Apples', 'Oranges', 'Pears', 'Grapes', 'Bananas']\"></highcharts-x-axis> \n" + 
      "    <highcharts-y-axis min=\"0\" axisTitle=\"Total Fruit Consumption\"></highcharts-y-axis>\n" + 
      "    <highcharts-series name=\"John\"  numData=\"[5, 3, 4, 7, 2]\"></highcharts-series>\n" + 
      "    <highcharts-series name=\"Jane\"  numData=\"[2, 2, 3, 2, 1]\"></highcharts-series>\n" + 
      "    <highcharts-series name=\"Joe\"   numData=\"[3, 4, 4, 2, 5]\"></highcharts-series>\n" + 
      "</highcharts-polymer>";
}
