//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:convert';
import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

typedef void MAAnnotationViewCreatedCallback(MAAnnotationView controller);
typedef Future<void> OnUiKitViewDispose();

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAAnnotationView_iOS extends StatefulWidget {
  const MAAnnotationView_iOS({
    Key key,
    this.onViewCreated,
    this.onDispose,
  }) : super(key: key);

  final MAAnnotationViewCreatedCallback onViewCreated;
  final OnUiKitViewDispose onDispose;

  @override
  _MAAnnotationView_iOSState createState() => _MAAnnotationView_iOSState();
}

class _MAAnnotationView_iOSState extends State<MAAnnotationView_iOS> {
  MAAnnotationView _controller;

  @override
  Widget build(BuildContext context) {
    final gestureRecognizers = <Factory<OneSequenceGestureRecognizer>>[
      Factory<OneSequenceGestureRecognizer>(() => EagerGestureRecognizer()),
    ].toSet();

    final messageCodec = StandardMessageCodec();
    return UiKitView(
      viewType: 'me.yohom/MAAnnotationView',
      gestureRecognizers: gestureRecognizers,
      onPlatformViewCreated: _onViewCreated,
      creationParamsCodec: messageCodec,
    );
  }

  void _onViewCreated(int id) {
    // 这里id+1是为了和iOS端对齐, 因为objc里nil==0的缘故, 0和nil会混淆, 所以这里从1开始
    _controller = MAAnnotationView()..refId = id + 1;
    if (widget.onViewCreated != null) {
      widget.onViewCreated(_controller);
    }
  }

  @override
  void dispose() {
    if (widget.onDispose != null) {
      widget.onDispose().then((_) => release(_controller));
    }
    super.dispose();
  }
}
