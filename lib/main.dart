import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:givethem/injection.dart';
import 'package:givethem/presentation/core/app_widget.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(AppWidget());
}