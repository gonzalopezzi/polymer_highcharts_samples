// Copyright (c) 2014, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
library basic_line;

import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('basic-line')
class BasicLine extends PolymerElement {
  factory BasicLine () => new Element.tag('basic-line');
  BasicLine.created() : super.created();
  
  @observable String code =
      "<highcharts-polymer chartTitle=\"Basic Line\"  \n" + 
      "    subtitle=\"Monthly Average Temperature\" \n" + 
      "    type=\"line\" borderColor=\"#CCC\" creditsEnabled=\"false\"\n" + 
      "    borderWidth=\"1\" borderRadius=\"8\" backgroundColor=\"rgba(0,0,0,0)\">\n" + 
      "        <highcharts-x-axis categories=\"[\"Ene\", \"Feb\", \"Mar\", \"Abr\", \"May\", \"Jun\", \"Jul\", \"Ago\", \"Sep\", \"Oct\", \"Nov\", \"Dic\"]\"></highcharts-x-axis>\n" + 
      "        <highcharts-y-axis axisTitle=\"Temperatura (ºC)\"></highcharts-y-axis>\n" + 
      "        <highcharts-series name=\"Tokyo\"\n" + 
      "            type=\"line\"\n" + 
      "            numData=\"[7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]\"></highcharts-series>\n" + 
      "        <highcharts-series name=\"New York\"\n" + 
      "            type=\"line\"\n" + 
      "            numData=\"[-0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5]\"></highcharts-series>\n" + 
      "</highcharts-polymer>";
  
}
