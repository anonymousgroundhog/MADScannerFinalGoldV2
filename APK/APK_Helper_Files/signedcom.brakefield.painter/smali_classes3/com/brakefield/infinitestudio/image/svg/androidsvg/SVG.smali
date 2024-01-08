.class public Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.super Ljava/lang/Object;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$View;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathInterface;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SolidColor;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$ClipPath;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Stop;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Symbol;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Switch;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TRef;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextSequence;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPositionedContainer;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextChild;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Polygon;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Defs;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$NotDirectlyRendered;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Group;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgViewBoxContainer;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPreserveAspectRatioContainer;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$HasTransform;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalElement;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CSSClipRect;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PaintReference;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CurrentColor;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;
    }
.end annotation


# static fields
.field private static final DEFAULT_PICTURE_HEIGHT:I = 0x200

.field private static final DEFAULT_PICTURE_WIDTH:I = 0x200

.field private static final SPECIFIED_ALL:J = -0x1L

.field static final SPECIFIED_CLIP:J = 0x100000L

.field static final SPECIFIED_CLIP_PATH:J = 0x10000000L

.field static final SPECIFIED_CLIP_RULE:J = 0x20000000L

.field static final SPECIFIED_COLOR:J = 0x1000L

.field static final SPECIFIED_DIRECTION:J = 0x1000000000L

.field static final SPECIFIED_DISPLAY:J = 0x1000000L

.field static final SPECIFIED_FILL:J = 0x1L

.field static final SPECIFIED_FILL_OPACITY:J = 0x4L

.field static final SPECIFIED_FILL_RULE:J = 0x2L

.field static final SPECIFIED_FONT_FAMILY:J = 0x2000L

.field static final SPECIFIED_FONT_SIZE:J = 0x4000L

.field static final SPECIFIED_FONT_STYLE:J = 0x10000L

.field static final SPECIFIED_FONT_WEIGHT:J = 0x8000L

.field static final SPECIFIED_IMAGE_RENDERING:J = 0x2000000000L

.field static final SPECIFIED_MARKER_END:J = 0x800000L

.field static final SPECIFIED_MARKER_MID:J = 0x400000L

.field static final SPECIFIED_MARKER_START:J = 0x200000L

.field static final SPECIFIED_MASK:J = 0x40000000L

.field static final SPECIFIED_OPACITY:J = 0x800L

.field static final SPECIFIED_OVERFLOW:J = 0x80000L

.field static final SPECIFIED_SOLID_COLOR:J = 0x80000000L

.field static final SPECIFIED_SOLID_OPACITY:J = 0x100000000L

.field static final SPECIFIED_STOP_COLOR:J = 0x4000000L

.field static final SPECIFIED_STOP_OPACITY:J = 0x8000000L

.field static final SPECIFIED_STROKE:J = 0x8L

.field static final SPECIFIED_STROKE_DASHARRAY:J = 0x200L

.field static final SPECIFIED_STROKE_DASHOFFSET:J = 0x400L

.field static final SPECIFIED_STROKE_LINECAP:J = 0x40L

.field static final SPECIFIED_STROKE_LINEJOIN:J = 0x80L

.field static final SPECIFIED_STROKE_MITERLIMIT:J = 0x100L

.field static final SPECIFIED_STROKE_OPACITY:J = 0x10L

.field static final SPECIFIED_STROKE_WIDTH:J = 0x20L

.field static final SPECIFIED_TEXT_ANCHOR:J = 0x40000L

.field static final SPECIFIED_TEXT_DECORATION:J = 0x20000L

.field static final SPECIFIED_VECTOR_EFFECT:J = 0x800000000L

.field static final SPECIFIED_VIEWPORT_FILL:J = 0x200000000L

.field static final SPECIFIED_VIEWPORT_FILL_OPACITY:J = 0x400000000L

.field static final SPECIFIED_VISIBILITY:J = 0x2000000L

.field private static final SQRT2:D = 1.414213562373095

.field private static final TAG:Ljava/lang/String; = "AndroidSVG"

.field private static final VERSION:Ljava/lang/String; = "1.2.3-beta-1"

.field private static enableInternalEntities:Z = true

.field private static externalFileResolver:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGExternalFileResolver;


# instance fields
.field private cssRules:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;

.field private desc:Ljava/lang/String;

.field private idToElementMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;",
            ">;"
        }
    .end annotation
.end field

.field private renderDPI:F

.field private rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    const-string v0, ""

    .line 97
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->title:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->desc:Ljava/lang/String;

    const/high16 v0, 0x42c00000    # 96.0f

    .line 101
    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->renderDPI:F

    .line 104
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->cssRules:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->idToElementMap:Ljava/util/Map;

    return-void
.end method

