// Copyright (c) 2014, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('main-menu')
class MainMenu extends PolymerElement {
  MainMenu.created() : super.created();
  
  @observable List<MenuItem> menuItems = toObservable ([
         new MenuItem ("basicLine", "Basic Line"),
         new MenuItem ("basicLineWithLabels", "Basic Line with Labels")
  ]);
  
  @published @observable String state = "basicLine";
  
  void menuItemClick (event, detail, Element target) {
    var state = target.dataset["state"];
    this.fire('menu-item-select', detail: state);
  }
  
}

class MenuItem {
  String state;
  String name;
  
  MenuItem (this.state, this.name);
  
}
