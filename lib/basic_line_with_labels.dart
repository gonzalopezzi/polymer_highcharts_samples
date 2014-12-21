// Copyright (c) 2014, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
library basic_line_with_labels;

import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('basic-line-with-labels')
class BasicLineWithLabels extends PolymerElement {
  factory BasicLineWithLabels() => new Element.tag('basic-line-with-labels');
  BasicLineWithLabels.created() : super.created();
  
  @published String code = 
      "<highcharts-polymer  chartTitle=\"Basic Line with Labels\" \n" + 
      "    subtitle=\"Monthly Average Temperature\" \n" + 
      "    type=\"line\" creditsEnabled=\"false\"\n" + 
      "    backgroundColor=\"rgba(0,0,0,0)\"\n" + 
      "    plotOptions=\"\n" + 
      "    {\n" + 
      "      'line': {\n" + 
      "        'dataLabels': {\n" + 
      "          'enabled': true\n" + 
      "        }, \n" + 
      "        'enableMouseTracking': false\n" + 
      "      }\n" + 
      "    }\n" + 
      "    \">\n" + 
      "    <highcharts-x-axis categories=\"['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic']\"></highcharts-x-axis>\n" + 
      "    <highcharts-y-axis axisTitle=\"Temperatura (ºC)\"></highcharts-y-axis>\n" + 
      "    <highcharts-series name=\"Tokyo\"\n" + 
      "        type=\"line\"\n" + 
      "        numData=\"[7.0, 6.9, 9.5, 14.5, 18.4, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]\"></highcharts-series>\n" + 
      "    <highcharts-series name=\"London\"\n" + 
      "        type=\"line\"\n" + 
      "        numData=\"[3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]\"></highcharts-series>\n" + 
      "</highcharts-polymer> ";
  
}
