library stacked_area;

import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('stacked-area')
class StackedArea extends PolymerElement {
  factory StackedArea () => new Element.tag('stacked-area');
  StackedArea.created() : super.created();
  
  @published String code = 
      "<highcharts-polymer\n" + 
      "    chartTitle=\"Stacked Area\" type=\"area\" \n" + 
      "    subtitle=\"Historic and Estimated Worldwide Population Growth by Region\" \n" + 
      "    creditsEnabled=\"false\"\n" + 
      "    backgroundColor=\"rgba(0,0,0,0)\"\n" + 
      "    plotOptions=\"\n" + 
      "      {\n" + 
      "        'area': {\n" + 
      "          'stacking': 'normal', \n" + 
      "          'lineColor': '#666666', \n" + 
      "          'lineWidth': 1, \n" + 
      "          'marker': {\n" + 
      "            'lineWidth': 1, \n" + 
      "            'lineColor': '#666666'\n" + 
      "          }\n" + 
      "        }\n" + 
      "      }\n" + 
      "    \">\n" + 
      "    <highcharts-x-axis categories=\"['1750', '1800', '1850', '1900', '1950', '1999', '2050']\"></highcharts-x-axis> \n" + 
      "    <highcharts-y-axis min=\"0\" axisTitle=\"Billions\"></highcharts-y-axis>\n" + 
      "    <highcharts-series name=\"Asia\"  numData=\"[502, 635, 809, 947, 1402, 3634, 5268]\"></highcharts-series>\n" + 
      "    <highcharts-series name=\"Africa\"  numData=\"[106, 107, 111, 133, 221, 767, 1766]\"></highcharts-series>\n" + 
      "    <highcharts-series name=\"Europe\"   numData=\"[163, 203, 276, 408, 547, 729, 628]\"></highcharts-series>\n" + 
      "    <highcharts-series name=\"America\"   numData=\"[18, 31, 54, 156, 339, 818, 1201]\"></highcharts-series>\n" + 
      "    <highcharts-series name=\"Oceania\"   numData=\"[2, 2, 2, 6, 13, 30, 46]\"></highcharts-series>\n" + 
      "</highcharts-polymer>";
  
}
