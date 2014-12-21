library pretty_print_html;

import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('pretty-print-html')
class PrettyPrintHtml extends PolymerElement {
  
  @published String code;
  
  factory PrettyPrintHtml () => new Element.tag('pretty-print-html');
  PrettyPrintHtml.created () : super.created();
  
  void codeChanged () {
    _printCode();
  }
  
  void _printCode () {
    RegExp matcher = new RegExp(r"(<[\w\-]*)");
    String formatted = code;
    formatted = formatted.replaceAllMapped (matcher, (Match match) {
      return "<span class=\"tag\">${match.group(1)}</span>";
    });
    this.shadowRoot.innerHtml = formatted;
    
  }
  
}