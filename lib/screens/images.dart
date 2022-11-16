import 'package:flutter/material.dart';

class Images extends StatefulWidget {
  const Images({super.key});

  @override
  State<Images> createState() => _ImagesState();
}

var getdata = Diohelper.getdata();

class _ImagesState extends State<Images> {
  @override
  Widget build(BuildContext context) {
    List mwidge = [];
    int index = 0;
    getdata.forEach((element) {
      element.index = index;
      mwidge.add(Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          height: 220,
          width: double.maxFinite,
          child: Card(
            child: new InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(element)));
              },
              hoverColor: Colors.cyan,
              child: Image.network(element.src.toString()),
            ),
          )));
      index++;
    });
    return GestureDetector(
      child: Center(
        child: ListView(
          children: [...mwidge],
        ),
      ),
    );
  }
}

class DetailPage extends StatefulWidget {
  Pic model;

  DetailPage(this.model, {Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Editor"),
        ),
        body: Container(
          width: 1885,
          height: 782,
          child: Image.network(widget.model.src.toString()),
        ));
  }
}

class Pic {
  String? type;
  String? version;
  String? originX;
  String? originY;
  double? left;
  double? top;
  double? width;
  double? height;
  String? fill;
  String? stroke;
  double? strokeWidth;
  String? strokeDashArray;
  String? strokeLineCap;
  double? strokeDashOffset;
  String? strokeLineJoin;
  bool? strokeUniform;
  double? strokeMiterLimit;
  double? scaleX;
  double? scaleY;
  double? angle;
  bool? flipX;
  bool? flipY;
  double? opacity;
  String? shadow;
  bool? visible;
  String? backgroundColor;
  String? fillRule;
  String? padoubleFirst;
  String? globalCompositeOperation;
  double? skewX;
  double? skewY;
  double? cropX;
  double? cropY;
  bool? selectable;
  bool? evented;
  bool? lockMovementX;
  bool? lockMovementY;
  bool? lockRotation;
  bool? lockScalingX;
  bool? lockScalingY;
  bool? lockUniScaling;
  bool? hasControls;
  bool? hasBorders;
  bool? hasRotatingPodouble;
  String? crossOrigin;
  String? name;
  String? src;
  int? index;

  Pic({
    this.angle,
    this.backgroundColor,
    this.cropX,
    this.cropY,
    this.crossOrigin,
    this.evented,
    this.fill,
    this.fillRule,
    this.flipX,
    this.flipY,
    this.globalCompositeOperation,
    this.hasBorders,
    this.hasControls,
    this.hasRotatingPodouble,
    this.height,
    this.left,
    this.lockMovementX,
    this.lockMovementY,
    this.lockRotation,
    this.lockScalingX,
    this.lockScalingY,
    this.lockUniScaling,
    this.name,
    this.opacity,
    this.originX,
    this.originY,
    this.padoubleFirst,
    this.scaleX,
    this.scaleY,
    this.selectable,
    this.shadow,
    this.skewX,
    this.skewY,
    this.src,
    this.stroke,
    this.strokeDashArray,
    this.strokeDashOffset,
    this.strokeLineCap,
    this.strokeLineJoin,
    this.strokeMiterLimit,
    this.strokeUniform,
    this.strokeWidth,
    this.top,
    this.type,
    this.version,
    this.visible,
    this.width,
    this.index,
  });

