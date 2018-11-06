import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:async';
import 'dart:core';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' show parse;
import 'dart:convert';
import 'package:async_loader/async_loader.dart';

class MediaObjects {
  MediaObjects({
    @required this.tag,
    @required this.text,
    @required this.imageLink,
    @required this.imageSrc,
  });

  final tag;
  final text;
  final imageLink;
  final imageSrc;
}

class HomeBody extends StatefulWidget {
  @override
  State createState() => _HomeBody();
}

class _HomeBody extends State<HomeBody> {
  var _datList = [];
  final GlobalKey<AsyncLoaderState> _asyncLoaderState =
      new GlobalKey<AsyncLoaderState>();

  @override
  void initState() {
    super.initState();
//    getImages();
  }

  Future<List<MediaObjects>> getImages() async {
    List<MediaObjects> miLista = [];
    var res = await http.get("https://www.instagram.com/opensaturday/?_a=1");
    var pars = parse(res.body);
//    print(pars.body.children[1].firstChild.toString().substring(21));
    var str = pars.body.children[1].firstChild.toString();
    var obj = jsonDecode(str.substring(21, str.length - 2));
    var lista = obj['entry_data']['ProfilePage'][0]['graphql']['user']
        ['edge_owner_to_timeline_media']['edges'];
    var counter = 0;
    lista.forEach((el) {
      miLista.add(MediaObjects(
        tag: '$counter',
          text: el['node']['edge_media_to_caption']['edges'][0]['node']['text'],
          imageLink: el['node']['thumbnail_resources'][3]['src'],
          imageSrc: el['node']['thumbnail_src']
      ));
      counter++;
//        print(el['node']['thumbnail_resources'][3]['src']);
//        print(el['node']['edge_media_to_caption']['edges'][0]['node']['text']);
    });
    setState(() {
      _datList = miLista;
    });
    return miLista;
  }

  @override
  Widget build(BuildContext context) {
    return new AsyncLoader(
      key: _asyncLoaderState,
      initState: () async => await getImages(),
      renderLoad: () => Scaffold(
          appBar: new AppBar(),
          body: Container(
              child: Center(
                  child: new CircularProgressIndicator(
            backgroundColor: Colors.blue,
          )))),
      renderError: ([error]) =>
          new Text('Sorry, there was an error loading your joke'),
      renderSuccess: ({data}) => CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text("OpenSaturday",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )),
                    background: Padding(
                      padding: const EdgeInsets.only(
                          left: 30.0,
                        top: 25.0,
                        right: 30.0
                      ),
                      child: Image.asset(
                        "images/logo.png",
                        fit: BoxFit.fitWidth,
                      ),
                    )),
              ),
              new SliverList(
                  delegate: SliverChildListDelegate(<Widget>[
                InkWell(
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    child: Text(
                      'Un evento que busca promover herramientas, tecnología y conocimientos open source vanguardistas, a través de profesionales del área.',
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  ),
                )
              ])),
              new SliverGrid(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200.0,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 1.0,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return Scaffold(
                                appBar: AppBar(
                                    title: Text('Imagen')
                                ),
                                body: SizedBox.expand(
                                  child: GridPhotoViewer(photo: _datList[index]),
                                ),
                              );
                            }
                        ));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.teal[100 * (index % 9)],
                        child: Stack(children: <Widget>[
                          Hero(
                            tag:_datList[index].tag,
                              child: FadeInImage.assetNetwork(
                                fadeInCurve: Curves.bounceIn,
                                  placeholder: 'image/logo.png',
                                  image:_datList[index].imageSrc
                              )
                          ),
                          Align(
                              alignment: Alignment(0.0, 1.0),
                              child: Container(
                                  color: Colors.black87,
                                  child: Text(_datList[index].text)))
                        ]),
                      ),
                    );
                  },
                  childCount: _datList.length,
                ),
              ),
            ],
          ),
    );
  }
}

const double _kMinFlingVelocity = 800.0;
class GridPhotoViewer extends StatefulWidget {
  const GridPhotoViewer({ Key key, this.photo }) : super(key: key);

  final MediaObjects photo;

  @override
  _GridPhotoViewerState createState() => _GridPhotoViewerState();
}

class _GridPhotoViewerState extends State<GridPhotoViewer> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _flingAnimation;
  Offset _offset = Offset.zero;
  double _scale = 1.0;
  Offset _normalizedOffset;
  double _previousScale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this)
      ..addListener(_handleFlingAnimation);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // The maximum offset value is 0,0. If the size of this renderer's box is w,h
  // then the minimum offset value is w - _scale * w, h - _scale * h.
  Offset _clampOffset(Offset offset) {
    final Size size = context.size;
    final Offset minOffset = Offset(size.width, size.height) * (1.0 - _scale);
    return Offset(offset.dx.clamp(minOffset.dx, 0.0), offset.dy.clamp(minOffset.dy, 0.0));
  }

  void _handleFlingAnimation() {
    setState(() {
      _offset = _flingAnimation.value;
    });
  }

  void _handleOnScaleStart(ScaleStartDetails details) {
    setState(() {
      _previousScale = _scale;
      _normalizedOffset = (details.focalPoint - _offset) / _scale;
      // The fling animation stops if an input gesture starts.
      _controller.stop();
    });
  }

  void _handleOnScaleUpdate(ScaleUpdateDetails details) {
    setState(() {
      _scale = (_previousScale * details.scale).clamp(1.0, 4.0);
      // Ensure that image location under the focal point stays in the same place despite scaling.
      _offset = _clampOffset(details.focalPoint - _normalizedOffset * _scale);
    });
  }

  void _handleOnScaleEnd(ScaleEndDetails details) {
    final double magnitude = details.velocity.pixelsPerSecond.distance;
    if (magnitude < _kMinFlingVelocity)
      return;
    final Offset direction = details.velocity.pixelsPerSecond / magnitude;
    final double distance = (Offset.zero & context.size).shortestSide;
    _flingAnimation = _controller.drive(Tween<Offset>(
        begin: _offset,
        end: _clampOffset(_offset + direction * distance)
    ));
    _controller
      ..value = 0.0
      ..fling(velocity: magnitude / 1000.0);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onScaleStart: _handleOnScaleStart,
      onScaleUpdate: _handleOnScaleUpdate,
      onScaleEnd: _handleOnScaleEnd,
      child: ClipRect(
        child: Transform(
          transform: Matrix4.identity()
            ..translate(_offset.dx, _offset.dy)
            ..scale(_scale),
          child: Hero(
            tag: widget.photo.tag,
            child: Image.network(
              widget.photo.imageSrc,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}