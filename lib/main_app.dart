// Copyright (c) 2014, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:polymer/polymer.dart';
import 'package:highcharts_options/chart_options.dart';
import 'package:PolymerHighchartsTest/basic_line_with_labels.dart';

/// A Polymer `<main-app>` element.
@CustomTag('main-app')
class MainApp extends PolymerElement {
  @observable String appState = "basicLine";
  
  @observable String basicLineChartTitle = "Basic Line";
  @observable HighChart basicLineChartOptions = new HighChart () 
                        ..tooltip = (new Tooltip()
                                              ..valueSuffix = 'ºC')
                        ..legend = (new Legend ()
                                              ..layout = 'vertical'
                                              ..align = 'right'
                                              ..verticalAlign = 'middle' 
                                              ..borderWidth = 0);
  @observable HighChart pieChartOptions = new HighChart () 
                          ..tooltip = (new Tooltip()
                                                ..valueSuffix = 'ºC')
                          ..legend = (new Legend ()
                                                ..layout = 'vertical'
                                                ..align = 'right'
                                                ..verticalAlign = 'middle' 
                                                ..borderWidth = 0);
  
  @observable List<Point> pieChartData = [(new Point()
                                            ..name = 'Firefox'
                                            ..y = 24.9), 
                                          (new Point()
                                            ..name = 'IE'
                                            ..y = 8.9),
                                          (new Point()
                                            ..name = 'Chrome'
                                            ..y = 59.2
                                            ..sliced = true
                                            ..moreOptions = {
                                              'selected': true
                                            }
                                          ),
                                          (new Point () 
                                            ..name = 'Safari'
                                            ..y = 3.8), 
                                          (new Point () 
                                            ..name = 'Opera'
                                            ..y = 1.8),  
                                          (new Point () 
                                            ..name = 'Others'
                                            ..y = 1.4)
                                          ]; 
  
  @observable List bubbleSeries1 = [[97, 36, 79], [94, 74, 60], [68, 76, 58], [64, 87, 56], [68, 27, 73], [74, 99, 42], [7, 93, 87], [51, 69, 40], [38, 23, 33], [57, 86, 31]];
  @observable List bubbleSeries2 = [[25, 10, 87], [2, 75, 59], [11, 54, 8], [86, 55, 93], [5, 3, 58], [90, 63, 44], [91, 33, 17], [97, 3, 56], [15, 67, 48], [54, 25, 81]];
  @observable List bubbleSeries3 = [[47, 47, 21], [20, 12, 4], [6, 76, 91], [38, 30, 60], [57, 98, 64], [61, 17, 80], [83, 60, 13], [67, 78, 75], [64, 12, 10], [30, 77, 82]];
  
  MainApp.created() : super.created();
  
  void attached () {
  }

  void changeSomething (_) {
    basicLineChartOptions.title = (new Title ()..text = "New Title");
  }
  
  void menuItemSelectHandler (event, detail, target) {
    appState = detail;
    this.shadowRoot.children.add(new BasicLineWidthLabels());
  }
  
}
