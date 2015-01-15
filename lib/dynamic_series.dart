// Copyright (c) 2014, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
library dynamic_series;

import 'package:polymer/polymer.dart';
import 'package:highcharts_options/chart_options.dart' as hc;
import 'package:polymer_highcharts/highcharts_series.dart';
import 'dart:html';
import 'dart:math';

@CustomTag('dynamic-series')
class DynamicSeries extends PolymerElement {
  factory DynamicSeries () => new Element.tag('dynamic-series');
  DynamicSeries.created() : super.created();
  
  @observable String code = 
      "<highcharts-polymer chartTitle=\"Basic Line\"\n" +   
      "      subtitle=\"Monthly Average Temperature\"\n" +  
      "      type=\"line\" creditsEnabled=\"false\"\n" + 
      "      backgroundColor=\"rgba(0,0,0,0)\">\n" + 
      "  <highcharts-y-axis axisTitle=\"Temperatura (ºC)\"></highcharts-y-axis>\n" + 
      "  <template repeat=\"{{serie in mySeries}}\">\n" + 
      "    <highcharts-series name=\"{{serie['name']}}\" type=\"{{serie['type']}}\" data=\"{{serie['data']}}\"></highcharts-series>\n" + 
      "  </template>\n" + 
      "</highcharts-polymer>";
  
  @observable List mySeries;
  
  @override
  void attached () {
    super.attached();
    List series = new List ();
    Random random = new Random();
    this.mySeries = toObservable (_generateTwoRandomSeries());
  }
  
  List _generateTwoRandomSeries() {
    return (new List ())
        ..add({
          "name": "Tokyo", 
          "type": "column", 
          "data": _generateRandomData (20)
        })
        ..add({
          "name": "New York", 
          "type": "line", 
          "data": _generateRandomData (20)
        });
  }
  
  List _generateThreeRandomSeries() {
    return (new List ())
        ..add({
          "name": "Tokyo", 
          "type": "column", 
          "data": _generateRandomData (20)
        })
        ..add({
          "name": "New York", 
          "type": "line", 
          "data": _generateRandomData (20)
        })
        ..add({
          "name": "London", 
          "type": "line", 
          "data": _generateRandomData (20)
        });
  }
  
  void loadNewData (event, detail, target) {
    Random random = new Random();
    if (random.nextBool()) {
      this.mySeries = toObservable (_generateTwoRandomSeries());
    }
    else {
      this.mySeries = toObservable (_generateThreeRandomSeries());
    }
  }
  
  void removePoint () {
    HighchartsSeries series = this.shadowRoot.querySelector('#Tokyo') as HighchartsSeries;
    series.data[0].remove();
  }
  
  List _generateRandomData (int n) {
    List data = new List ();
    Random random = new Random();
    for (int i = 0; i < n; i++) {
      data.add((new hc.Point ())
                  ..x = i
                  ..y = random.nextInt(100));
    }
    return data;
  }
  
}
