import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:localization/strings.g.dart';
import 'package:moviiie/app/moviiie_app.dart';
import 'package:moviiie/core/di/di_container.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await initDi();
  runApp(
    TranslationProvider(
      child: MoviiieApp()
    )
  );
}