// Copyright (c) 2014, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
library highcharts_tutorial;

import 'package:polymer/polymer.dart';
import 'package:core_elements/core_collapse.dart';
import 'dart:html';

@CustomTag('highcharts-tutorial')
class HighchartsTutorial extends PolymerElement {
  factory HighchartsTutorial () => new Element.tag('highcharts-tutorial');
  HighchartsTutorial.created() : super.created();
  
  void newAppInfo () {
    CoreCollapse collapseNewAppInfo = this.shadowRoot.querySelector("#newAppInfo");
    collapseNewAppInfo.toggle();
  }
  
}
