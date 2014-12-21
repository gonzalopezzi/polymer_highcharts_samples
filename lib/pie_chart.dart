// Copyright (c) 2014, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
library pie_chart;

import 'package:polymer/polymer.dart';
import 'dart:html';
import 'package:highcharts_options/chart_options.dart' as hc;

@CustomTag('pie-chart')
class PieChart extends PolymerElement {
  factory PieChart () => new Element.tag('pie-chart');
  PieChart.created() : super.created();
  
  @observable List<hc.Point> pieChartData = [(new hc.Point()
                                              ..name = 'Firefox'
                                              ..y = 24.9), 
                                            (new hc.Point()
                                              ..name = 'IE'
                                              ..y = 8.9),
                                            (new hc.Point()
                                              ..name = 'Chrome'
                                              ..y = 59.2
                                              ..sliced = true
                                              ..moreOptions = {
                                                'selected': true
                                              }
                                            ),
                                            (new hc.Point () 
                                              ..name = 'Safari'
                                              ..y = 3.8), 
                                            (new hc.Point () 
                                              ..name = 'Opera'
                                              ..y = 1.8),  
                                            (new hc.Point () 
                                              ..name = 'Others'
                                              ..y = 1.4)
                                            ]; 
  @observable String code =
      "<highcharts-polymer chartTitle=\"Pie Chart\" \n" + 
      "        creditsEnabled=\"false\"\n" + 
      "        backgroundColor=\"rgba(0,0,0,0)\">\n" + 
      "    <highcharts-series name=\"Browser Share\" type=\"pie\"\n" + 
      "        data=\"{{pieChartData}}\"></highcharts-series>\n" + 
      "</highcharts-polymer>";
}
