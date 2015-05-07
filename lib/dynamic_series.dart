// Copyright (c) 2014, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
library dynamic_series;

import 'package:polymer/polymer.dart';
import 'package:highcharts_options/chart_options.dart' as hc;
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
  @observable List myAxes;
  
  @override
  void attached () {
    super.attached();
    List series = new List ();
    Random random = new Random();
    this.mySeries = toObservable (_generateTwoRandomSeries());
    this.myAxes = toObservable (_generateTwoAxes());
  }
  
  List _generateTwoRandomSeries() {
    return (new List ())
        ..add({
          "name": "Tokyo", 
          "type": "column", 
          "axis": "axis1",
          "data": _generateRandomData (20)
        })
        ..add({
          "name": "New York", 
          "type": "line",
          "axis": "axis2",
          "data": _generateRandomData (20)
        });
  }
  
  List _generateTwoAxes () {
    return (new List ())
        ..add({
          "id": "axis1", 
          "title": "Axis 1"
        })
        ..add({
          "id": "axis2", 
          "title": "Axis 2"
        });
  }
  
  List _generateThreeRandomSeries() {
    return (new List ())
        ..add({
          "name": "Tokyo", 
          "type": "column",
          "axis": "axis1",
          "data": _generateRandomData (20)
        })
        ..add({
          "name": "New York", 
          "type": "line",
          "axis": "axis2",
          "data": _generateRandomData (20)
        })
        ..add({
          "name": "London", 
          "type": "line",
          "axis": "axis3",
          "data": _generateRandomData (20)
        });
  }
  
  List _generateThreeAxes () {
    return (new List ())
        ..add({
          "id": "axis1", 
          "title": "Axis 1"
        })
        ..add({
          "id": "axis2", 
          "title": "Axis 2"
        })
        ..add({
          "id": "axis3", 
          "title": "Axis 3"
        });
  }
  
  void loadNewData (event, detail, target) {
    Random random = new Random();
    double rand = random.nextDouble();
    if (rand < 0.33) {
      this.mySeries = toObservable (_generateTwoRandomSeries());
      this.myAxes = toObservable (_generateTwoAxes());
    }
    else if (rand < 0.66) {
      this.mySeries = toObservable (_generateThreeRandomSeries());
      this.myAxes = toObservable (_generateThreeAxes());
    }
    else {
      this.mySeries = new List ();
      this.myAxes   = new List ();
    }
  }
  
  
  List _generateRandomData (int n) {
    List data = new List ();
    Random random = new Random();
    for (int i = 0; i < n; i++) {
      data.add((new hc.Point ())
                  ..xDate = new DateTime.utc(2014).add(new Duration(days:i))
                  ..y = random.nextInt(100));
    }
    return data;
  }
  
}
