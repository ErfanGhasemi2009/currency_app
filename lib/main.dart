import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const Color greenChart = Color(0xff0EC771);
const Color redChart = Color(0xffB91319);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final defaultFontName = 'IranYekan';
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: const ColorScheme.light(
          primary: Color(0xff45B7D1),
          onPrimary: Color(0xffFFFFFF),
          onSurface: Color(0xff4A5253),
          onSecondary: Color(0xff4A5253)
        ),
        textTheme: TextTheme(
            headlineLarge: TextStyle(
                fontFamily: defaultFontName,
                fontSize: 22,
                color: Theme.of(context).colorScheme.onPrimary),
            titleLarge: TextStyle(
                fontFamily: defaultFontName,
                fontWeight: FontWeight.w800,
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 20),
            bodyMedium: TextStyle(
                fontFamily: defaultFontName,
                color: Theme.of(context).colorScheme.onSurface,
                
                fontSize: 20)),

        useMaterial3: true,
      ),
      home: const Directionality(
          textDirection: TextDirection.rtl, child: HomeScreen()),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeData.colorScheme.primary,
        foregroundColor: themeData.colorScheme.onPrimary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'قیمت به روز ارز',
              style: themeData.textTheme.headlineLarge,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.bars,
              ),
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
              child: Opacity(
            opacity: 0.7,
            child: Image.asset(
              'assets/images/background_ui.jpg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fill,
            ),
          )),
          Positioned.fill(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'نرخ ارز آزاد چیست ؟',
                  style: themeData.textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  textAlign: TextAlign.start,
                  'نرخ ارزها در معاملات نقدی و رایج روزانه است معاملات نقدی معاملاتی هستند که خریدار و فروشنده به محض انجام معامله، ارز و ریال را با هم تبادل می نمایند.', style: themeData.textTheme.bodyMedium,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