.method private cssQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sget-object v0, Landroidx/core/database/hzA/JUetN;->YkbrkaJADubYa:Ljava/lang/String;

    .line 897
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 900
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\\""

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "\'"

    .line 902
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 905
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\\'"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    const-string v0, "\\\n"

    const-string v1, ""

    .line 908
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\A"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static deregisterExternalFileResolver()V
    .locals 1

    const/4 v0, 0x0

    .line 292
    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->externalFileResolver:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGExternalFileResolver;

    return-void
.end method

.method private getDocumentDimensions(F)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;
    .locals 5

    .line 914
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 915
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v0, :cond_5

    .line 917
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isZero()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->unit:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    sget-object v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->percent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    if-eq v3, v4, :cond_5

    iget-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->unit:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    sget-object v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->em:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    if-eq v3, v4, :cond_5

    iget-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->unit:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    sget-object v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->ex:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    if-ne v3, v4, :cond_0

    goto :goto_2

    .line 920
    :cond_0
    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(F)F

    move-result v0

    if-eqz v1, :cond_3

    .line 924
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isZero()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->unit:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    sget-object v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->percent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    if-eq v3, v4, :cond_2

    iget-object v3, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->unit:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    sget-object v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->em:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    if-eq v3, v4, :cond_2

    iget-object v3, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->unit:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    sget-object v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->ex:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 927
    :cond_1
    invoke-virtual {v1, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(F)F

    move-result p1

    goto :goto_1

    .line 925
    :cond_2
    :goto_0
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    invoke-direct {p1, v2, v2, v2, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object p1

    .line 931
    :cond_3
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-eqz p1, :cond_4

    .line 932
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    mul-float/2addr p1, v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    div-float/2addr p1, v1

    goto :goto_1

    :cond_4
    move p1, v0

    .line 937
    :goto_1
    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object v1

    .line 918
    :cond_5
    :goto_2
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    invoke-direct {p1, v2, v2, v2, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object p1
.end method

.method private getElementById(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;
    .locals 3

    .line 2261
    move-object v0, p1

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;

    .line 2262
    iget-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2264
    :cond_0
    invoke-interface {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    .line 2266
    instance-of v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;

    if-nez v1, :cond_2

    goto :goto_0

    .line 2268
    :cond_2
    move-object v1, v0

    check-cast v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;

    .line 2269
    iget-object v2, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    .line 2271
    :cond_3
    instance-of v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_1

    .line 2273
    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->getElementById(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private getElementById(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;
    .locals 2

    if-eqz p1, :cond_3

    .line 2244
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2246
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2247
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    return-object p1

    .line 2249
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->idToElementMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2250
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->idToElementMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    return-object p1

    .line 2253
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->getElementById(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;

    move-result-object v0

    .line 2254
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->idToElementMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getElementsByTagName(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;",
            ">;"
        }
    .end annotation

    .line 2293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2295
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p2, :cond_0

    .line 2296
    move-object v1, p1

    check-cast v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2297
    :cond_0
    invoke-interface {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    .line 2299
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p2, :cond_2

    .line 2300
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2301
    :cond_2
    instance-of v2, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eqz v2, :cond_1

    .line 2302
    check-cast v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->getElementsByTagName(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;Ljava/lang/Class;)Ljava/util/List;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getElementsByTagName(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;",
            ">;"
        }
    .end annotation

    .line 2286
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->getElementsByTagName(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method static getFileResolver()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGExternalFileResolver;
    .locals 1

    .line 2072
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->externalFileResolver:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGExternalFileResolver;

    return-object v0
.end method

.method public static getFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;-><init>()V

    .line 222
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 224
    :try_start_0
    sget-boolean p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->enableInternalEntities:Z

    invoke-virtual {v0, p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parse(Ljava/io/InputStream;Z)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 231
    :catch_1
    throw p1
.end method

.method public static getFromInputStream(Ljava/io/InputStream;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    .line 149
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;-><init>()V

    .line 150
    sget-boolean v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->enableInternalEntities:Z

    invoke-virtual {v0, p0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parse(Ljava/io/InputStream;Z)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    move-result-object p0

    return-object p0
.end method

.method public static getFromResource(Landroid/content/Context;I)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->getFromResource(Landroid/content/res/Resources;I)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    move-result-object p0

    return-object p0
.end method

.method public static getFromResource(Landroid/content/res/Resources;I)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    .line 195
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;-><init>()V

    .line 196
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    .line 198
    :try_start_0
    sget-boolean p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->enableInternalEntities:Z

    invoke-virtual {v0, p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parse(Ljava/io/InputStream;Z)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 205
    :catch_1
    throw p1
.end method

.method public static getFromString(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    .line 164
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;-><init>()V

    .line 165
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-boolean p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->enableInternalEntities:Z

    invoke-virtual {v0, v1, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parse(Ljava/io/InputStream;Z)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    move-result-object p0

    return-object p0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    sget-object v0, Lcom/brakefield/infinitestudio/color/YQ/FdgWfQQGDtjiVL;->ZnjTEDFubzZP:Ljava/lang/String;

    return-object v0
.end method

.method public static isInternalEntitiesEnabled()Z
    .locals 1

    .line 271
    sget-boolean v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->enableInternalEntities:Z

    return v0
.end method

.method public static registerExternalFileResolver(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGExternalFileResolver;)V
    .locals 0

    .line 283
    sput-object p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->externalFileResolver:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGExternalFileResolver;

    return-void
.end method

.method public static setInternalEntitiesEnabled(Z)V
    .locals 0

    .line 262
    sput-boolean p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->enableInternalEntities:Z

    return-void
.end method


# virtual methods
.method addCSSRules(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;)V
    .locals 1

    .line 947
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->cssRules:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;->addAll(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;)V

    return-void
.end method

.method getCSSRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Rule;",
            ">;"
        }
    .end annotation

    .line 953
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->cssRules:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;->getRules()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentAspectRatio()F
    .locals 5

    .line 841
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    if-eqz v0, :cond_4

    .line 844
    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 845
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 848
    iget-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->unit:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    sget-object v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->percent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    if-eq v3, v4, :cond_2

    iget-object v3, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->unit:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    sget-object v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->percent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    if-eq v3, v4, :cond_2

    .line 850
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isZero()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isZero()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 852
    :cond_0
    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->renderDPI:F

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(F)F

    move-result v0

    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->renderDPI:F

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(F)F

    move-result v1

    :goto_0
    div-float/2addr v0, v1

    return v0

    :cond_1
    :goto_1
    return v2

    .line 856
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 857
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    goto :goto_0

    :cond_3
    return v2

    .line 842
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocumentDescription()Ljava/lang/String;
    .locals 2

    .line 575
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->desc:Ljava/lang/String;

    return-object v0

    .line 576
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocumentHeight()F
    .locals 2

    .line 699
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    if-eqz v0, :cond_0

    .line 702
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->renderDPI:F

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->getDocumentDimensions(F)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    move-result-object v0

    iget v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    return v0

    .line 700
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    sget-object v1, Lcom/fasterxml/jackson/core/base/wdxk/XdOzfHnSj;->qLf:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocumentPreserveAspectRatio()Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;
    .locals 2

    .line 817
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    if-eqz v0, :cond_1

    .line 820
    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    return-object v0

    .line 818
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    sget-object v1, Lorg/ejml/dense/row/decompose/EB/JlKLR;->CDtuVJwn:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocumentSVGVersion()Ljava/lang/String;
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->version:Ljava/lang/String;

    return-object v0

    .line 592
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocumentTitle()Ljava/lang/String;
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->title:Ljava/lang/String;

    return-object v0

    .line 560
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocumentViewBox()Landroid/graphics/RectF;
    .locals 2

    .line 778
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    if-eqz v0, :cond_1

    .line 781
    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->toRectF()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0

    .line 779
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocumentWidth()F
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    if-eqz v0, :cond_0

    .line 645
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->renderDPI:F

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->getDocumentDimensions(F)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    move-result-object v0

    iget v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    return v0

    .line 643
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRenderDPI()F
    .locals 1

    .line 319
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->renderDPI:F

    return v0
.end method

.method getRootElement()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    return-object v0
.end method

.method public getViewList()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    if-eqz v0, :cond_2

    .line 612
    const-class v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$View;

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->getElementsByTagName(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 614
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 615
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    .line 617
    check-cast v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$View;

    .line 618
    iget-object v3, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$View;->id:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 619
    iget-object v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$View;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, "AndroidSVG"

    const-string v3, "getViewList(): found a <view> without an id attribute"

    .line 621
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-object v1

    .line 610
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method hasCSSRules()Z
    .locals 1

    .line 959
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->cssRules:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public renderToCanvas(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    .line 443
    invoke-virtual {p0, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->renderToCanvas(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    return-void
.end method

.method public renderToCanvas(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 459
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    iget v2, p2, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v1, v2, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->fromLimits(FFFF)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    move-result-object p2

    goto :goto_0

    .line 461
    :cond_0
    new-instance p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {p2, v2, v2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 464
    :goto_0
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;

    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->renderDPI:F

    invoke-direct {v0, p1, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;-><init>(Landroid/graphics/Canvas;F)V

    const/4 p1, 0x0

    .line 466
    invoke-virtual {v0, p0, p2, p1, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->renderDocument(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;)V

    return-void
.end method

.method public renderToPicture()Landroid/graphics/Picture;
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v0, :cond_2

    .line 342
    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->renderDPI:F

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(F)F

    move-result v0

    .line 344
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-eqz v1, :cond_0

    .line 347
    iget v2, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    mul-float/2addr v2, v0

    iget v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    div-float/2addr v2, v1

    goto :goto_0

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v1, :cond_1

    .line 351
    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->renderDPI:F

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(F)F

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    float-to-double v0, v0

    .line 356
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->renderToPicture(II)Landroid/graphics/Picture;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v0, 0x200

    .line 360
    invoke-virtual {p0, v0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->renderToPicture(II)Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public renderToPicture(II)Landroid/graphics/Picture;
    .locals 4

    .line 375
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 376
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v1

    .line 377
    new-instance v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 379
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;

    iget p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->renderDPI:F

    invoke-direct {p1, v1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;-><init>(Landroid/graphics/Canvas;F)V

    const/4 p2, 0x0

    .line 381
    invoke-virtual {p1, p0, v2, p2, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->renderDocument(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;)V

    .line 383
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    return-object v0
.end method

.method public renderViewToCanvas(Ljava/lang/String;Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    .line 486
    invoke-virtual {p0, p1, p2, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->renderViewToCanvas(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    return-void
.end method

.method public renderViewToCanvas(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 3

    .line 507
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->getElementById(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 510
    :cond_0
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$View;

    if-nez v0, :cond_1

    return-void

    .line 513
    :cond_1
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$View;

    .line 515
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$View;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-nez v0, :cond_2

    const-string p1, "AndroidSVG"

    const-string p2, "View element is missing a viewBox attribute."

    .line 516
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-eqz p3, :cond_3

    .line 523
    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    iget v2, p3, Landroid/graphics/RectF;->right:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v1, v2, p3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->fromLimits(FFFF)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    move-result-object p3

    goto :goto_0

    .line 525
    :cond_3
    new-instance p3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {p3, v2, v2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 528
    :goto_0
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;

    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->renderDPI:F

    invoke-direct {v0, p2, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;-><init>(Landroid/graphics/Canvas;F)V

    .line 530
    iget-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$View;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$View;->preserveAspectRatio:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    invoke-virtual {v0, p0, p3, p2, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->renderDocument(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;)V

    return-void
.end method

.method public renderViewToPicture(Ljava/lang/String;II)Landroid/graphics/Picture;
    .locals 4

    .line 404
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->getElementById(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 407
    :cond_0
    instance-of v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$View;

    if-nez v1, :cond_1

    return-object v0

    .line 410
    :cond_1
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$View;

    .line 412
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$View;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-nez v1, :cond_2

    const-string p1, "AndroidSVG"

    const-string p2, "View element is missing a viewBox attribute."

    .line 413
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 417
    :cond_2
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 418
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v1

    .line 419
    new-instance v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    int-to-float p2, p2

    int-to-float p3, p3

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p2, p3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 421
    new-instance p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;

    iget p3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->renderDPI:F

    invoke-direct {p2, v1, p3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;-><init>(Landroid/graphics/Canvas;F)V

    .line 423
    iget-object p3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$View;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$View;->preserveAspectRatio:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    invoke-virtual {p2, p0, v2, p3, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->renderDocument(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;)V

    .line 425
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    return-object v0
.end method

.method resolveIRI(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 886
    :cond_0
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->cssQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 887
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 889
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->getElementById(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method setDesc(Ljava/lang/String;)V
    .locals 0

    .line 2066
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->desc:Ljava/lang/String;

    return-void
.end method

.method public setDocumentHeight(F)V
    .locals 2

    .line 716
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    if-eqz v0, :cond_0

    .line 719
    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-direct {v1, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;-><init>(F)V

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    return-void

    .line 717
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SVG document is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDocumentHeight(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    .line 734
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    if-eqz v0, :cond_0

    .line 737
    invoke-static {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object p1

    iput-object p1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    return-void

    .line 735
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SVG document is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDocumentPreserveAspectRatio(Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;)V
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    if-eqz v0, :cond_0

    .line 803
    iput-object p1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    return-void

    .line 801
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SVG document is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDocumentViewBox(FFFF)V
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    if-eqz v0, :cond_0

    .line 765
    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    return-void

    .line 763
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SVG document is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDocumentWidth(F)V
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    if-eqz v0, :cond_0

    .line 662
    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-direct {v1, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;-><init>(F)V

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    return-void

    .line 660
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SVG document is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDocumentWidth(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    .line 677
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    if-eqz v0, :cond_0

    .line 680
    invoke-static {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    move-result-object p1

    iput-object p1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    return-void

    .line 678
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SVG document is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRenderDPI(F)V
    .locals 0

    .line 308
    iput p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->renderDPI:F

    return-void
.end method

.method setRootElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->rootElement:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0

    .line 2060
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->title:Ljava/lang/String;

    return-void
.end method
