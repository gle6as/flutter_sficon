import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sficon/flutter_sficon.dart';

// Every symbol, for the catalog. A real app references only the icons it uses,
// so the rest are tree-shaken away.
import 'all_icons.g.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SFIcon',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('SFIcon'),
            bottom: const TabBar(tabs: [Tab(text: 'Showcase'), Tab(text: 'Catalog')]),
          ),
          body: const TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [ShowcasePage(), CatalogPage()],
          ),
        ),
      ),
    );
  }
}

class ShowcasePage extends StatelessWidget {
  const ShowcasePage({super.key});

  static const _weights = [
    FontWeight.w100, FontWeight.w200, FontWeight.w300, FontWeight.w400, FontWeight.w500,
    FontWeight.w600, FontWeight.w700, FontWeight.w800, FontWeight.w900,
  ];

  Widget _section(BuildContext context, String title, Widget child) => Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(title, style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(height: 8),
          child,
        ]),
      );

  @override
  Widget build(BuildContext context) {
    final onSurface = Theme.of(context).colorScheme.onSurface;
    const gradient = LinearGradient(colors: [Color(0xFFFF2D55), Color(0xFFFF9500), Color(0xFF5856D6)]);
    return IconTheme(
      data: IconThemeData(color: onSurface),
      child: ListView(padding: const EdgeInsets.only(bottom: 32), children: [
        _section(context, 'Weights', Wrap(spacing: 8, runSpacing: 8, children: [
          for (final weight in _weights) SFIcon(SFIcons.sf_pawprint, fontSize: 30, fontWeight: weight),
        ])),
        _section(context, 'Sizes', Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            for (final size in [13.0, 17.0, 24.0, 34.0, 48.0])
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: SFIcon(SFIcons.sf_heart_text_clipboard, fontSize: size),
              ),
          ],
        )),
        _section(context, 'Colours', Wrap(spacing: 12, runSpacing: 8, children: [
          const SFIcon(SFIcons.sf_heart_fill, fontSize: 30, color: Color(0xFFFF2D55)),
          const SFIcon(SFIcons.sf_checkmark_circle_fill, fontSize: 30, color: Color(0xFF34C759)),
          const SFIcon(SFIcons.sf_drop_fill, fontSize: 30, color: Color(0xFF007AFF)),
          IconTheme(
            data: IconThemeData(color: onSurface, opacity: 0.4),
            child: const SFIcon(SFIcons.sf_star_fill, fontSize: 30),
          ),
          ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (rect) => gradient.createShader(rect),
            child: const SFIcon(SFIcons.sf_flame_fill, fontSize: 30),
          ),
          const SFIcon(
            SFIcons.sf_cloud_fill,
            fontSize: 30,
            color: Colors.white,
            shadows: [Shadow(color: Color(0x99000000), blurRadius: 4, offset: Offset(0, 2))],
          ),
        ])),
        _section(context, 'Inline with text', Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text('Walk ', style: Theme.of(context).textTheme.titleLarge),
            const SFIcon(SFIcons.sf_figure_walk, fontSize: 22),
            Text(' at 8:00 ', style: Theme.of(context).textTheme.titleLarge),
            const SFIcon(SFIcons.sf_alarm, fontSize: 22),
          ],
        )),
      ]),
    );
  }
}

class CatalogPage extends StatefulWidget {
  const CatalogPage({super.key});

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  var _names = allIcons.keys.toList();

  void _search(String query) {
    final words = query.toLowerCase().split(RegExp(r'[\s.]+')).where((w) => w.isNotEmpty);
    setState(() => _names = allIcons.keys.where((name) => words.every(name.contains)).toList());
  }

  void _copy(String name) {
    final code = 'SFIcons.sf_${name.replaceAll('.', '_')}';
    Clipboard.setData(ClipboardData(text: code));
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('Copied $code')));
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: const Center(widthFactor: 1, child: SFIcon(SFIcons.sf_magnifyingglass, fontSize: 17)),
            hintText: 'Search ${allIcons.length} symbols',
          ),
          onChanged: _search,
        ),
      ),
      Expanded(
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onSurface),
          child: GridView.builder(
            padding: const EdgeInsets.all(8),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 56),
            itemCount: _names.length,
            itemBuilder: (context, i) => Tooltip(
              message: _names[i],
              child: InkWell(
                onTap: () => _copy(_names[i]),
                child: Center(child: SFIcon(allIcons[_names[i]]!, fontSize: 26)),
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