  Pic.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    version = json['version'];
    originX = json['originX'];
    originY = json['originY'];
    left = json['left'];
    top = json['top'];
    width = json['width'];
    height = json['height'];
    fill = json['fill'];
    stroke = json['stroke'];
    strokeWidth = json['strikeWidth'];
    strokeDashArray = json['strokeDashArray'];
    strokeLineCap = json['strokeLineCap'];
    strokeDashOffset = json['strokeDashOffset'];
    strokeLineJoin = json['strokeLineJoin'];
    strokeUniform = json['strokeUniform'];
    strokeMiterLimit = json['strokeMiterLimit'];
    scaleX = json['scaleX'];
    scaleY = json['scaleY'];
    angle = json['angle'];
    flipX = json['flipX'];
    flipY = json['flipY'];
    opacity = json['opacity'];
    shadow = json['shadow'];
    visible = json['visible'];
    backgroundColor = json['backgroundColor'];
    fillRule = json['fillRule'];
    globalCompositeOperation = json['globalCompositeOperation'];
    skewX = json['skewX'];
    skewY = json['skewY'];
    selectable = json['selectable'];
    evented = json['evented'];
    lockMovementX = json['lockMovementX'];
    lockMovementY = json['lockMovementY'];
    lockRotation = json['lockRotation'];
    lockScalingX = json['lockScalingX'];
    lockScalingY = json['lockScalingY'];
    lockUniScaling = json['lockUniScaling'];
    hasControls = json['hasControls'];
    hasBorders = json['hasBorders'];
    name = json['name'];
    src = json['src'];
    angle = json['angle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['angle'] = this.angle;
    data['backgroundColor'] = this.backgroundColor;
    data['evented'] = this.evented;
    data['fill'] = this.fill;
    data['fillRule'] = this.fillRule;
    data['flipX'] = this.flipX;
    data['flipY'] = this.flipY;
    data['globalCompositeOperation'] = this.globalCompositeOperation;
    data['hasBorders'] = this.hasBorders;
    data['hasControls'] = this.hasControls;
    data['height'] = this.height;
    data['left'] = this.left;
    data['lockMovementX'] = this.lockMovementX;
    data['lockMovementY'] = this.lockMovementY;
    data['lockRotation'] = this.lockRotation;
    data['lockScalingX'] = this.lockScalingX;
    data['lockScalingY'] = this.lockScalingY;
    data['lockUniScaling'] = this.lockUniScaling;
    data['name'] = this.name;
    data['opacity'] = this.opacity;
    data['originX'] = this.originX;
    data['originY'] = this.originY;
    data['scaleX'] = this.scaleX;
    data['scaleY'] = this.scaleY;
    data['selectable'] = this.selectable;
    data['shadow'] = this.shadow;
    data['skewX'] = this.skewX;
    data['skewY'] = this.skewY;
    data['stroke'] = this.stroke;
    data['strokeDashArray'] = this.strokeDashArray;
    data['strokeDashOffset'] = this.strokeDashOffset;
    data['strokeLineCap'] = this.strokeLineCap;
    data['strokeLineJoin'] = this.strokeLineJoin;
    data['strokeMiterLimit'] = this.strokeMiterLimit;
    data['strokeUniform'] = this.strokeUniform;
    data['strokeWidth'] = this.strokeWidth;
    data['top'] = this.top;
    data['type'] = this.type;
    data['version'] = this.version;
    data['visible'] = this.visible;
    data['width'] = this.width;
    data['src'] = this.src;
    data['angle'] = this.angle;
    return data;
  }
}

class Diohelper {
  static List<Pic> getdata() {
    List<Pic> list = [];
    list.add(Pic(
      type: "image",
      version: "5.2.4",
      originX: "center",
      originY: "center",
      left: 1185.5,
      top: 391,
      width: 1401,
      height: 784,
      fill: "rgb(30, 139, 195)",
      stroke: "#000",
      strokeWidth: 0,
      strokeDashArray: null,
      strokeLineCap: "butt",
      strokeDashOffset: 0,
      strokeLineJoin: "miter",
      strokeUniform: false,
      strokeMiterLimit: 4,
      scaleX: 1,
      scaleY: 1,
      angle: 0,
      flipX: false,
      flipY: false,
      opacity: 1,
      shadow: null,
      visible: true,
      backgroundColor: null,
      fillRule: "nonzero",
      padoubleFirst: "fill",
      globalCompositeOperation: "source-over",
      skewX: 0,
      skewY: 0,
      cropX: 0,
      cropY: 0,
      selectable: true,
      evented: true,
      lockMovementX: true,
      lockMovementY: true,
      lockRotation: false,
      lockScalingX: true,
      lockScalingY: true,
      lockUniScaling: false,
      hasControls: true,
      hasBorders: true,
      hasRotatingPodouble: true,
      crossOrigin: "anonymous",
      name: "image",
      src:
          "https://www.thebrand.ai/taswira.php?width=1401&height=784&quality=50&cropratio=&image=/v/uploads/gthumbs/{dynamicimage}imagethebrand44.png",
    ));
    list.add(Pic(
      type: "image",
      version: "5.2.4",
      originX: "center",
      originY: "center",
      left: 940.99,
      top: 364.41,
      width: 1887,
      height: 784,
      fill: "rgb(30, 139, 195)",
      stroke: "#000",
      strokeWidth: 0,
      strokeDashArray: null,
      strokeLineCap: "butt",
      strokeDashOffset: 0,
      strokeLineJoin: "miter",
      strokeUniform: false,
      strokeMiterLimit: 4,
      scaleX: 1,
      scaleY: 1,
      angle: 0,
      flipX: false,
      flipY: false,
      opacity: 0.9,
      shadow: null,
      visible: true,
      backgroundColor: null,
      fillRule: "nonzero",
      padoubleFirst: "fill",
      globalCompositeOperation: "source-over",
      skewX: 0,
      skewY: 0,
      cropX: 0,
      cropY: 0,
      selectable: true,
      evented: true,
      lockMovementX: true,
      lockMovementY: true,
      lockRotation: false,
      lockScalingX: true,
      lockScalingY: true,
      lockUniScaling: false,
      hasControls: true,
      hasBorders: true,
      hasRotatingPodouble: true,
      crossOrigin: "anonymous",
      name: "image",
      src:
          "https://www.thebrand.ai/taswira.php?width=549&height=33&quality=50&cropratio=&image=/v/uploads/gthumbs/Groupthebrand19.png",
    ));
    return list;
  }
}
