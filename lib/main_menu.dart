// Copyright (c) 2014, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:polymer/polymer.dart';
import 'package:PolymerHighchartsTest/highcharts_tutorial.dart';
import 'package:PolymerHighchartsTest/basic_line.dart';
import 'package:PolymerHighchartsTest/basic_line_with_labels.dart';
import 'package:PolymerHighchartsTest/pie_chart.dart';
import 'package:PolymerHighchartsTest/bubble_chart.dart';
import 'package:PolymerHighchartsTest/basic_bar.dart';
import 'package:PolymerHighchartsTest/stacked_bar.dart';
import 'package:PolymerHighchartsTest/stacked_area.dart';
import 'package:PolymerHighchartsTest/dynamic_series.dart';
import 'package:PolymerHighchartsTest/multiple_axes.dart';
import 'dart:html';

@CustomTag('main-menu')
class MainMenu extends PolymerElement {
  MainMenu.created() : super.created();
  
  @observable List<MenuItem> menuItems = toObservable ([
         new MenuItem ("tutorial", "Tutorial", () => new HighchartsTutorial ()),                                               
         new MenuItem ("basicLine", "Basic Line", () => new BasicLine ()),
         new MenuItem ("basicLineWithLabels", "Basic Line with Labels", () => new BasicLineWithLabels()),
         new MenuItem ("pieChart", "Pie Chart", () => new PieChart ()), 
         new MenuItem ("bubbleChart", "Bubble Chart", () => new BubbleChart()), 
         new MenuItem ("basicBar", "Basic Bar", () => new BasicBar()), 
         new MenuItem ("stackedBar", "Stacked Bar", () => new StackedBar()), 
         new MenuItem ("stackedArea", "Stacked Area", () => new StackedArea()), 
         new MenuItem ("dynamicSeries", "Dynamic Series", () => new DynamicSeries()),
         new MenuItem ("multipleAxes", "Multiple Axes", () => new MultipleAxes())
  ]);
  
  @published @observable String state = "basicLine";
  
  void menuItemClick (event, detail, Element target) {
    var state = target.dataset["state"];
    MenuItem selectedMenuItem = menuItems.where((MenuItem item) => item.state == state).first;
    this.fire('menu-item-select', detail: {"state": state, "stateName":selectedMenuItem.name, "selectedMenuItem": selectedMenuItem.pageFactory ()});
  }
  
}

class MenuItem {
  String state;
  String name;
  Function pageFactory;
  MenuItem (this.state, this.name, this.pageFactory);
}
