import 'package:credease/components/common_size/common_hight_width.dart';
import 'package:credease/general_binding/common_binding.dart';
import 'package:credease/routes/routes.dart';
import 'package:credease/themes/get_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      AppDimensions.createInstance(context, SizerUtil.boxConstraints);
      AppDimensions.instance!.orientation =
          AppDimensions.update(context, SizerUtil.boxConstraints).orientation;
      AppDimensions.instance!.height =
          AppDimensions.update(context, SizerUtil.boxConstraints).height;
      AppDimensions.instance!.width =
          AppDimensions.update(context, SizerUtil.boxConstraints).width;
      return GetMaterialApp(
        theme: NkGetXTheme.lightTheme,
        darkTheme: NkGetXTheme.lightTheme,
        getPages: AppRoutes.generateRoutes,
        initialRoute: AppRoutes.splash,
        themeMode: ThemeMode.system,
        initialBinding: CommonBinding(),
        debugShowCheckedModeBanner: false,
      );
    });
  }
}
