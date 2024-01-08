.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGElem;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$XPPAttributesWrapper;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SAXHandler;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$AspectRatioKeywords;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$ColourKeywords;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$FontWeightKeywords;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$FontSizeKeywords;
    }
.end annotation


# static fields
.field private static final CURRENTCOLOR:Ljava/lang/String; = "currentColor"

.field public static final ENTITY_WATCH_BUFFER_SIZE:I = 0x1000

.field private static final FEATURE_STRING_PREFIX:Ljava/lang/String; = "http://www.w3.org/TR/SVG11/feature#"

.field private static final NONE:Ljava/lang/String; = "none"

.field private static final SVG_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2000/svg"

.field private static final TAG:Ljava/lang/String; = "SVGParser"

.field private static final VALID_DISPLAY_VALUES:Ljava/lang/String; = "|inline|block|list-item|run-in|compact|marker|table|inline-table|table-row-group|table-header-group|table-footer-group|table-row|table-column-group|table-column|table-cell|table-caption|none|"

.field private static final VALID_VISIBILITY_VALUES:Ljava/lang/String; = "|visible|hidden|collapse|"

.field private static final XLINK_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/1999/xlink"

.field public static final XML_STYLESHEET_ATTR_ALTERNATE:Ljava/lang/String; = "alternate"

.field public static final XML_STYLESHEET_ATTR_ALTERNATE_NO:Ljava/lang/String; = "no"

.field public static final XML_STYLESHEET_ATTR_HREF:Ljava/lang/String; = "href"

.field public static final XML_STYLESHEET_ATTR_MEDIA:Ljava/lang/String; = "media"

.field public static final XML_STYLESHEET_ATTR_MEDIA_ALL:Ljava/lang/String; = "all"

.field public static final XML_STYLESHEET_ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final XML_STYLESHEET_PROCESSING_INSTRUCTION:Ljava/lang/String; = "xml-stylesheet"


# instance fields
.field private currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

.field private ignoreDepth:I

.field private ignoring:Z

.field private inMetadataElement:Z

.field private inStyleElement:Z

.field private metadataElementContents:Ljava/lang/StringBuilder;

.field private metadataTag:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGElem;

.field private styleElementContents:Ljava/lang/StringBuilder;

