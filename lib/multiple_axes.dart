library multiple_axes;

import 'package:polymer/polymer.dart';
import 'dart:html';

/**
 * A Polymer multiple-axes element.
 */
@CustomTag('multiple-axes')

class MultipleAxes extends PolymerElement {
  
  factory MultipleAxes () => new Element.tag('multiple-axes');
  MultipleAxes.created() : super.created() {
  }
  
  @observable String code = 
      "     <highcharts-polymer chartTitle=\"Average Monthly Weather Data for Tokyo\"  \n" +
      "            type=\"line\" creditsEnabled=\"false\"\n" +
      "            backgroundColor=\"rgba(0,0,0,0)\"\n" +
      "            zoomType=\"xy\">\n" +
      "        <highcharts-series id=\"Rainfall\" \n" +
      "            name=\"Rainfall\"\n" +
      "            type=\"column\"\n" +
      "            yAxisId=\"rainfallYAxis\"\n" +
      "            numData=\"[49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]\"></highcharts-series>\n" +
      "        <highcharts-series id=\"SeaLevelPressure\" \n" +
      "            name=\"Sea-Level Pressure\"\n" +
      "            type=\"spline\"\n" +
      "            yAxisId=\"seaLevelYAxis\"\n" +
      "            numData=\"[1016, 1016, 1015.9, 1015.5, 1012.3, 1009.5, 1009.6, 1010.2, 1013.1, 1016.9, 1018.2, 1016.7]\"\n" +
      "            moreOptions=\"{\n" +
      "               'marker': {\n" +
      "                 'enabled': false\n" +
      "               }, \n" +
      "               'dashStyle': 'shortdot', \n" +
      "               'tooltip': {\n" +
      "                 'valueSuffix': ' mb'\n" +
      "               }\n" +
      "            }\"></highcharts-series>\n" +
      "          <highcharts-series id=\"Temperature\" \n" +
      "            name=\"Temperature\"\n" +
      "            type=\"spline\"\n" +
      "            yAxisId=\"temperatureYAxis\"\n" +
      "            numData=\"[7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]\"\n" +
      "            moreOptions=\"{\n" +
      "                  'tooltip': {\n" +
      "                    'valueSuffix': ' C'\n" +
      "                  }\n" +
      "            }\"></highcharts-series>\n" +
      "        <highcharts-axes>\n" +
      "          <highcharts-x-axis id=\"x1\" categories=\"['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',\n" +
      "                                              'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']\"></highcharts-x-axis>\n" +
      "          <highcharts-y-axis id=\"temperatureYAxis\" axisTitle=\"Temperature\"  \n" +
      "            opposite=\"true\"\n" +
      "            labels=\"{\n" +
      "              'format': '{value}°C',\n" +
      "              'style': {\n" +
      "                  'color': 'AABBCC'\n" +
      "              }\n" +
      "            }\"></highcharts-y-axis> \n" +
      "          <highcharts-y-axis id=\"rainfallYAxis\" axisTitle=\"Rainfall\"  \n" +
      "            labels=\"{\n" +
      "              'format': '{value} mm',\n" +
      "              'style': {\n" +
      "                  'color': '776655'\n" +
      "              }\n" +
      "            }\"></highcharts-y-axis> \n" +
      "          <highcharts-y-axis id=\"seaLevelYAxis\" axisTitle=\"Sea-Level Pressure\"  \n" +
      "            opposite=\"true\"\n" +
      "            labels=\"{\n" +
      "              'format': '{value} mb',\n" +
      "              'style': {\n" +
      "                  'color': '7766EE'\n" +
      "              }\n" +
      "            }\"></highcharts-y-axis> \n" +
      "        </highcharts-axes>\n" +
      "      </highcharts-polymer> ";
  
}