.field private svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 99
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    const/4 v1, 0x0

    .line 102
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->ignoring:Z

    .line 106
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->inMetadataElement:Z

    .line 107
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->metadataTag:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGElem;

    .line 108
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    .line 111
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->inStyleElement:Z

    .line 112
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic access$100(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->startDocument()V

    return-void
.end method

.method static synthetic access$200(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method static synthetic access$300(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->text(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->endDocument()V

    return-void
.end method

.method static synthetic access$600(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;)Ljava/util/Map;
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseProcessingInstructionAttributes(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->handleProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private appendToTextContainer(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1036
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;

    .line 1037
    iget-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1038
    :cond_0
    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    .line 1039
    :goto_0
    instance-of v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextSequence;

    if-eqz v1, :cond_1

    .line 1041
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextSequence;

    iget-object v2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    goto :goto_1

    .line 1044
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextSequence;

    invoke-direct {v1, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextSequence;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    :goto_1
    return-void
.end method

.method private circle(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<circle>"

    .line 1528
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1530
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1532
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;-><init>()V

    .line 1533
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 1534
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 1535
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1536
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1537
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesTransform(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1538
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesConditional(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1539
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCircle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;Lorg/xml/sax/Attributes;)V

    .line 1540
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    return-void

    .line 1531
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static clamp255(F)I
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const/16 p0, 0xff

    goto :goto_0

    .line 3754
    :cond_1
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_0
    return p0
.end method

.method private clipPath(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<clipPath>"

    .line 2246
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2248
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 2250
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$ClipPath;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$ClipPath;-><init>()V

    .line 2251
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$ClipPath;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 2252
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$ClipPath;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 2253
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2254
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2255
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesTransform(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 2256
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesConditional(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 2257
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$ClipPath;Lorg/xml/sax/Attributes;)V

    .line 2258
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    .line 2259
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    return-void

    .line 2249
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private defs(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<defs>"

    .line 1284
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1286
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1288
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Defs;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Defs;-><init>()V

    .line 1289
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Defs;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 1290
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Defs;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 1291
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1292
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1293
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesTransform(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1294
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    .line 1295
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    return-void

    .line 1287
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const/4 v0, 0x0

    sget-object v0, Lcom/brakefield/painter/ui/cZ/JtBOMbAc;->UVslWcvJ:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private dumpNode(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;Ljava/lang/String;)V
    .locals 2

    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v1, Lcom/brakefield/painter/ui/cZ/JtBOMbAc;->cznFjyHKkxlT:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;

    if-eqz v0, :cond_0

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1183
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    .line 1184
    invoke-direct {p0, v0, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->dumpNode(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ellipse(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<ellipse>"

    .line 1575
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1577
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1579
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;-><init>()V

    .line 1580
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 1581
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 1582
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1583
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1584
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesTransform(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1585
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesConditional(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1586
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesEllipse(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;Lorg/xml/sax/Attributes;)V

    .line 1587
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    return-void

    .line 1578
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private endDocument()V
    .locals 0

    return-void
.end method

.method private endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1051
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->ignoring:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1052
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->ignoreDepth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->ignoreDepth:I

    if-nez v0, :cond_0

    .line 1053
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->ignoring:Z

    return-void

    :cond_0
    const-string v0, "http://www.w3.org/2000/svg"

    .line 1058
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 1062
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, p3

    .line 1063
    :goto_0
    sget-object p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVGParser$SVGElem:[I

    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGElem;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGElem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v1, :cond_6

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    const/4 p2, 0x4

    if-eq p1, p2, :cond_6

    const/4 p2, 0x5

    if-eq p1, p2, :cond_6

    const/16 p2, 0xd

    if-eq p1, p2, :cond_6

    const/16 p2, 0xe

    if-eq p1, p2, :cond_6

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 1079
    :pswitch_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_7

    .line 1080
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->inStyleElement:Z

    .line 1081
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseCSSStyleSheet(Ljava/lang/String;)V

    .line 1082
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    .line 1067
    :pswitch_1
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->inMetadataElement:Z

    .line 1068
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    .line 1070
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->metadataTag:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGElem;

    sget-object p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGElem;->title:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGElem;

    if-ne p1, p2, :cond_3

    .line 1071
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 1072
    :cond_3
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->metadataTag:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGElem;

    sget-object p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGElem;->desc:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGElem;

    if-ne p1, p2, :cond_4

    .line 1073
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->setDesc(Ljava/lang/String;)V

    .line 1074
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_5
    return-void

    .line 1106
    :cond_6
    :pswitch_2
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    :cond_7
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private g(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v1, Lorg/ejml/dense/block/decomposition/hessenberg/Ia/xeDaWsHfrd;->GNdlKaNnxJEgbb:Ljava/lang/String;

    .line 1262
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1264
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1266
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Group;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Group;-><init>()V

    .line 1267
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Group;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 1268
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Group;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 1269
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1270
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1271
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesTransform(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1272
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesConditional(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1273
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    .line 1274
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    return-void

    .line 1265
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "xml-stylesheet"

    .line 1126
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->getFileResolver()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGExternalFileResolver;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string/jumbo p1, "type"

    .line 1129
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "text/css"

    .line 1130
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "alternate"

    .line 1133
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "no"

    .line 1134
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, "href"

    .line 1137
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 1140
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->getFileResolver()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGExternalFileResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGExternalFileResolver;->resolveCSSStyleSheet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string v0, "media"

    .line 1144
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_3

    const-string v0, "all"

    .line 1145
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@media "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " { "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1149
    :cond_3
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseCSSStyleSheet(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private static hslToRgb(FFF)I
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr p0, v2

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    add-float/2addr p0, v2

    :goto_0
    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr p0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    div-float/2addr p2, v1

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    move p1, v2

    :cond_2
    :goto_1
    cmpg-float v1, p2, v0

    if-gez v1, :cond_3

    goto :goto_2

    :cond_3
    cmpl-float v0, p2, v2

    if-lez v0, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, p2

    :goto_2
    const/high16 p2, 0x3f000000    # 0.5f

    cmpg-float p2, v0, p2

    if-gtz p2, :cond_5

    add-float/2addr p1, v2

    mul-float/2addr p1, v0

    goto :goto_3

    :cond_5
    add-float p2, v0, p1

    mul-float/2addr p1, v0

    sub-float p1, p2, p1

    :goto_3
    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr v0, p2

    sub-float/2addr v0, p1

    add-float v1, p0, p2

    .line 3774
    invoke-static {v0, p1, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->hueToRgb(FFF)F

    move-result v1

    .line 3775
    invoke-static {v0, p1, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->hueToRgb(FFF)F

    move-result v2

    sub-float/2addr p0, p2

    .line 3776
    invoke-static {v0, p1, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->hueToRgb(FFF)F

    move-result p0

    const/high16 p1, 0x43800000    # 256.0f

    mul-float/2addr v1, p1

    .line 3777
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->clamp255(F)I

    move-result p2

    shl-int/lit8 p2, p2, 0x10

    mul-float/2addr v2, p1

    invoke-static {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->clamp255(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    mul-float/2addr p0, p1

    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->clamp255(F)I

    move-result p0

    or-int/2addr p0, p2

    return p0
.end method

.method private static hueToRgb(FFF)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    const/high16 v1, 0x40c00000    # 6.0f

    if-gez v0, :cond_0

    add-float/2addr p2, v1

    :cond_0
    cmpl-float v0, p2, v1

    if-ltz v0, :cond_1

    sub-float/2addr p2, v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    :goto_0
    add-float/2addr p1, p0

    return p1

    :cond_2
    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    return p1

    :cond_3
    const/high16 v0, 0x40800000    # 4.0f

    cmpg-float v1, p2, v0

    if-gez v1, :cond_4

    sub-float/2addr p1, p0

    sub-float/2addr v0, p2

    mul-float/2addr p1, v0

    goto :goto_0

    :cond_4
    return p0
.end method

.method private image(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v1, Landroidx/core/app/bGP/xwFdypMN;->liqQHUgtOvVv:Ljava/lang/String;

    .line 1362
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1364
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1366
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;-><init>()V

    .line 1367
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 1368
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 1369
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1370
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1371
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesTransform(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1372
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesConditional(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1373
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesImage(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;Lorg/xml/sax/Attributes;)V

    .line 1374
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    .line 1375
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    return-void

    .line 1365
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private line(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<line>"

    .line 1627
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1629
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1631
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;-><init>()V

    .line 1632
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 1633
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 1634
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1635
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1636
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesTransform(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1637
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesConditional(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1638
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesLine(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;Lorg/xml/sax/Attributes;)V

    .line 1639
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    return-void

    .line 1630
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private linearGradient(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<linearGradient>"

    .line 2020
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2022
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 2024
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;-><init>()V

    .line 2025
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 2026
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 2027
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2028
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2029
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesGradient(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V

    .line 2030
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesLinearGradient(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;Lorg/xml/sax/Attributes;)V

    .line 2031
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    .line 2032
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    return-void

    .line 2023
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private marker(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v1, Lcom/google/android/gms/common/data/ieA/NoHYdmAciUCT;->EgfIeJW:Ljava/lang/String;

    .line 1951
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1953
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1955
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;-><init>()V

    .line 1956
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 1957
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 1958
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1959
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1960
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesConditional(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1961
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 1962
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesMarker(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;Lorg/xml/sax/Attributes;)V

    .line 1963
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    .line 1964
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    return-void

    .line 1954
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private mask(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v1, Lcom/google/android/gms/common/data/ieA/NoHYdmAciUCT;->jvvYolsoHB:Ljava/lang/String;

    .line 2438
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2440
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 2442
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;-><init>()V

    .line 2443
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 2444
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 2445
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2446
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2447
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesConditional(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 2448
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesMask(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;Lorg/xml/sax/Attributes;)V

    .line 2449
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    .line 2450
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    return-void

    .line 2441
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseAttributesCircle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1546
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1548
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1549
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1558
    :pswitch_0
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;->r:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 1559
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;->r:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1560
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string p2, "Invalid <circle> element. r cannot be negative"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1555
    :pswitch_1
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;->cy:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    goto :goto_1

    .line 1552
    :pswitch_2
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;->cx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$ClipPath;Lorg/xml/sax/Attributes;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 2265
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2267
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2268
    sget-object v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/16 v4, 0x26

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "objectBoundingBox"

    .line 2271
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2272
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "userSpaceOnUse"

    .line 2273
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 2274
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2276
    :cond_2
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string p2, "Invalid value for attribute clipPathUnits"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method private parseAttributesConditional(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1894
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1896
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1897
    sget-object v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 1912
    :pswitch_0
    invoke-static {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1913
    new-instance v3, Ljava/util/HashSet;

    if-eqz v2, :cond_0

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_0
    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 1914
    :goto_1
    invoke-interface {p1, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;->setRequiredFonts(Ljava/util/Set;)V

    goto :goto_2

    .line 1909
    :pswitch_1
    invoke-static {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseRequiredFormats(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;->setRequiredFormats(Ljava/util/Set;)V

    goto :goto_2

    .line 1906
    :pswitch_2
    invoke-static {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseSystemLanguage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;->setSystemLanguage(Ljava/util/Set;)V

    goto :goto_2

    .line 1903
    :pswitch_3
    invoke-interface {p1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;->setRequiredExtensions(Ljava/lang/String;)V

    goto :goto_2

    .line 1900
    :pswitch_4
    invoke-static {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseRequiredFeatures(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;->setRequiredFeatures(Ljava/util/Set;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2899
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 2901
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    .line 2902
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "xml:id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v2, "xml:space"

    .line 2907
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2908
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, "default"

    .line 2909
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2910
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    goto :goto_2

    :cond_1
    const-string v0, "preserve"

    .line 2911
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2912
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    goto :goto_2

    .line 2914
    :cond_2
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid value for \"xml:space\" attribute: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2904
    :cond_4
    :goto_1
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    :cond_5
    :goto_2
    return-void
.end method

.method private parseAttributesEllipse(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1593
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1595
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1596
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1602
    :pswitch_0
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;->cy:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    goto :goto_1

    .line 1599
    :pswitch_1
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;->cx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    goto :goto_1

    .line 1610
    :pswitch_2
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;->ry:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 1611
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;->ry:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1612
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string p2, "Invalid <ellipse> element. ry cannot be negative"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1605
    :pswitch_3
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;->rx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 1606
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;->rx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 1607
    :cond_1
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const/4 p2, 0x0

    sget-object p2, Lcom/google/android/gms/common/util/jw/utcqmHsaH;->bYFyfqjwiNqdTcH:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesGradient(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 2038
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 2040
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2041
    sget-object v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 2058
    :pswitch_0
    :try_start_0
    invoke-static {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;->valueOf(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    move-result-object v3

    iput-object v3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2062
    :catch_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid spreadMethod attribute. \""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\" is not a valid value."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2053
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    goto :goto_1

    :pswitch_2
    const-string v3, "objectBoundingBox"

    .line 2044
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2045
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    const-string/jumbo v3, "userSpaceOnUse"

    .line 2046
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 2047
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2049
    :cond_1
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string p2, "Invalid value for attribute gradientUnits"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string v3, ""

    .line 2066
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "http://www.w3.org/1999/xlink"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2067
    :cond_3
    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesImage(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1381
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 1383
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1384
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 1407
    :cond_0
    invoke-static {p1, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parsePreserveAspectRatio(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v2, ""

    .line 1403
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "http://www.w3.org/1999/xlink"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1404
    :cond_2
    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->href:Ljava/lang/String;

    goto :goto_1

    .line 1398
    :cond_3
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 1399
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 1400
    :cond_4
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string p2, "Invalid <use> element. height cannot be negative"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1393
    :cond_5
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 1394
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    .line 1395
    :cond_6
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string p2, "Invalid <use> element. width cannot be negative"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1390
    :cond_7
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->y:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    goto :goto_1

    .line 1387
    :cond_8
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->x:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    :cond_9
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private parseAttributesLine(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1645
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1647
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1648
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1660
    :pswitch_0
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;->y2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    goto :goto_1

    .line 1657
    :pswitch_1
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;->x2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    goto :goto_1

    .line 1654
    :pswitch_2
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;->y1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    goto :goto_1

    .line 1651
    :pswitch_3
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;->x1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesLinearGradient(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2078
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2080
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2081
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 2093
    :pswitch_0
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    goto :goto_1

    .line 2090
    :pswitch_1
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    goto :goto_1

    .line 2087
    :pswitch_2
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    goto :goto_1

    .line 2084
    :pswitch_3
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesMarker(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;Lorg/xml/sax/Attributes;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1970
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1972
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1973
    sget-object v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string v3, "auto"

    .line 2001
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 2002
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    goto :goto_1

    .line 2004
    :cond_0
    invoke-static {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    goto :goto_1

    :pswitch_1
    const-string/jumbo v3, "strokeWidth"

    .line 1992
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1993
    iput-boolean v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "userSpaceOnUse"

    .line 1994
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 1995
    iput-boolean v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    goto :goto_1

    .line 1997
    :cond_2
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string p2, "Invalid value for attribute markerUnits"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1987
    :pswitch_2
    invoke-static {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->markerHeight:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 1988
    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->markerHeight:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 1989
    :cond_3
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string p2, "Invalid <marker> element. markerHeight cannot be negative"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1982
    :pswitch_3
    invoke-static {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->markerWidth:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 1983
    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->markerWidth:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 1984
    :cond_4
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string p2, "Invalid <marker> element. markerWidth cannot be negative"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1979
    :pswitch_4
    invoke-static {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->refY:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    goto :goto_1

    .line 1976
    :pswitch_5
    invoke-static {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->refX:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesMask(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;Lorg/xml/sax/Attributes;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2463
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2456
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_c

    .line 2458
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2459
    sget-object v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_b

    const/4 v5, 0x2

    if-eq v3, v5, :cond_a

    const/4 v5, 0x3

    if-eq v3, v5, :cond_8

    const/4 v5, 0x4

    if-eq v3, v5, :cond_6

    const/16 v5, 0x2b

    const-string/jumbo v6, "userSpaceOnUse"

    const-string v7, "objectBoundingBox"

    if-eq v3, v5, :cond_3

    const/16 v5, 0x2c

    if-eq v3, v5, :cond_0

    goto/16 :goto_1

    .line 2471
    :cond_0
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2472
    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 2473
    :cond_1
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2474
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2476
    :cond_2
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const/4 p2, 0x0

    sget-object p2, Lcom/google/android/gms/common/util/jw/utcqmHsaH;->NUfQWMhlyHzB:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2462
    :cond_3
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2463
    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2464
    :cond_4
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2465
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2467
    :cond_5
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string p2, "Invalid value for attribute maskUnits"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2491
    :cond_6
    invoke-static {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 2492
    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    .line 2493
    :cond_7
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string p2, "Invalid <mask> element. height cannot be negative"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2486
    :cond_8
    invoke-static {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 2487
    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    .line 2488
    :cond_9
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string p2, "Invalid <mask> element. width cannot be negative"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2483
    :cond_a
    invoke-static {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;->y:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    goto :goto_1

    .line 2480
    :cond_b
    invoke-static {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;->x:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method private parseAttributesPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1440
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1442
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1443
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 1449
    :cond_0
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;->pathLength:Ljava/lang/Float;

    .line 1450
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;->pathLength:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    goto :goto_1

    .line 1451
    :cond_1
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string p2, "Invalid <path> element. pathLength cannot be negative"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1446
    :cond_2
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parsePath(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;->d:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private parseAttributesPattern(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2365
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2358
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 2360
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2361
    sget-object v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_b

    const/4 v5, 0x2

    if-eq v3, v5, :cond_a

    const/4 v5, 0x3

    if-eq v3, v5, :cond_8

    const/4 v5, 0x4

    if-eq v3, v5, :cond_6

    const/4 v5, 0x6

    if-eq v3, v5, :cond_4

    const-string/jumbo v5, "userSpaceOnUse"

    const-string v6, "objectBoundingBox"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 2382
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    goto/16 :goto_1

    .line 2373
    :pswitch_1
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2374
    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 2375
    :cond_0
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2376
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 2378
    :cond_1
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string p2, "Invalid value for attribute patternContentUnits"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2364
    :pswitch_2
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2365
    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2366
    :cond_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2367
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2369
    :cond_3
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string p2, "Invalid value for attribute patternUnits"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string v3, ""

    .line 2401
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    sget-object v3, Lcom/google/android/exoplayer2/metadata/icy/OZ/XlYsLoHtRjl;->KFvCdDfzMKdD:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2402
    :cond_5
    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    goto :goto_1

    .line 2396
    :cond_6
    invoke-static {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 2397
    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    .line 2398
    :cond_7
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string p2, "Invalid <pattern> element. height cannot be negative"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2391
    :cond_8
    invoke-static {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 2392
    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    .line 2393
    :cond_9
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string p2, "Invalid <pattern> element. width cannot be negative"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2388
    :cond_a
    invoke-static {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->y:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    goto :goto_1

    .line 2385
    :cond_b
    invoke-static {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->x:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    :cond_c
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_d
    return-void

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesPolyLine(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1696
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1698
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    sget-object v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->points:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_3

    .line 1700
    new-instance v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 1701
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1702
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 1704
    :goto_1
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1705
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v4

    .line 1706
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    const-string v6, "Invalid <"

    if-nez v5, :cond_1

    .line 1708
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 1709
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v5

    .line 1710
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1712
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 1713
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1714
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1711
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "> points attribute. There should be an even number of coordinates."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1707
    :cond_1
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "> points attribute. Non-coordinate content found in list."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1716
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [F

    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;->points:[F

    .line 1718
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 1719
    iget-object v5, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;->points:[F

    add-int/lit8 v6, v3, 0x1

    aput v4, v5, v3

    move v3, v6

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private parseAttributesRadialGradient(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2126
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2128
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2129
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x23

    if-eq v2, v3, :cond_2

    const/16 v3, 0x24

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 2138
    :pswitch_0
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->r:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 2139
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->r:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2140
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string p2, "Invalid <radialGradient> element. r cannot be negative"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2135
    :pswitch_1
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    goto :goto_1

    .line 2132
    :pswitch_2
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    goto :goto_1

    .line 2146
    :cond_1
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    goto :goto_1

    .line 2143
    :cond_2
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesRect(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1484
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 1486
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1487
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 1511
    :cond_0
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->ry:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 1512
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->ry:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 1513
    :cond_1
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const/4 p2, 0x0

    sget-object p2, Lcom/google/api/client/extensions/android/http/tr/rffuYzZsQ;->wcBRNcJLJjW:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1506
    :cond_2
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->rx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 1507
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->rx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 1508
    :cond_3
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string p2, "Invalid <rect> element. rx cannot be negative"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1501
    :cond_4
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 1502
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    .line 1503
    :cond_5
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string p2, "Invalid <rect> element. height cannot be negative"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1496
    :cond_6
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 1497
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    .line 1498
    :cond_7
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string p2, "Invalid <rect> element. width cannot be negative"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1493
    :cond_8
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->y:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    goto :goto_1

    .line 1490
    :cond_9
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->x:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private parseAttributesSVG(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1225
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 1227
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1228
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 1247
    :cond_0
    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->version:Ljava/lang/String;

    goto :goto_1

    .line 1242
    :cond_1
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 1243
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 1244
    :cond_2
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string p2, "Invalid <svg> element. height cannot be negative"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1237
    :cond_3
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 1238
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 1239
    :cond_4
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string p2, "Invalid <svg> element. width cannot be negative"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1234
    :cond_5
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->y:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    goto :goto_1

    .line 1231
    :cond_6
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->x:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private parseAttributesStop(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Stop;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2180
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2182
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2183
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x25

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 2186
    :cond_0
    invoke-direct {p0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseGradientOffset(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2927
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2929
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2930
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 2935
    :cond_0
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_2

    .line 2946
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    if-nez v1, :cond_1

    .line 2947
    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    invoke-direct {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;-><init>()V

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    .line 2948
    :cond_1
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->processStyleProperty(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2942
    :cond_2
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->parseClassAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->classNames:Ljava/util/List;

    goto :goto_1

    .line 2938
    :cond_3
    invoke-static {p1, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private parseAttributesTRef(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TRef;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v0, 0x0

    .line 1854
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1856
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1857
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, ""

    .line 1860
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "http://www.w3.org/1999/xlink"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1861
    :cond_1
    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private parseAttributesTextPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2314
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2316
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2317
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const/16 v3, 0x27

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 2324
    :cond_0
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;->startOffset:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    goto :goto_1

    :cond_1
    const-string v2, ""

    .line 2320
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "http://www.w3.org/1999/xlink"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2321
    :cond_2
    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private parseAttributesTextPosition(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1773
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1775
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1776
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/16 v3, 0x13

    if-eq v2, v3, :cond_1

    const/16 v3, 0x14

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 1788
    :cond_0
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/List;

    goto :goto_1

    .line 1785
    :cond_1
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/List;

    goto :goto_1

    .line 1782
    :cond_2
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/List;

    goto :goto_1

    .line 1779
    :cond_3
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/List;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private parseAttributesTransform(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3297
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3299
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    move-result-object v1

    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->transform:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    if-ne v1, v2, :cond_0

    .line 3301
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$HasTransform;->setTransform(Landroid/graphics/Matrix;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private parseAttributesUse(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1324
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 1326
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1327
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, ""

    .line 1346
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "http://www.w3.org/1999/xlink"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1347
    :cond_1
    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->href:Ljava/lang/String;

    goto :goto_1

    .line 1341
    :cond_2
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 1342
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 1343
    :cond_3
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string p2, "Invalid <use> element. height cannot be negative"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1336
    :cond_4
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 1337
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    .line 1338
    :cond_5
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string p2, "Invalid <use> element. width cannot be negative"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1333
    :cond_6
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->y:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    goto :goto_1

    .line 1330
    :cond_7
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->x:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    :cond_8
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private parseAttributesViewBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3277
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3279
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3280
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    const/16 v3, 0x57

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 3283
    :cond_0
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseViewBox(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    goto :goto_1

    .line 3286
    :cond_1
    invoke-static {p1, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parsePreserveAspectRatio(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private parseCSSStyleSheet(Ljava/lang/String;)V
    .locals 2

    .line 4500
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->screen:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;)V

    .line 4501
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->parse(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->addCSSRules(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;)V

    return-void
.end method

.method private static parseClip(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CSSClipRect;
    .locals 6

    const-string v0, "auto"

    .line 4068
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "rect("

    .line 4070
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 4073
    :cond_1
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 4074
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 4076
    invoke-static {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object p0

    .line 4077
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 4078
    invoke-static {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v2

    .line 4079
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 4080
    invoke-static {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v3

    .line 4081
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 4082
    invoke-static {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v4

    .line 4084
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    const/16 v5, 0x29

    .line 4085
    invoke-virtual {v0, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    .line 4088
    :cond_2
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CSSClipRect;

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CSSClipRect;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;)V

    return-object v0
.end method

.method private static parseColour(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3649
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    const/4 v2, 0x5

    const/high16 v3, -0x1000000

    const/4 v4, 0x4

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    .line 3651
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/IntegerParser;->parseHex(Ljava/lang/String;II)Lcom/brakefield/infinitestudio/image/svg/androidsvg/IntegerParser;

    move-result-object v0

    const-string v1, "Bad hex colour value: "

    if-eqz v0, :cond_4

    .line 3655
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/IntegerParser;->getEndPos()I

    move-result v5

    if-eq v5, v4, :cond_3

    if-eq v5, v2, :cond_2

    const/4 v2, 0x7

    if-eq v5, v2, :cond_1

    const/16 v2, 0x9

    if-ne v5, v2, :cond_0

    .line 3674
    new-instance p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/IntegerParser;->value()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/IntegerParser;->value()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;-><init>(I)V

    return-object p0

    .line 3677
    :cond_0
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3672
    :cond_1
    new-instance p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/IntegerParser;->value()I

    move-result v0

    or-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;-><init>(I)V

    return-object p0

    .line 3665
    :cond_2
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/IntegerParser;->value()I

    move-result p0

    const v0, 0xf000

    and-int/2addr v0, p0

    and-int/lit16 v1, p0, 0xf00

    and-int/lit16 v2, p0, 0xf0

    and-int/lit8 p0, p0, 0xf

    .line 3670
    new-instance v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    shl-int/lit8 v5, p0, 0x1c

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v5

    shl-int/lit8 v5, v0, 0x8

    or-int/2addr p0, v5

    shl-int/2addr v0, v4

    or-int/2addr p0, v0

    shl-int/lit8 v0, v1, 0x4

    or-int/2addr p0, v0

    or-int/2addr p0, v1

    or-int/2addr p0, v2

    shr-int/lit8 v0, v2, 0x4

    or-int/2addr p0, v0

    invoke-direct {v3, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;-><init>(I)V

    return-object v3

    .line 3659
    :cond_3
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/IntegerParser;->value()I

    move-result p0

    and-int/lit16 v0, p0, 0xf00

    and-int/lit16 v1, p0, 0xf0

    and-int/lit8 p0, p0, 0xf

    .line 3663
    new-instance v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    shl-int/lit8 v5, v0, 0xc

    or-int/2addr v3, v5

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    shl-int/lit8 v3, v1, 0x8

    or-int/2addr v0, v3

    shl-int/2addr v1, v4

    or-int/2addr v0, v1

    shl-int/lit8 v1, p0, 0x4

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    invoke-direct {v2, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;-><init>(I)V

    return-object v2

    .line 3653
    :cond_4
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3681
    :cond_5
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rgba("

    .line 3682
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v5, 0x29

    const/high16 v6, 0x43800000    # 256.0f

    const/16 v7, 0x25

    if-nez v1, :cond_f

    const-string v8, "rgb("

    .line 3683
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto/16 :goto_2

    :cond_6
    const-string v1, "hsla("

    .line 3715
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v8, "hsl("

    .line 3716
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_0

    .line 3747
    :cond_7
    invoke-static {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseColourKeyword(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    move-result-object p0

    return-object p0

    .line 3718
    :cond_8
    :goto_0
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;

    if-eqz v1, :cond_9

    goto :goto_1

    :cond_9
    move v2, v4

    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3719
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3721
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v2

    .line 3723
    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v4

    .line 3724
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_a

    .line 3725
    invoke-virtual {v0, v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->consume(C)Z

    .line 3727
    :cond_a
    invoke-virtual {v0, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v8

    .line 3728
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_b

    .line 3729
    invoke-virtual {v0, v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->consume(C)Z

    :cond_b
    if-eqz v1, :cond_d

    .line 3732
    invoke-virtual {v0, v8}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v1

    .line 3733
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3734
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v0, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3736
    new-instance p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    mul-float/2addr v1, v6

    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->clamp255(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-static {v2, v4, v8}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->hslToRgb(FFF)I

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;-><init>(I)V

    return-object p0

    .line 3735
    :cond_c
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad hsla() colour value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3738
    :cond_d
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3739
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v0, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3741
    new-instance p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    invoke-static {v2, v4, v8}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->hslToRgb(FFF)I

    move-result v0

    or-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;-><init>(I)V

    return-object p0

    .line 3740
    :cond_e
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad hsl() colour value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3685
    :cond_f
    :goto_2
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;

    if-eqz v1, :cond_10

    goto :goto_3

    :cond_10
    move v2, v4

    :goto_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3686
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3688
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v2

    .line 3689
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    const/high16 v8, 0x42c80000    # 100.0f

    if-nez v4, :cond_11

    invoke-virtual {v0, v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_11

    mul-float/2addr v2, v6

    div-float/2addr v2, v8

    .line 3692
    :cond_11
    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v4

    .line 3693
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_12

    invoke-virtual {v0, v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v9

    if-eqz v9, :cond_12

    mul-float/2addr v4, v6

    div-float/2addr v4, v8

    .line 3696
    :cond_12
    invoke-virtual {v0, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v9

    .line 3697
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_13

    invoke-virtual {v0, v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v7

    if-eqz v7, :cond_13

    mul-float/2addr v9, v6

    div-float/2addr v9, v8

    :cond_13
    if-eqz v1, :cond_15

    .line 3701
    invoke-virtual {v0, v9}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v1

    .line 3702
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3703
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v0, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3705
    new-instance p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    mul-float/2addr v1, v6

    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->clamp255(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-static {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->clamp255(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-static {v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->clamp255(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-static {v9}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->clamp255(F)I

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;-><init>(I)V

    return-object p0

    .line 3704
    :cond_14
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad rgba() colour value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3707
    :cond_15
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3708
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3710
    new-instance p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    invoke-static {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->clamp255(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    invoke-static {v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->clamp255(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-static {v9}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->clamp255(F)I

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;-><init>(I)V

    return-object p0

    .line 3709
    :cond_16
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad rgb() colour value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseColourKeyword(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    .line 3794
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$ColourKeywords;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3798
    new-instance p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;-><init>(I)V

    return-object p0

    .line 3796
    :cond_0
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid colour keyword: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseColourSpecifer(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;
    .locals 1

    .line 3629
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "currentColor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3636
    :try_start_0
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    move-result-object p0
    :try_end_0
    .catch Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    .line 3633
    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CurrentColor;->getInstance()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CurrentColor;

    move-result-object p0

    return-object p0

    .line 3631
    :cond_1
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;->TRANSPARENT:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    return-object p0
.end method

.method private static parseFillRule(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;
    .locals 1

    const-string v0, "nonzero"

    .line 3961
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3962
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    return-object p0

    :cond_0
    const-string v0, "evenodd"

    .line 3963
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3964
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseFloat(Ljava/lang/String;)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    .line 3506
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3509
    invoke-static {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;II)F

    move-result p0

    return p0

    .line 3508
    :cond_0
    new-instance p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid float value (empty string)"

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseFloat(Ljava/lang/String;II)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    .line 3514
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/NumberParser;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/NumberParser;-><init>()V

    .line 3515
    invoke-virtual {v0, p0, p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/NumberParser;->parseNumber(Ljava/lang/String;II)F

    move-result p1

    .line 3516
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-nez p2, :cond_0

    return p1

    .line 3519
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid float value: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static parseFont(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;Ljava/lang/String;)V
    .locals 6

    .line 3811
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "|caption|icon|menu|message-box|small-caption|status-bar|"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3815
    :cond_0
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    move-object v1, p1

    move-object v2, v1

    :goto_0
    const/16 v3, 0x2f

    .line 3819
    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v4

    .line 3820
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    if-nez v4, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v5, "normal"

    .line 3825
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    .line 3828
    invoke-static {v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$FontWeightKeywords;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    .line 3833
    invoke-static {v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseFontStyle(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    const-string/jumbo v2, "small-caps"

    .line 3838
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v4

    goto :goto_0

    .line 3847
    :cond_6
    :goto_1
    invoke-static {v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseFontSize(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v2

    .line 3850
    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3852
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3853
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 3856
    :try_start_0
    invoke-static {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;
    :try_end_0
    .catch Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    return-void

    .line 3861
    :cond_7
    :goto_2
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3865
    :cond_8
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->restOfText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    .line 3866
    iput-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontSize:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-nez p1, :cond_9

    const/16 p1, 0x190

    goto :goto_3

    .line 3867
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    if-nez v1, :cond_a

    .line 3868
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;

    :cond_a
    iput-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;

    .line 3869
    iget-wide v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x1e000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    return-void
.end method

.method private static parseFontFamily(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3877
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 3880
    :cond_0
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextQuotedString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v1, 0x2c

    .line 3882
    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextTokenWithWhitespace(C)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    .line 3886
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 3887
    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3888
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3889
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p0
.end method

.method private static parseFontSize(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;
    .locals 1

    .line 3900
    :try_start_0
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$FontSizeKeywords;->get(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3902
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object v0
    :try_end_0
    .catch Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseFontStyle(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;
    .locals 2

    .line 3921
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "normal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "italic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "oblique"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 3924
    :pswitch_0
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;

    return-object p0

    .line 3923
    :pswitch_1
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;->Italic:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;

    return-object p0

    .line 3925
    :pswitch_2
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;->Oblique:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x62ce05cf -> :sswitch_2
        -0x4642c5d0 -> :sswitch_1
        -0x3df94319 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseFontWeight(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 3913
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$FontWeightKeywords;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p1, "none"

    .line 4445
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo p1, "url("

    .line 4447
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const-string p1, ")"

    .line 4449
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_2

    .line 4450
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4452
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parseGradientOffset(Ljava/lang/String;)Ljava/lang/Float;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    .line 2197
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 2199
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x25

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v2, v4

    .line 2208
    :goto_0
    :try_start_0
    invoke-static {p1, v4, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;II)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    if-eqz v2, :cond_1

    div-float/2addr v0, v1

    :cond_1
    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-gez v3, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    .line 2211
    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 2215
    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid offset value in <stop>: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2198
    :cond_4
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid offset value in <stop> (empty string)"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    .line 3443
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3445
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3446
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->px:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    add-int/lit8 v2, v0, -0x1

    .line 3447
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 3451
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->percent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    .line 3452
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x2

    .line 3454
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3456
    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->valueOf(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3458
    :catch_0
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid length unit specifier: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 3463
    :try_start_1
    invoke-static {p0, v2, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;II)F

    move-result v0

    .line 3464
    new-instance v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-direct {v2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;-><init>(FLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    move-exception v0

    .line 3468
    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid length value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 3444
    :cond_2
    new-instance p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid length value (empty string)"

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseLengthList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    .line 3478
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 3481
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3483
    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3484
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3486
    :goto_0
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 3488
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result p0

    .line 3489
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3491
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextUnit()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3493
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->px:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    .line 3494
    :cond_0
    new-instance v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-direct {v3, p0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;-><init>(FLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3495
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    goto :goto_0

    .line 3490
    :cond_1
    new-instance p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid length list value: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->ahead()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object v0

    .line 3479
    :cond_3
    new-instance p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid length list (empty string)"

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseLengthOrAuto(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;
    .locals 1

    const-string v0, "auto"

    .line 4094
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->consume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4095
    new-instance p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;-><init>(F)V

    return-object p0

    .line 4097
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object p0

    return-object p0
.end method

.method private static parseOpacity(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2

    .line 3530
    :try_start_0
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    :goto_0
    move p0, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_1

    goto :goto_0

    .line 3531
    :cond_1
    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_0
    .catch Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseOverflow(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .line 4051
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "visible"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "scroll"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "hidden"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 4055
    :pswitch_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 4058
    :pswitch_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x48916256 -> :sswitch_3
        -0x361a1933 -> :sswitch_2
        0x2dddaf -> :sswitch_1
        0x1bd1f072 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static parsePaintSpecifier(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;
    .locals 4

    const-string/jumbo v0, "url("

    .line 3604
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ")"

    .line 3606
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq v0, v1, :cond_1

    .line 3609
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 3612
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 3613
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3614
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseColourSpecifer(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    move-result-object v2

    .line 3615
    :cond_0
    new-instance p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PaintReference;

    invoke-direct {p0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PaintReference;-><init>(Ljava/lang/String;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;)V

    return-object p0

    .line 3619
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 3620
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PaintReference;

    invoke-direct {v0, p0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PaintReference;-><init>(Ljava/lang/String;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;)V

    return-object v0

    .line 3623
    :cond_2
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseColourSpecifer(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    move-result-object p0

    return-object p0
.end method

.method private static parsePath(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;
    .locals 20

    .line 4132
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 4141
    new-instance v9, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;

    invoke-direct {v9}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;-><init>()V

    .line 4143
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v9

    .line 4146
    :cond_0
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x4d

    const/16 v10, 0x6d

    if-eq v1, v2, :cond_1

    if-eq v1, v10, :cond_1

    return-object v9

    :cond_1
    move v12, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 4153
    :goto_0
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    const/16 v5, 0x6c

    const/high16 v6, 0x40000000    # 2.0f

    const-string v7, " path segment"

    const-string v8, "Bad path coords for "

    const-string v15, "SVGParser"

    sparse-switch v12, :sswitch_data_0

    return-object v9

    .line 4253
    :sswitch_0
    invoke-virtual {v9}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;->close()V

    move v1, v13

    move v2, v1

    move v3, v14

    :goto_1
    move v4, v3

    :goto_2
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 4276
    :sswitch_1
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v4

    .line 4277
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_2
    const/16 v5, 0x76

    if-ne v12, v5, :cond_3

    add-float/2addr v4, v3

    :cond_3
    move v3, v4

    .line 4284
    invoke-virtual {v9, v1, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    goto :goto_1

    :sswitch_2
    mul-float v5, v1, v6

    sub-float v2, v5, v2

    mul-float/2addr v6, v3

    sub-float v4, v6, v4

    .line 4317
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v5

    .line 4318
    invoke-virtual {v0, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v6

    .line 4319
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 4320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_4
    const/16 v7, 0x74

    if-ne v12, v7, :cond_5

    add-float/2addr v5, v1

    add-float/2addr v6, v3

    :cond_5
    move v1, v5

    move v3, v6

    .line 4327
    invoke-virtual {v9, v2, v4, v1, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;->quadTo(FFFF)V

    goto :goto_2

    :sswitch_3
    mul-float v5, v1, v6

    sub-float v2, v5, v2

    mul-float/2addr v6, v3

    sub-float v4, v6, v4

    .line 4229
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v5

    .line 4230
    invoke-virtual {v0, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v6

    .line 4231
    invoke-virtual {v0, v6}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v11

    .line 4232
    invoke-virtual {v0, v11}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v16

    .line 4233
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 4234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_6
    const/16 v7, 0x73

    if-ne v12, v7, :cond_7

    add-float/2addr v11, v1

    add-float v16, v16, v3

    add-float/2addr v5, v1

    add-float/2addr v6, v3

    :cond_7
    move v8, v5

    move v15, v6

    move-object v1, v9

    move v3, v4

    move v4, v8

    move v5, v15

    move v6, v11

    move/from16 v7, v16

    .line 4243
    invoke-virtual/range {v1 .. v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;->cubicTo(FFFFFF)V

    goto/16 :goto_4

    .line 4291
    :sswitch_4
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v2

    .line 4292
    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v4

    .line 4293
    invoke-virtual {v0, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v5

    .line 4294
    invoke-virtual {v0, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v6

    .line 4295
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 4296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_8
    const/16 v7, 0x71

    if-ne v12, v7, :cond_9

    add-float/2addr v5, v1

    add-float/2addr v6, v3

    add-float/2addr v2, v1

    add-float/2addr v4, v3

    :cond_9
    move v1, v5

    move v3, v6

    .line 4305
    invoke-virtual {v9, v2, v4, v1, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;->quadTo(FFFF)V

    goto/16 :goto_2

    .line 4160
    :sswitch_5
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v2

    .line 4161
    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v4

    .line 4162
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 4163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_a
    if-ne v12, v10, :cond_b

    .line 4167
    invoke-virtual {v9}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    add-float/2addr v2, v1

    add-float/2addr v4, v3

    :cond_b
    move v1, v2

    move v3, v4

    .line 4171
    invoke-virtual {v9, v1, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;->moveTo(FF)V

    if-ne v12, v10, :cond_c

    goto :goto_3

    :cond_c
    const/16 v5, 0x4c

    :goto_3
    move v2, v1

    move v13, v2

    move v4, v3

    move v14, v4

    move v12, v5

    goto/16 :goto_2

    .line 4181
    :sswitch_6
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v2

    .line 4182
    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v4

    .line 4183
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 4184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_d
    if-ne v12, v5, :cond_e

    add-float/2addr v2, v1

    add-float/2addr v4, v3

    :cond_e
    move v1, v2

    move v3, v4

    .line 4191
    invoke-virtual {v9, v1, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    move v2, v1

    goto/16 :goto_1

    .line 4261
    :sswitch_7
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v2

    .line 4262
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 4263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_f
    const/16 v5, 0x68

    if-ne v12, v5, :cond_10

    add-float/2addr v2, v1

    :cond_10
    move v1, v2

    .line 4269
    invoke-virtual {v9, v1, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    move v2, v1

    goto/16 :goto_2

    .line 4199
    :sswitch_8
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v2

    .line 4200
    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v4

    .line 4201
    invoke-virtual {v0, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v5

    .line 4202
    invoke-virtual {v0, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v6

    .line 4203
    invoke-virtual {v0, v6}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v11

    .line 4204
    invoke-virtual {v0, v11}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v16

    .line 4205
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 4206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_11
    const/16 v7, 0x63

    if-ne v12, v7, :cond_12

    add-float/2addr v11, v1

    add-float v16, v16, v3

    add-float/2addr v2, v1

    add-float/2addr v4, v3

    add-float/2addr v5, v1

    add-float/2addr v6, v3

    :cond_12
    move v3, v4

    move v8, v5

    move v15, v6

    move-object v1, v9

    move v4, v8

    move v5, v15

    move v6, v11

    move/from16 v7, v16

    .line 4217
    invoke-virtual/range {v1 .. v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;->cubicTo(FFFFFF)V

    :goto_4
    move v2, v8

    move v1, v11

    move v4, v15

    move/from16 v3, v16

    goto/16 :goto_2

    .line 4337
    :sswitch_9
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v2

    .line 4338
    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v4

    .line 4339
    invoke-virtual {v0, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v5

    .line 4340
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->checkedNextFlag(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v6

    .line 4341
    invoke-virtual {v0, v6}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->checkedNextFlag(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v11

    .line 4342
    invoke-virtual {v0, v11}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Boolean;)F

    move-result v10

    .line 4343
    invoke-virtual {v0, v10}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v17

    .line 4344
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    move-result v18

    if-nez v18, :cond_17

    const/16 v18, 0x0

    cmpg-float v19, v2, v18

    if-ltz v19, :cond_17

    cmpg-float v19, v4, v18

    if-gez v19, :cond_13

    goto :goto_6

    :cond_13
    const/16 v7, 0x61

    if-ne v12, v7, :cond_14

    add-float/2addr v10, v1

    add-float v17, v17, v3

    .line 4352
    :cond_14
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object v1, v9

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v10

    move/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;->arcTo(FFFZZFF)V

    move v1, v10

    move v2, v1

    move/from16 v3, v17

    move v4, v3

    .line 4361
    :goto_5
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 4362
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v5

    if-eqz v5, :cond_15

    return-object v9

    .line 4366
    :cond_15
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->hasLetter()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 4368
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :cond_16
    const/16 v10, 0x6d

    goto/16 :goto_0

    .line 4345
    :cond_17
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_9
        0x43 -> :sswitch_8
        0x48 -> :sswitch_7
        0x4c -> :sswitch_6
        0x4d -> :sswitch_5
        0x51 -> :sswitch_4
        0x53 -> :sswitch_3
        0x54 -> :sswitch_2
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
        0x61 -> :sswitch_9
        0x63 -> :sswitch_8
        0x68 -> :sswitch_7
        0x6c -> :sswitch_6
        0x6d -> :sswitch_5
        0x71 -> :sswitch_4
        0x73 -> :sswitch_3
        0x74 -> :sswitch_2
        0x76 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method private static parsePreserveAspectRatio(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    .line 3570
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3571
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3573
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v2, Lcom/google/android/gms/common/data/ieA/NoHYdmAciUCT;->tEyFXJPGeqHoMll:Ljava/lang/String;

    .line 3574
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3575
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3576
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 3579
    :cond_0
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$AspectRatioKeywords;->get(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v1

    .line 3582
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3584
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3585
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 3586
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v2, "meet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "slice"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3590
    sget-object p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    goto :goto_0

    .line 3592
    :cond_1
    new-instance p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid preserveAspectRatio definition: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3588
    :cond_2
    sget-object p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 3595
    :goto_0
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    invoke-direct {v0, v1, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    return-void
.end method

.method private parseProcessingInstructionAttributes(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1160
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    const/16 v1, 0x3d

    .line 1161
    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    .line 1164
    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->consume(C)Z

    .line 1165
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextQuotedString()Ljava/lang/String;

    move-result-object v3

    .line 1166
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 1169
    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static parseRenderQuality(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$RenderQuality;
    .locals 2

    .line 4116
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "optimizeSpeed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "optimizeQuality"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 4120
    :pswitch_0
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$RenderQuality;->optimizeSpeed:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$RenderQuality;

    return-object p0

    .line 4118
    :pswitch_1
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$RenderQuality;->auto:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$RenderQuality;

    return-object p0

    .line 4119
    :pswitch_2
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$RenderQuality;->optimizeQuality:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$RenderQuality;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x379c7c9e -> :sswitch_2
        0x2dddaf -> :sswitch_1
        0x159eff6a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseRequiredFeatures(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4383
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 4384
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 4386
    :goto_0
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4388
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://www.w3.org/TR/SVG11/feature#"

    .line 4389
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x23

    .line 4390
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v1, "UNSUPPORTED"

    .line 4395
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4397
    :goto_1
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static parseRequiredFormats(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4430
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 4431
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 4433
    :goto_0
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4435
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 4436
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4437
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static parseStrokeDashArray(Ljava/lang/String;)[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;
    .locals 5

    .line 3998
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3999
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 4001
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    return-object v1

    .line 4004
    :cond_0
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 4007
    :cond_1
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 4010
    :cond_2
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue()F

    move-result v2

    .line 4012
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4013
    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4014
    :goto_0
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result p0

    if-nez p0, :cond_5

    .line 4016
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 4017
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v1

    .line 4020
    :cond_3
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isNegative()Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v1

    .line 4022
    :cond_4
    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4023
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue()F

    move-result p0

    add-float/2addr v2, p0

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    cmpl-float p0, v2, p0

    if-nez p0, :cond_6

    return-object v1

    .line 4031
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    return-object p0
.end method

.method private static parseStrokeLineCap(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;
    .locals 1

    const-string v0, "butt"

    .line 3972
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3973
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;->Butt:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    return-object p0

    :cond_0
    const-string v0, "round"

    .line 3974
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3975
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;->Round:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    return-object p0

    :cond_1
    const-string/jumbo v0, "square"

    .line 3976
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 3977
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;->Square:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseStrokeLineJoin(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;
    .locals 1

    const-string v0, "miter"

    .line 3985
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3986
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;->Miter:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    return-object p0

    :cond_0
    const-string v0, "round"

    .line 3987
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3988
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;->Round:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    return-object p0

    :cond_1
    const-string v0, "bevel"

    .line 3989
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 3990
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;->Bevel:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Ljava/lang/String;)V
    .locals 4

    .line 2960
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;

    const-string v1, "/\\*.*?\\*/"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/16 p1, 0x3a

    .line 2964
    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v1

    .line 2965
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2966
    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 2968
    :cond_1
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    const/16 p1, 0x3b

    .line 2969
    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextTokenWithWhitespace(C)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_1
    return-void

    .line 2972
    :cond_2
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2973
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2975
    :cond_3
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    if-nez p1, :cond_4

    .line 2976
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    .line 2977
    :cond_4
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    invoke-static {p1, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->processStyleProperty(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    .line 2978
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_0
.end method

.method private static parseSystemLanguage(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4407
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 4408
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 4410
    :goto_0
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4412
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    .line 4413
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 4415
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4418
    :cond_0
    new-instance v2, Ljava/util/Locale;

    const-string v3, ""

    invoke-direct {v2, v1, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 4419
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4420
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static parseTextAnchor(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;
    .locals 2

    .line 4038
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 4040
    :pswitch_0
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    return-object p0

    .line 4042
    :pswitch_1
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->End:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    return-object p0

    .line 4041
    :pswitch_2
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseTextDecoration(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;
    .locals 2

    .line 3934
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "overline"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "blink"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "underline"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "line-through"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 3938
    :pswitch_0
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;->Overline:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    return-object p0

    .line 3940
    :pswitch_1
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;->Blink:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    return-object p0

    .line 3936
    :pswitch_2
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;->None:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    return-object p0

    .line 3937
    :pswitch_3
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    return-object p0

    .line 3939
    :pswitch_4
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x45d81614 -> :sswitch_4
        -0x3d363934 -> :sswitch_3
        0x33af38 -> :sswitch_2
        0x597af5c -> :sswitch_1
        0x1f9462c8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseTextDirection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDirection;
    .locals 1

    .line 3949
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "ltr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "rtl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3952
    :cond_0
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDirection;->RTL:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDirection;

    return-object p0

    .line 3951
    :cond_1
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDirection;

    return-object p0
.end method

.method private parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 3309
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 3311
    new-instance v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;

    invoke-direct {v2, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3312
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3314
    :goto_0
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_12

    .line 3316
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFunction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 3321
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v4, "translate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    move v11, v5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "skewY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v11, v6

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "skewX"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v11, v7

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "scale"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move v11, v8

    goto :goto_1

    :sswitch_4
    const-string v4, "rotate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    move v11, v9

    goto :goto_1

    :sswitch_5
    const-string v4, "matrix"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    move v11, v10

    :goto_1
    const/4 v4, 0x0

    const/16 v12, 0x29

    const-string v13, "Invalid transform list: "

    packed-switch v11, :pswitch_data_0

    .line 3420
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid transform list fn: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3346
    :pswitch_0
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3347
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v3

    .line 3348
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->possibleNextFloat()F

    move-result v5

    .line 3349
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3351
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v2, v12}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3354
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3355
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto/16 :goto_2

    .line 3357
    :cond_6
    invoke-virtual {v1, v3, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto/16 :goto_2

    .line 3352
    :cond_7
    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3408
    :pswitch_1
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3409
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v3

    .line 3410
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3412
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v2, v12}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_8

    float-to-double v5, v3

    .line 3415
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    double-to-float v3, v5

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Matrix;->preSkew(FF)Z

    goto/16 :goto_2

    .line 3413
    :cond_8
    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3396
    :pswitch_2
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3397
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v3

    .line 3398
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3400
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v2, v12}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_9

    float-to-double v5, v3

    .line 3403
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    double-to-float v3, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preSkew(FF)Z

    goto/16 :goto_2

    .line 3401
    :cond_9
    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3361
    :pswitch_3
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3362
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v3

    .line 3363
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->possibleNextFloat()F

    move-result v4

    .line 3364
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3366
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v2, v12}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 3369
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 3370
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_2

    .line 3372
    :cond_a
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_2

    .line 3367
    :cond_b
    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3376
    :pswitch_4
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3377
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v3

    .line 3378
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->possibleNextFloat()F

    move-result v4

    .line 3379
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->possibleNextFloat()F

    move-result v5

    .line 3380
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3382
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {v2, v12}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 3385
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 3386
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    goto/16 :goto_2

    .line 3387
    :cond_c
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_d

    .line 3388
    invoke-virtual {v1, v3, v4, v5}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto/16 :goto_2

    .line 3390
    :cond_d
    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3383
    :cond_e
    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3323
    :pswitch_5
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3324
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v3

    .line 3325
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3326
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v11

    .line 3327
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3328
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v14

    .line 3329
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3330
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v15

    .line 3331
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3332
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v16

    .line 3333
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3334
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v17

    .line 3335
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3337
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    move-result v18

    if-nez v18, :cond_10

    invoke-virtual {v2, v12}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 3340
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    const/16 v13, 0x9

    new-array v13, v13, [F

    aput v3, v13, v10

    aput v14, v13, v9

    aput v16, v13, v8

    aput v11, v13, v7

    aput v15, v13, v6

    aput v17, v13, v5

    const/4 v3, 0x6

    aput v4, v13, v3

    const/4 v3, 0x7

    aput v4, v13, v3

    const/16 v3, 0x8

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v13, v3

    .line 3341
    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->setValues([F)V

    .line 3342
    invoke-virtual {v1, v12}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3423
    :goto_2
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_3

    .line 3425
    :cond_f
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    goto/16 :goto_0

    .line 3338
    :cond_10
    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3319
    :cond_11
    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad transform function encountered in transform list: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    :goto_3
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x4072683f -> :sswitch_5
        -0x372522a5 -> :sswitch_4
        0x683094a -> :sswitch_3
        0x686bc8e -> :sswitch_2
        0x686bc8f -> :sswitch_1
        0x3ec0f14e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseUsingSAX(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "SVGParser"

    const-string v1, "Falling back to SAX parser"

    .line 797
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    const-string v1, "http://xml.org/sax/features/external-general-entities"

    const/4 v2, 0x0

    .line 804
    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://xml.org/sax/features/external-parameter-entities"

    .line 805
    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 807
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 808
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 810
    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SAXHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SAXHandler;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;)V

    .line 811
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    const-string v2, "http://xml.org/sax/properties/lexical-handler"

    .line 812
    invoke-interface {v0, v2, v1}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 814
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 826
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v1, "Stream error"

    invoke-direct {v0, v1, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    .line 822
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v1, "SVG parse error"

    invoke-direct {v0, v1, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_2
    move-exception p1

    .line 818
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const/4 v1, 0x0

    sget-object v1, Lcom/brakefield/infinitestudio/color/YQ/FdgWfQQGDtjiVL;->AszNRoKtrQ:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method private parseUsingXmlPullParser(Ljava/io/InputStream;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    .line 709
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 710
    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$XPPAttributesWrapper;

    invoke-direct {v1, p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$XPPAttributesWrapper;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;Lorg/xmlpull/v1/XmlPullParser;)V

    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    const/4 v3, 0x0

    .line 713
    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v4, 0x1

    .line 714
    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    .line 715
    invoke-interface {v0, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 717
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    if-eq v2, v4, :cond_a

    if-eqz v2, :cond_8

    const/16 v5, 0x8

    const-string v6, "SVGParser"

    if-eq v2, v5, :cond_7

    const/16 v5, 0xa

    if-eq v2, v5, :cond_6

    const/16 v5, 0x3a

    const/4 v6, 0x2

    if-eq v2, v6, :cond_4

    const/4 v7, 0x3

    if-eq v2, v7, :cond_2

    const/4 v5, 0x4

    if-eq v2, v5, :cond_1

    const/4 v5, 0x5

    if-eq v2, v5, :cond_0

    goto/16 :goto_2

    .line 742
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->text(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    new-array v2, v6, [I

    .line 738
    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getTextCharacters([I)[C

    move-result-object v5

    aget v6, v2, v3

    aget v2, v2, v4

    .line 739
    invoke-direct {p0, v5, v6, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->text([CII)V

    goto/16 :goto_2

    .line 731
    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 732
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 733
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 734
    :cond_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 725
    :cond_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 726
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 727
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 728
    :cond_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v2, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_9

    .line 749
    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 750
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->getRootElement()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    move-result-object v2

    if-nez v2, :cond_9

    .line 751
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v5, "<!ENTITY "

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_9

    :try_start_2
    const-string p2, "Switching to SAX parser to process entities"

    .line 754
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 756
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseUsingSAX(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    :try_start_3
    const-string p1, "Detected internal entity definitions, but could not parse them."

    .line 759
    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    .line 768
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PROC INSTR: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    new-instance v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 770
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 771
    invoke-direct {p0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseProcessingInstructionAttributes(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->handleProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 722
    :cond_8
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->startDocument()V

    .line 774
    :cond_9
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v2

    goto/16 :goto_0

    .line 776
    :cond_a
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->endDocument()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 785
    new-instance p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Stream error"

    invoke-direct {p2, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p1

    .line 781
    new-instance p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "XML parser problem"

    invoke-direct {p2, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method private static parseVectorEffect(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;
    .locals 1

    .line 4104
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "non-scaling-stroke"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4107
    :cond_0
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;->NonScalingStroke:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

    return-object p0

    .line 4106
    :cond_1
    sget-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;->None:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

    return-object p0
.end method

.method private static parseViewBox(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    .line 3543
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3544
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3546
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result p0

    .line 3547
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3548
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v1

    .line 3549
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3550
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v2

    .line 3551
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3552
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v0

    .line 3554
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-ltz v4, :cond_1

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 3561
    new-instance v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object v3

    .line 3559
    :cond_0
    new-instance p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid viewBox. height cannot be negative"

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3557
    :cond_1
    new-instance p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid viewBox. width cannot be negative"

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3555
    :cond_2
    new-instance p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid viewBox definition - should have four numbers"

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private path(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<path>"

    .line 1422
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1424
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1426
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;-><init>()V

    .line 1427
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 1428
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 1429
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1430
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1431
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesTransform(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1432
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesConditional(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1433
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;Lorg/xml/sax/Attributes;)V

    .line 1434
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    return-void

    .line 1425
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private pattern(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<pattern>"

    .line 2339
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2341
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 2343
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;-><init>()V

    .line 2344
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 2345
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 2346
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2347
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2348
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesConditional(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 2349
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 2350
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesPattern(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;Lorg/xml/sax/Attributes;)V

    .line 2351
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    .line 2352
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    return-void

    .line 2342
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private polygon(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<polygon>"

    .line 1732
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1734
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1736
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Polygon;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Polygon;-><init>()V

    .line 1737
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Polygon;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 1738
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Polygon;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 1739
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1740
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1741
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesTransform(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1742
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesConditional(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    const-string v1, "polygon"

    .line 1743
    invoke-direct {p0, v0, p1, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesPolyLine(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 1744
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    return-void

    .line 1735
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private polyline(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<polyline>"

    .line 1675
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1677
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1679
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;-><init>()V

    .line 1680
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 1681
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 1682
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1683
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1684
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesTransform(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1685
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesConditional(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    const-string v1, "polyline"

    .line 1686
    invoke-direct {p0, v0, p1, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesPolyLine(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 1687
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    return-void

    .line 1678
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static processStyleProperty(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 2986
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "inherit"

    .line 2989
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2992
    :cond_1
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVGParser$SVGAttr:[I

    invoke-static {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string/jumbo v1, "|"

    const-string v2, "none"

    const-string v3, "SVGParser"

    const-string v4, "currentColor"

    const/16 v5, 0x7c

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 3264
    :pswitch_0
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseRenderQuality(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$RenderQuality;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->imageRendering:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$RenderQuality;

    .line 3265
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->imageRendering:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$RenderQuality;

    if-eqz p1, :cond_8

    .line 3266
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v0, 0x2000000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3258
    :pswitch_1
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseVectorEffect(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->vectorEffect:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

    .line 3259
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->vectorEffect:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

    if-eqz p1, :cond_8

    .line 3260
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v0, 0x800000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3253
    :pswitch_2
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    .line 3254
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v0, 0x400000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3238
    :pswitch_3
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3239
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CurrentColor;->getInstance()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CurrentColor;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->viewportFill:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    goto :goto_0

    .line 3242
    :cond_2
    :try_start_0
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->viewportFill:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;
    :try_end_0
    .catch Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3249
    :goto_0
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v0, 0x200000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    :catch_0
    move-exception p0

    .line 3245
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3233
    :pswitch_4
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    .line 3234
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v0, 0x100000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3218
    :pswitch_5
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3219
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CurrentColor;->getInstance()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CurrentColor;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->solidColor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    goto :goto_1

    .line 3222
    :cond_3
    :try_start_1
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->solidColor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;
    :try_end_1
    .catch Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3229
    :goto_1
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v0, 0x80000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    :catch_1
    move-exception p0

    .line 3225
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3213
    :pswitch_6
    invoke-static {p2, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 3214
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x40000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3208
    :pswitch_7
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseFillRule(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clipRule:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    .line 3209
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x20000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3203
    :pswitch_8
    invoke-static {p2, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    .line 3204
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x10000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3197
    :pswitch_9
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseClip(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CSSClipRect;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clip:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CSSClipRect;

    .line 3198
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clip:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CSSClipRect;

    if-eqz p1, :cond_8

    .line 3199
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x100000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3192
    :pswitch_a
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    .line 3193
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x8000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3177
    :pswitch_b
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3178
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CurrentColor;->getInstance()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CurrentColor;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stopColor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    goto :goto_2

    .line 3181
    :cond_4
    :try_start_2
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stopColor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;
    :try_end_2
    .catch Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3188
    :goto_2
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x4000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    :catch_2
    move-exception p0

    .line 3184
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3170
    :pswitch_c
    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "|visible|hidden|collapse|"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_3

    :cond_5
    const-string/jumbo p1, "visible"

    .line 3172
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    .line 3173
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x2000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3163
    :pswitch_d
    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "|inline|block|list-item|run-in|compact|marker|table|inline-table|table-row-group|table-header-group|table-footer-group|table-row|table-column-group|table-column|table-cell|table-caption|none|"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_3

    .line 3165
    :cond_6
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    .line 3166
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x1000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3158
    :pswitch_e
    invoke-static {p2, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    .line 3159
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x800000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3153
    :pswitch_f
    invoke-static {p2, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    .line 3154
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x400000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3148
    :pswitch_10
    invoke-static {p2, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 3149
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x200000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3141
    :pswitch_11
    invoke-static {p2, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 3142
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    .line 3143
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    .line 3144
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0xe00000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3135
    :pswitch_12
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseOverflow(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 3136
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    if-eqz p1, :cond_8

    .line 3137
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x80000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3129
    :pswitch_13
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseTextAnchor(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->textAnchor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    .line 3130
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->textAnchor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    if-eqz p1, :cond_8

    .line 3131
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x40000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3123
    :pswitch_14
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseTextDirection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDirection;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->direction:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDirection;

    .line 3124
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->direction:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDirection;

    if-eqz p1, :cond_8

    .line 3125
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v0, 0x1000000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3117
    :pswitch_15
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseTextDecoration(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->textDecoration:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    .line 3118
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->textDecoration:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    if-eqz p1, :cond_8

    .line 3119
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x20000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3111
    :pswitch_16
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseFontStyle(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;

    .line 3112
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;

    if-eqz p1, :cond_8

    .line 3113
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x10000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3105
    :pswitch_17
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseFontWeight(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 3106
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    if-eqz p1, :cond_8

    .line 3107
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x8000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3099
    :pswitch_18
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseFontSize(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontSize:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 3100
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontSize:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz p1, :cond_8

    .line 3101
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x4000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3093
    :pswitch_19
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    .line 3094
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    if-eqz p1, :cond_8

    .line 3095
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x2000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3089
    :pswitch_1a
    invoke-static {p0, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseFont(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3081
    :pswitch_1b
    :try_start_3
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->color:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    .line 3082
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x1000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J
    :try_end_3
    .catch Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_3

    .line 3075
    :pswitch_1c
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 3076
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x800

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3067
    :pswitch_1d
    :try_start_4
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeDashOffset:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 3068
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x400

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J
    :try_end_4
    .catch Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_3

    .line 3055
    :pswitch_1e
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v0, 0x200

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    .line 3056
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeDashArray:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 3057
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3060
    :cond_7
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseStrokeDashArray(Ljava/lang/String;)[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeDashArray:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 3061
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeDashArray:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz p1, :cond_8

    .line 3062
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3047
    :pswitch_1f
    :try_start_5
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    .line 3048
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x100

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J
    :try_end_5
    .catch Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    .line 3040
    :pswitch_20
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseStrokeLineJoin(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeLineJoin:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    .line 3041
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeLineJoin:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    if-eqz p1, :cond_8

    .line 3042
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x80

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_3

    .line 3034
    :pswitch_21
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseStrokeLineCap(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeLineCap:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    .line 3035
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeLineCap:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    if-eqz p1, :cond_8

    .line 3036
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_3

    .line 3026
    :pswitch_22
    :try_start_6
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeWidth:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 3027
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J
    :try_end_6
    .catch Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 3019
    :pswitch_23
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 3020
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    if-eqz p1, :cond_8

    .line 3021
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_3

    .line 3013
    :pswitch_24
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parsePaintSpecifier(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stroke:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    .line 3014
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stroke:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    if-eqz p1, :cond_8

    .line 3015
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_3

    .line 3007
    :pswitch_25
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 3008
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    if-eqz p1, :cond_8

    .line 3009
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_3

    .line 3001
    :pswitch_26
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseFillRule(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fillRule:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    .line 3002
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fillRule:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    if-eqz p1, :cond_8

    .line 3003
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_3

    .line 2995
    :pswitch_27
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parsePaintSpecifier(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fill:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    .line 2996
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fill:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    if-eqz p1, :cond_8

    .line 2997
    iget-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    :catch_3
    :cond_8
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private radialGradient(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<radialGradient>"

    .line 2108
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2110
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 2112
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;-><init>()V

    .line 2113
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 2114
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 2115
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2116
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2117
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesGradient(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V

    .line 2118
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesRadialGradient(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;Lorg/xml/sax/Attributes;)V

    .line 2119
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    .line 2120
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    return-void

    .line 2111
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private rect(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<rect>"

    .line 1466
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1468
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1470
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;-><init>()V

    .line 1471
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 1472
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 1473
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1474
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1475
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesTransform(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1476
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesConditional(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1477
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesRect(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;Lorg/xml/sax/Attributes;)V

    .line 1478
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    return-void

    .line 1469
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private solidColor(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<solidColor>"

    .line 2226
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2228
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 2230
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SolidColor;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SolidColor;-><init>()V

    .line 2231
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SolidColor;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 2232
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SolidColor;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 2233
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2234
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2235
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    .line 2236
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    return-void

    .line 2229
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private startDocument()V
    .locals 1

    .line 894
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    return-void
.end method

.method private startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    .line 900
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->ignoring:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 901
    iget p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->ignoreDepth:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->ignoreDepth:I

    return-void

    :cond_0
    const-string v0, "http://www.w3.org/2000/svg"

    .line 904
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 908
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, p3

    .line 910
    :goto_0
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGElem;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGElem;

    move-result-object p1

    .line 911
    sget-object p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVGParser$SVGElem:[I

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result p3

    aget p2, p2, p3

    packed-switch p2, :pswitch_data_0

    .line 976
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->ignoring:Z

    .line 977
    iput v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->ignoreDepth:I

    goto/16 :goto_1

    .line 974
    :pswitch_0
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->solidColor(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    .line 972
    :pswitch_1
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->style(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    .line 970
    :pswitch_2
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->mask(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    .line 968
    :pswitch_3
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->view(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    .line 966
    :pswitch_4
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->image(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    .line 964
    :pswitch_5
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->pattern(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    .line 962
    :pswitch_6
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->textPath(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    .line 960
    :pswitch_7
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->clipPath(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 956
    :pswitch_8
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->inMetadataElement:Z

    .line 957
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->metadataTag:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGElem;

    goto :goto_1

    .line 953
    :pswitch_9
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->stop(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 951
    :pswitch_a
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->radialGradient(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 949
    :pswitch_b
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->linearGradient(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 947
    :pswitch_c
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->marker(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 945
    :pswitch_d
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->symbol(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 943
    :pswitch_e
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->zwitch(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 941
    :pswitch_f
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->tref(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 939
    :pswitch_10
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->tspan(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 937
    :pswitch_11
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->text(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 935
    :pswitch_12
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->polygon(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 933
    :pswitch_13
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->polyline(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 931
    :pswitch_14
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->line(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 929
    :pswitch_15
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->ellipse(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 927
    :pswitch_16
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->circle(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 925
    :pswitch_17
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->rect(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 923
    :pswitch_18
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->path(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 921
    :pswitch_19
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->use(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 919
    :pswitch_1a
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->defs(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 917
    :pswitch_1b
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->g(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 914
    :pswitch_1c
    invoke-direct {p0, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svg(Lorg/xml/sax/Attributes;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private stop(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<stop>"

    .line 2161
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2163
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_1

    .line 2165
    instance-of v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;

    if-eqz v0, :cond_0

    .line 2167
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Stop;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Stop;-><init>()V

    .line 2168
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Stop;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 2169
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Stop;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 2170
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2171
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2172
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStop(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Stop;Lorg/xml/sax/Attributes;)V

    .line 2173
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    .line 2174
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    return-void

    .line 2166
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. <stop> elements are only valid inside <linearGradient> or <radialGradient> elements."

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2164
    :cond_1
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private style(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "<style>"

    .line 4464
    invoke-direct {p0, v2, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4466
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    const-string v2, "all"

    move v3, v1

    .line 4473
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 4475
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 4476
    sget-object v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVGParser$SVGAttr:[I

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0x58

    if-eq v5, v6, :cond_1

    const/16 v6, 0x59

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    move-object v2, v4

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "text/css"

    .line 4479
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 4489
    sget-object p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->screen:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    invoke-static {v2, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->mediaMatches(Ljava/lang/String;Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4490
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->inStyleElement:Z

    goto :goto_2

    .line 4492
    :cond_3
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->ignoring:Z

    .line 4493
    iput v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->ignoreDepth:I

    :goto_2
    return-void

    .line 4467
    :cond_4
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private svg(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<svg>"

    .line 1204
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1206
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;-><init>()V

    .line 1207
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 1208
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 1209
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1210
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1211
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesConditional(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1212
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 1213
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesSVG(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;Lorg/xml/sax/Attributes;)V

    .line 1214
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-nez p1, :cond_0

    .line 1215
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->setRootElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;)V

    goto :goto_0

    .line 1217
    :cond_0
    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    .line 1219
    :goto_0
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private symbol(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<symbol>"

    .line 1929
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1931
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1933
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Symbol;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Symbol;-><init>()V

    .line 1934
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Symbol;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 1935
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Symbol;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 1936
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1937
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1938
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesConditional(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1939
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 1940
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    .line 1941
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    return-void

    .line 1932
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private text(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    .line 985
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->ignoring:Z

    if-eqz v0, :cond_0

    return-void

    .line 988
    :cond_0
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->inMetadataElement:Z

    if-eqz v0, :cond_2

    .line 990
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    .line 992
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 994
    :cond_2
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->inStyleElement:Z

    if-eqz v0, :cond_4

    .line 996
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    .line 998
    :cond_3
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1000
    :cond_4
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    instance-of v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;

    if-eqz v0, :cond_5

    .line 1002
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->appendToTextContainer(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private text(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<text>"

    .line 1754
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1756
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1758
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;-><init>()V

    .line 1759
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 1760
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 1761
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1762
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1763
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesTransform(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1764
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesConditional(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1765
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesTextPosition(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V

    .line 1766
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    .line 1767
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    return-void

    .line 1757
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private text([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1009
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->ignoring:Z

    if-eqz v0, :cond_0

    return-void

    .line 1012
    :cond_0
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->inMetadataElement:Z

    if-eqz v0, :cond_2

    .line 1014
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    .line 1016
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1018
    :cond_2
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->inStyleElement:Z

    if-eqz v0, :cond_4

    .line 1020
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    .line 1022
    :cond_3
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1024
    :cond_4
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    instance-of v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;

    if-eqz v0, :cond_5

    .line 1026
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->appendToTextContainer(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private textPath(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<textPath>"

    .line 2292
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2294
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_1

    .line 2296
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;-><init>()V

    .line 2297
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 2298
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 2299
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2300
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2301
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesConditional(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 2302
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesTextPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;Lorg/xml/sax/Attributes;)V

    .line 2303
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    .line 2304
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 2305
    iget-object p1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    instance-of p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;

    if-eqz p1, :cond_0

    .line 2306
    iget-object p1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;->setTextRoot(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;)V

    goto :goto_0

    .line 2308
    :cond_0
    iget-object p1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextChild;

    invoke-interface {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextChild;->getTextRoot()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;->setTextRoot(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;)V

    :goto_0
    return-void

    .line 2295
    :cond_1
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private tref(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<tref>"

    .line 1831
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1833
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_2

    .line 1835
    instance-of v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;

    if-eqz v0, :cond_1

    .line 1837
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TRef;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TRef;-><init>()V

    .line 1838
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TRef;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 1839
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TRef;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 1840
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1841
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1842
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesConditional(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1843
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesTRef(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TRef;Lorg/xml/sax/Attributes;)V

    .line 1844
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    .line 1845
    iget-object p1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TRef;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    instance-of p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;

    if-eqz p1, :cond_0

    .line 1846
    iget-object p1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TRef;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TRef;->setTextRoot(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;)V

    goto :goto_0

    .line 1848
    :cond_0
    iget-object p1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TRef;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextChild;

    invoke-interface {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextChild;->getTextRoot()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TRef;->setTextRoot(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;)V

    :goto_0
    return-void

    .line 1836
    :cond_1
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. <tref> elements are only valid inside <text> or <tspan> elements."

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1834
    :cond_2
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private tspan(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<tspan>"

    .line 1803
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1805
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_2

    .line 1807
    instance-of v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;

    if-eqz v0, :cond_1

    .line 1809
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;-><init>()V

    .line 1810
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 1811
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 1812
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1813
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1814
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesConditional(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1815
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesTextPosition(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V

    .line 1816
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    .line 1817
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 1818
    iget-object p1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    instance-of p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;

    if-eqz p1, :cond_0

    .line 1819
    iget-object p1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;->setTextRoot(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;)V

    goto :goto_0

    .line 1821
    :cond_0
    iget-object p1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextChild;

    invoke-interface {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextChild;->getTextRoot()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;->setTextRoot(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;)V

    :goto_0
    return-void

    .line 1808
    :cond_1
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. <tspan> elements are only valid inside <text> or other <tspan> elements."

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1806
    :cond_2
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private use(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<use>"

    .line 1305
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1307
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1309
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;-><init>()V

    .line 1310
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 1311
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 1312
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1313
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1314
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesTransform(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1315
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesConditional(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1316
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesUse(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;Lorg/xml/sax/Attributes;)V

    .line 1317
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    .line 1318
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    return-void

    .line 1308
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private view(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v1, Lcom/google/android/datatransport/runtime/dagger/multibindings/KN/fYvESXZ;->gBCeQApMYkSmisH:Ljava/lang/String;

    .line 2417
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2419
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 2421
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$View;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$View;-><init>()V

    .line 2422
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$View;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 2423
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$View;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 2424
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2425
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesConditional(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 2426
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 2427
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    .line 2428
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    return-void

    .line 2420
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private zwitch(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<switch>"

    .line 1876
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1878
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1880
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Switch;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Switch;-><init>()V

    .line 1881
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Switch;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 1882
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Switch;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    .line 1883
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesCore(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1884
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1885
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesTransform(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1886
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseAttributesConditional(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1887
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    .line 1888
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->currentElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    return-void

    .line 1879
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method parse(Ljava/io/InputStream;Z)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "Exception thrown closing input stream"

    const-string v1, "SVGParser"

    .line 595
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 597
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v2

    :cond_0
    const/4 v2, 0x3

    .line 601
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 602
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 603
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    const v3, 0x8b1f

    if-ne v2, v3, :cond_1

    .line 606
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    :catch_0
    :cond_1
    const/16 v2, 0x1000

    .line 618
    :try_start_1
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 623
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseUsingXmlPullParser(Ljava/io/InputStream;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 628
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 630
    :catch_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :goto_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->svgDocument:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    return-object p1

    :catchall_0
    move-exception p2

    .line 628
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 630
    :catch_2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :goto_1
    throw p2
.end method
