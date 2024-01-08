.class Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SVGHandler"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field bounds:Landroid/graphics/RectF;

.field private boundsMode:Z

.field canvas:Landroid/graphics/Canvas;

.field drawToCanvas:Z

.field gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

.field gradientMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Shader;",
            ">;"
        }
    .end annotation
.end field

.field gradientRefMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;",
            ">;"
        }
    .end annotation
.end field

.field private group:Lcom/brakefield/infinitestudio/image/svg/SVGGroup;

.field groupProps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;",
            ">;"
        }
    .end annotation
.end field

.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/SVGGroup;",
            ">;"
        }
    .end annotation
.end field

.field private hidden:Z

.field private hiddenLevel:I

.field limits:Landroid/graphics/RectF;

.field private objects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/SVGObject;",
            ">;"
        }
    .end annotation
.end field

.field paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

.field pushed:Z

.field rect:Landroid/graphics/RectF;

.field replaceColor:Ljava/lang/Integer;

.field searchColor:Ljava/lang/Integer;

.field whiteMode:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 4

    .line 1108
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 1085
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->groupProps:Ljava/util/List;

    .line 1089
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->rect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 1090
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->bounds:Landroid/graphics/RectF;

    .line 1091
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->limits:Landroid/graphics/RectF;

    .line 1093
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->searchColor:Ljava/lang/Integer;

    .line 1094
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->replaceColor:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 1096
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->whiteMode:Z

    .line 1098
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->pushed:Z

    .line 1104
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradientMap:Ljava/util/HashMap;

    .line 1105
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradientRefMap:Ljava/util/HashMap;

    .line 1106
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    .line 1283
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->hidden:Z

    .line 1284
    iput v1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->hiddenLevel:I

    .line 1285
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->boundsMode:Z

    .line 1329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->objects:Ljava/util/List;

    .line 1330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->groups:Ljava/util/List;

    .line 1332
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/SVGGroup;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/SVGGroup;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->group:Lcom/brakefield/infinitestudio/image/svg/SVGGroup;

    .line 1109
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->drawToCanvas:Z

    .line 1110
    new-instance p1, Lcom/brakefield/infinitestudio/color/PaintTracer;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/color/PaintTracer;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    const/4 v0, 0x1

    .line 1111
    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setAntiAlias(Z)V

    return-void
.end method

.method synthetic constructor <init>(ZLcom/brakefield/infinitestudio/image/svg/SVGParser$1;)V
    .locals 0

    .line 1083
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;-><init>(Z)V

    return-void
.end method

.method private doColor(Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;Ljava/lang/Integer;Z)V
    .locals 1

    const v0, 0xffffff

    .line 1266
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    and-int/2addr p2, v0

    const/high16 v0, -0x1000000

    or-int/2addr p2, v0

    .line 1267
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->searchColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 1268
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->replaceColor:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1270
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    invoke-virtual {v0, p2}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setColor(I)V

    const-string p2, "opacity"

    .line 1271
    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    if-nez p2, :cond_2

    if-eqz p3, :cond_1

    const-string p2, "fill-opacity"

    goto :goto_0

    :cond_1
    const-string/jumbo p2, "stroke-opacity"

    .line 1273
    :goto_0
    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    :cond_2
    if-nez p2, :cond_3

    .line 1277
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setAlpha(I)V

    goto :goto_1

    .line 1279
    :cond_3
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    const/high16 p3, 0x437f0000    # 255.0f

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setAlpha(I)V

    :goto_1
    return-void
.end method

.method private doGradient(ZLorg/xml/sax/Attributes;)Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;
    .locals 2

    .line 1238
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;-><init>(Lcom/brakefield/infinitestudio/image/svg/SVGParser$1;)V

    const-string v1, "id"

    .line 1239
    invoke-static {v1, p2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$200(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->id:Ljava/lang/String;

    .line 1240
    iput-boolean p1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->isLinear:Z

    const/4 v1, 0x0

    .line 1247
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "x1"

    .line 1242
    invoke-static {p1, p2, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$500(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->x1:F

    const-string/jumbo p1, "x2"

    .line 1243
    invoke-static {p1, p2, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$500(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->x2:F

    const-string/jumbo p1, "y1"

    .line 1244
    invoke-static {p1, p2, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$500(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->y1:F

    const-string/jumbo p1, "y2"

    .line 1245
    invoke-static {p1, p2, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$500(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->y2:F

    goto :goto_0

    :cond_0
    const-string p1, "cx"

    .line 1247
    invoke-static {p1, p2, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$500(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->x:F

    const-string p1, "cy"

    .line 1248
    invoke-static {p1, p2, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$500(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->y:F

    const-string/jumbo p1, "r"

    .line 1249
    invoke-static {p1, p2, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$500(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->radius:F

    :goto_0
    const-string p1, "gradientTransform"

    .line 1251
    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$200(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1253
    invoke-static {p1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$600(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object p1

    iput-object p1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    :cond_1
    const-string p1, "href"

    .line 1255
    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$200(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "#"

    .line 1257
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    .line 1258
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1260
    :cond_2
    iput-object p1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->xlink:Ljava/lang/String;

    :cond_3
    return-object v0
.end method

.method private doLimits(FF)V
    .locals 1

    .line 1288
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->limits:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->limits:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 1291
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->limits:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 1292
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->limits:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->right:F

    .line 1294
    :cond_1
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->limits:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    .line 1295
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->limits:Landroid/graphics/RectF;

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 1297
    :cond_2
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->limits:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    .line 1298
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->limits:Landroid/graphics/RectF;

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    :cond_3
    return-void
.end method

.method private doLimits(FFFF)V
    .locals 0

    .line 1303
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->doLimits(FF)V

    add-float/2addr p1, p3

    add-float/2addr p2, p4

    .line 1304
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->doLimits(FF)V

    return-void
.end method

.method private doLimits(Landroid/graphics/Path;)V
    .locals 2

    .line 1308
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->rect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1309
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->rect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->doLimits(FF)V

    .line 1310
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->rect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->doLimits(FF)V

    return-void
.end method

.method private getFill(Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;Ljava/util/HashMap;)Lcom/brakefield/infinitestudio/color/PaintTracer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Shader;",
            ">;)",
            "Lcom/brakefield/infinitestudio/color/PaintTracer;"
        }
    .end annotation

    .line 1152
    new-instance v0, Lcom/brakefield/infinitestudio/color/PaintTracer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/color/PaintTracer;-><init>(I)V

    .line 1153
    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/color/PaintTracer;->set(Lcom/brakefield/infinitestudio/color/PaintTracer;)V

    const-string v2, "display"

    .line 1155
    invoke-virtual {p1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 1158
    :cond_0
    iget-boolean v2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->whiteMode:Z

    if-eqz v2, :cond_1

    .line 1159
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, -0x1

    .line 1160
    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setColor(I)V

    return-object v0

    :cond_1
    const-string v2, "fill"

    .line 1163
    invoke-virtual {p1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string/jumbo v5, "url(#"

    .line 1164
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1167
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v1

    const/4 v1, 0x5

    .line 1166
    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1168
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Shader;

    if-eqz p1, :cond_2

    .line 1170
    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1171
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0

    :cond_2
    return-object v3

    .line 1177
    :cond_3
    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1178
    invoke-virtual {p1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->getHex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1180
    invoke-direct {p0, p1, p2, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->doColor(Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;Ljava/lang/Integer;Z)V

    .line 1181
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0

    .line 1183
    :cond_4
    invoke-virtual {p1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    const-string/jumbo p2, "stroke"

    .line 1184
    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    .line 1185
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, -0x1000000

    .line 1186
    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setColor(I)V

    return-object v0

    :cond_5
    return-object v3
.end method

.method private getStroke(Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;)Lcom/brakefield/infinitestudio/color/PaintTracer;
    .locals 4

    .line 1195
    new-instance v0, Lcom/brakefield/infinitestudio/color/PaintTracer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/color/PaintTracer;-><init>(I)V

    .line 1196
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/color/PaintTracer;->set(Lcom/brakefield/infinitestudio/color/PaintTracer;)V

    .line 1198
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->whiteMode:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "display"

    .line 1202
    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "none"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    const-string/jumbo v1, "stroke"

    .line 1205
    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->getHex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_9

    const/4 v2, 0x0

    .line 1207
    invoke-direct {p0, p1, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->doColor(Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;Ljava/lang/Integer;Z)V

    const-string/jumbo v1, "stroke-width"

    .line 1209
    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1213
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setStrokeWidth(F)V

    :cond_2
    const-string/jumbo v1, "stroke-linecap"

    .line 1215
    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "round"

    .line 1216
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1217
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "square"

    .line 1218
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1219
    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_0

    :cond_4
    const-string v3, "butt"

    .line 1220
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1221
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_5
    :goto_0
    const-string/jumbo v1, "stroke-linejoin"

    .line 1223
    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "miter"

    .line 1224
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1225
    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_1

    .line 1226
    :cond_6
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1227
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_1

    :cond_7
    const-string v1, "bevel"

    .line 1228
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1229
    sget-object p1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1231
    :cond_8
    :goto_1
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0

    :cond_9
    return-object v2
.end method

.method private popTransform()V
    .locals 1

    .line 1324
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->pushed:Z

    if-eqz v0, :cond_0

    .line 1325
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->drawToCanvas:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method private pushTransform(Lorg/xml/sax/Attributes;)V
    .locals 1

    const-string/jumbo v0, "transform"

    .line 1314
    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$200(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1315
    :goto_0
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->pushed:Z

    if-eqz v0, :cond_2

    .line 1317
    invoke-static {p1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$600(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object p1

    .line 1318
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->drawToCanvas:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 1319
    :cond_1
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->drawToCanvas:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0

    return-void
.end method

.method public cleanUp()V
    .locals 3

    .line 1116
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1118
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->objects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/image/svg/SVGObject;

    .line 1119
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1120
    :cond_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->objects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1121
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->group:Lcom/brakefield/infinitestudio/image/svg/SVGGroup;

    iput-object v0, v1, Lcom/brakefield/infinitestudio/image/svg/SVGGroup;->objects:Ljava/util/List;

    .line 1122
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->groups:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->group:Lcom/brakefield/infinitestudio/image/svg/SVGGroup;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string/jumbo p1, "svg"

    .line 1596
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string p1, "linearGradient"

    .line 1598
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_5

    .line 1599
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->id:Ljava/lang/String;

    if-eqz p1, :cond_e

    .line 1600
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->xlink:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1601
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradientRefMap:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->xlink:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    if-eqz p1, :cond_1

    .line 1603
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->createChild(Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;)Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    .line 1606
    :cond_1
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->colors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v5, p1, [I

    move p2, p3

    :goto_0
    if-ge p2, p1, :cond_2

    .line 1608
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->colors:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v5, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1610
    :cond_2
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->positions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v6, p1, [F

    :goto_1
    if-ge p3, p1, :cond_3

    .line 1612
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->positions:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    aput p2, v6, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 1615
    :cond_3
    new-instance p1, Landroid/graphics/LinearGradient;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget v1, p2, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->x1:F

    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget v2, p2, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->y1:F

    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget v3, p2, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->x2:F

    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget v4, p2, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->y2:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 1616
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    if-eqz p2, :cond_4

    .line 1617
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1619
    :cond_4
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradientMap:Ljava/util/HashMap;

    iget-object p3, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget-object p3, p3, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->id:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradientRefMap:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->id:Ljava/lang/String;

    iget-object p3, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_5
    const-string/jumbo p1, "radialGradient"

    .line 1622
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1623
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->id:Ljava/lang/String;

    if-eqz p1, :cond_e

    .line 1624
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->xlink:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 1625
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradientRefMap:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->xlink:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    if-eqz p1, :cond_6

    .line 1627
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->createChild(Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;)Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    .line 1630
    :cond_6
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->colors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v4, p1, [I

    move p2, p3

    :goto_2
    if-ge p2, p1, :cond_7

    .line 1632
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->colors:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 1634
    :cond_7
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->positions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v5, p1, [F

    :goto_3
    if-ge p3, p1, :cond_8

    .line 1636
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->positions:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    aput p2, v5, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 1638
    :cond_8
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->xlink:Ljava/lang/String;

    if-eqz p1, :cond_9

    .line 1639
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradientRefMap:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->xlink:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    if-eqz p1, :cond_9

    .line 1641
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->createChild(Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;)Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    .line 1644
    :cond_9
    new-instance p1, Landroid/graphics/RadialGradient;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget v1, p2, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->x:F

    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget v2, p2, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->y:F

    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget v3, p2, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->radius:F

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 1645
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    if-eqz p2, :cond_a

    .line 1646
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1648
    :cond_a
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradientMap:Ljava/util/HashMap;

    iget-object p3, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget-object p3, p3, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->id:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradientRefMap:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->id:Ljava/lang/String;

    iget-object p3, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_b
    const-string p1, "g"

    .line 1651
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1652
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->boundsMode:Z

    if-eqz p1, :cond_c

    .line 1653
    iput-boolean p3, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->boundsMode:Z

    .line 1656
    :cond_c
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->hidden:Z

    if-eqz p1, :cond_d

    .line 1657
    iget p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->hiddenLevel:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->hiddenLevel:I

    if-nez p1, :cond_d

    .line 1659
    iput-boolean p3, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->hidden:Z

    .line 1663
    :cond_d
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradientMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 1665
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->groupProps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;

    .line 1666
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->groupProps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_e
    :goto_4
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1671
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/SVGGroup;",
            ">;"
        }
    .end annotation

    .line 1127
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->groups:Ljava/util/List;

    return-object v0
.end method

.method public setColorSwap(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 1131
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->searchColor:Ljava/lang/Integer;

    .line 1132
    iput-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->replaceColor:Ljava/lang/Integer;

    return-void
.end method

.method public setWhiteMode(Z)V
    .locals 0

    .line 1136
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->whiteMode:Z

    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    .line 1338
    iget-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setAlpha(I)V

    .line 1340
    iget-boolean v3, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->boundsMode:Z

    const-string/jumbo v4, "y"

    const-string/jumbo v5, "x"

    const-string/jumbo v6, "rect"

    const-string v7, "height"

    const-string/jumbo v8, "width"

    const/4 v9, 0x0

    .line 1344
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    if-eqz v3, :cond_3

    .line 1341
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1342
    invoke-static {v5, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v9

    .line 1346
    :cond_0
    invoke-static {v4, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v9, v3

    .line 1350
    :goto_0
    invoke-static {v8, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    .line 1351
    invoke-static {v7, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    .line 1352
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v1, v6

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v6, v3

    invoke-direct {v2, v4, v5, v1, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->bounds:Landroid/graphics/RectF;

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v3, "svg"

    .line 1356
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1357
    invoke-static {v8, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 1358
    invoke-static {v7, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 1359
    iget-boolean v3, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->drawToCanvas:Z

    if-eqz v3, :cond_2c

    .line 1360
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->bitmap:Landroid/graphics/Bitmap;

    .line 1361
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    goto/16 :goto_5

    :cond_4
    const-string v3, "defs"

    .line 1363
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_5

    :cond_5
    const-string v3, "linearGradient"

    .line 1365
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v10, 0x1

    if-eqz v3, :cond_6

    .line 1366
    invoke-direct {v0, v10, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->doGradient(ZLorg/xml/sax/Attributes;)Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    move-result-object v1

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    goto/16 :goto_5

    :cond_6
    const-string/jumbo v3, "radialGradient"

    .line 1367
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v11, 0x0

    if-eqz v3, :cond_7

    .line 1368
    invoke-direct {v0, v11, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->doGradient(ZLorg/xml/sax/Attributes;)Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    move-result-object v1

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    goto/16 :goto_5

    :cond_7
    const-string/jumbo v3, "stop"

    .line 1369
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v12, 0x2

    const-string v13, ""

    const/4 v14, 0x0

    if-eqz v3, :cond_c

    .line 1370
    iget-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    if-eqz v1, :cond_2c

    const-string v1, "offset"

    .line 1371
    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const-string/jumbo v3, "style"

    .line 1372
    invoke-static {v3, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$200(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v2

    .line 1373
    new-instance v3, Lcom/brakefield/infinitestudio/image/svg/SVGParser$StyleSet;

    invoke-direct {v3, v2, v14}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$StyleSet;-><init>(Ljava/lang/String;Lcom/brakefield/infinitestudio/image/svg/SVGParser$1;)V

    const-string/jumbo v2, "stop-color"

    .line 1374
    invoke-virtual {v3, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$StyleSet;->getStyle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v4, -0x1000000

    if-eqz v2, :cond_a

    const-string v5, "#"

    .line 1377
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0x10

    if-eqz v5, :cond_8

    .line 1378
    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_1

    :cond_8
    const-string/jumbo v5, "rgb"

    .line 1380
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    :try_start_0
    const-string/jumbo v5, "rgb("

    .line 1382
    invoke-virtual {v2, v5, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v5, ")"

    .line 1383
    invoke-virtual {v2, v5, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v5, ","

    .line 1384
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1385
    aget-object v5, v2, v11

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1386
    aget-object v6, v2, v10

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1387
    aget-object v2, v2, v12

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1388
    invoke-static {v5, v6, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1392
    :cond_9
    invoke-static {v2, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_1

    :catch_0
    :cond_a
    move v2, v4

    :goto_1
    const-string/jumbo v5, "stop-opacity"

    .line 1395
    invoke-virtual {v3, v5}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$StyleSet;->getStyle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1397
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    .line 1398
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    goto :goto_2

    :cond_b
    or-int/2addr v2, v4

    .line 1403
    :goto_2
    iget-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget-object v3, v3, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->positions:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1404
    iget-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradient:Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->colors:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_c
    const-string v3, "g"

    .line 1406
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v1, "id"

    .line 1408
    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$200(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "bounds"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1409
    iput-boolean v10, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->boundsMode:Z

    .line 1411
    :cond_d
    iget-boolean v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->hidden:Z

    if-eqz v1, :cond_e

    .line 1412
    iget v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->hiddenLevel:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->hiddenLevel:I

    :cond_e
    const-string v1, "display"

    .line 1415
    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$200(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "none"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1416
    iget-boolean v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->hidden:Z

    if-nez v1, :cond_f

    .line 1417
    iput-boolean v10, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->hidden:Z

    .line 1418
    iput v10, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->hiddenLevel:I

    .line 1421
    :cond_f
    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;

    iget-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->groupProps:Ljava/util/List;

    invoke-direct {v1, v2, v3, v14}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;-><init>(Lorg/xml/sax/Attributes;Ljava/util/List;Lcom/brakefield/infinitestudio/image/svg/SVGParser$1;)V

    .line 1422
    iget-object v2, v1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->id:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, v1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->id:Ljava/lang/String;

    const-string v3, "layer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1424
    :try_start_1
    iget-object v2, v1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->id:Ljava/lang/String;

    invoke-virtual {v2, v3, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1431
    :catch_1
    :cond_10
    iget-object v2, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->groupProps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1432
    :cond_11
    iget-boolean v3, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->hidden:Z

    if-nez v3, :cond_16

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1433
    invoke-static {v5, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    if-nez v1, :cond_12

    move-object v1, v9

    .line 1437
    :cond_12
    invoke-static {v4, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    if-nez v3, :cond_13

    goto :goto_3

    :cond_13
    move-object v9, v3

    .line 1441
    :goto_3
    invoke-static {v8, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    .line 1442
    invoke-static {v7, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v4

    .line 1443
    invoke-direct {v0, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1444
    new-instance v5, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;

    iget-object v6, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->groupProps:Ljava/util/List;

    invoke-direct {v5, v2, v6, v14}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;-><init>(Lorg/xml/sax/Attributes;Ljava/util/List;Lcom/brakefield/infinitestudio/image/svg/SVGParser$1;)V

    .line 1445
    iget-object v2, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradientMap:Ljava/util/HashMap;

    invoke-direct {v0, v5, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->getFill(Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;Ljava/util/HashMap;)Lcom/brakefield/infinitestudio/color/PaintTracer;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 1447
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-direct {v0, v6, v7, v8, v10}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->doLimits(FFFF)V

    .line 1448
    iget-boolean v6, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->drawToCanvas:Z

    if-eqz v6, :cond_14

    iget-object v10, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float v13, v6, v7

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float v14, v6, v7

    move-object v15, v2

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1450
    :cond_14
    invoke-direct {v0, v5}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->getStroke(Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;)Lcom/brakefield/infinitestudio/color/PaintTracer;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 1452
    iget-boolean v6, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->drawToCanvas:Z

    if-eqz v6, :cond_15

    iget-object v15, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v16

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v17

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float v18, v6, v7

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float v19, v6, v7

    move-object/from16 v20, v5

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1455
    :cond_15
    new-instance v6, Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-direct {v6}, Lcom/brakefield/infinitestudio/geometry/PathTracer;-><init>()V

    .line 1456
    new-instance v7, Landroid/graphics/RectF;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v1, v3

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    invoke-direct {v7, v8, v10, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v7, v1}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 1458
    iget-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->objects:Ljava/util/List;

    new-instance v3, Lcom/brakefield/infinitestudio/image/svg/SVGObject;

    invoke-direct {v3, v6, v5, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGObject;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;Lcom/brakefield/infinitestudio/color/PaintTracer;Lcom/brakefield/infinitestudio/color/PaintTracer;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1460
    :cond_16
    iget-boolean v3, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->hidden:Z

    if-nez v3, :cond_19

    const-string v3, "line"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string/jumbo v1, "x1"

    .line 1461
    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v3, "x2"

    .line 1462
    invoke-static {v3, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    const-string/jumbo v4, "y1"

    .line 1463
    invoke-static {v4, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v4

    const-string/jumbo v5, "y2"

    .line 1464
    invoke-static {v5, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v5

    .line 1465
    new-instance v6, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;

    iget-object v7, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->groupProps:Ljava/util/List;

    invoke-direct {v6, v2, v7, v14}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;-><init>(Lorg/xml/sax/Attributes;Ljava/util/List;Lcom/brakefield/infinitestudio/image/svg/SVGParser$1;)V

    .line 1466
    invoke-direct {v0, v6}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->getStroke(Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;)Lcom/brakefield/infinitestudio/color/PaintTracer;

    move-result-object v6

    if-eqz v6, :cond_18

    .line 1468
    invoke-direct {v0, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1469
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-direct {v0, v2, v7}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->doLimits(FF)V

    .line 1470
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-direct {v0, v2, v7}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->doLimits(FF)V

    .line 1471
    iget-boolean v2, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->drawToCanvas:Z

    if-eqz v2, :cond_17

    iget-object v7, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v11

    iget-object v12, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1472
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->popTransform()V

    .line 1474
    :cond_18
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-direct {v2}, Lcom/brakefield/infinitestudio/geometry/PathTracer;-><init>()V

    .line 1475
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v1, v4}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->moveTo(FF)V

    .line 1476
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->moveTo(FF)V

    .line 1478
    iget-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->objects:Ljava/util/List;

    new-instance v3, Lcom/brakefield/infinitestudio/image/svg/SVGObject;

    invoke-direct {v3, v2, v6, v14}, Lcom/brakefield/infinitestudio/image/svg/SVGObject;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;Lcom/brakefield/infinitestudio/color/PaintTracer;Lcom/brakefield/infinitestudio/color/PaintTracer;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1480
    :cond_19
    iget-boolean v3, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->hidden:Z

    const-string v4, "cy"

    const-string v5, "cx"

    if-nez v3, :cond_1c

    const-string v3, "circle"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1481
    invoke-static {v5, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    .line 1482
    invoke-static {v4, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    const-string/jumbo v4, "r"

    .line 1483
    invoke-static {v4, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v4

    if-eqz v1, :cond_2c

    if-eqz v3, :cond_2c

    if-eqz v4, :cond_2c

    .line 1485
    invoke-direct {v0, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1486
    new-instance v5, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;

    iget-object v6, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->groupProps:Ljava/util/List;

    invoke-direct {v5, v2, v6, v14}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;-><init>(Lorg/xml/sax/Attributes;Ljava/util/List;Lcom/brakefield/infinitestudio/image/svg/SVGParser$1;)V

    .line 1487
    iget-object v2, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradientMap:Ljava/util/HashMap;

    invoke-direct {v0, v5, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->getFill(Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;Ljava/util/HashMap;)Lcom/brakefield/infinitestudio/color/PaintTracer;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1489
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-direct {v0, v6, v7}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->doLimits(FF)V

    .line 1490
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-float/2addr v7, v8

    invoke-direct {v0, v6, v7}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->doLimits(FF)V

    .line 1491
    iget-boolean v6, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->drawToCanvas:Z

    if-eqz v6, :cond_1a

    iget-object v6, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v6, v7, v8, v9, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1493
    :cond_1a
    invoke-direct {v0, v5}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->getStroke(Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;)Lcom/brakefield/infinitestudio/color/PaintTracer;

    move-result-object v5

    if-eqz v5, :cond_1b

    .line 1495
    iget-boolean v6, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->drawToCanvas:Z

    if-eqz v6, :cond_1b

    iget-object v6, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v6, v7, v8, v9, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1497
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->popTransform()V

    .line 1498
    new-instance v6, Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-direct {v6}, Lcom/brakefield/infinitestudio/geometry/PathTracer;-><init>()V

    .line 1499
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v1, v3, v4, v7}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1501
    iget-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->objects:Ljava/util/List;

    new-instance v3, Lcom/brakefield/infinitestudio/image/svg/SVGObject;

    invoke-direct {v3, v6, v5, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGObject;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;Lcom/brakefield/infinitestudio/color/PaintTracer;Lcom/brakefield/infinitestudio/color/PaintTracer;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1504
    :cond_1c
    iget-boolean v3, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->hidden:Z

    if-nez v3, :cond_1f

    const-string v3, "ellipse"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1505
    invoke-static {v5, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    .line 1506
    invoke-static {v4, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    const-string/jumbo v4, "rx"

    .line 1507
    invoke-static {v4, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v4

    const-string/jumbo v5, "ry"

    .line 1508
    invoke-static {v5, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v5

    if-eqz v1, :cond_2c

    if-eqz v3, :cond_2c

    if-eqz v4, :cond_2c

    if-eqz v5, :cond_2c

    .line 1511
    invoke-direct {v0, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1512
    new-instance v6, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;

    iget-object v7, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->groupProps:Ljava/util/List;

    invoke-direct {v6, v2, v7, v14}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;-><init>(Lorg/xml/sax/Attributes;Ljava/util/List;Lcom/brakefield/infinitestudio/image/svg/SVGParser$1;)V

    .line 1513
    iget-object v2, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v11

    add-float/2addr v10, v11

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1514
    iget-object v2, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradientMap:Ljava/util/HashMap;

    invoke-direct {v0, v6, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->getFill(Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;Ljava/util/HashMap;)Lcom/brakefield/infinitestudio/color/PaintTracer;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 1516
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-direct {v0, v7, v8}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->doLimits(FF)V

    .line 1517
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v9

    add-float/2addr v8, v9

    invoke-direct {v0, v7, v8}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->doLimits(FF)V

    .line 1518
    iget-boolean v7, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->drawToCanvas:Z

    if-eqz v7, :cond_1d

    iget-object v7, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    iget-object v8, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7, v8, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1520
    :cond_1d
    invoke-direct {v0, v6}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->getStroke(Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;)Lcom/brakefield/infinitestudio/color/PaintTracer;

    move-result-object v6

    if-eqz v6, :cond_1e

    .line 1522
    iget-boolean v7, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->drawToCanvas:Z

    if-eqz v7, :cond_1e

    iget-object v7, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    iget-object v8, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7, v8, v6}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1524
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->popTransform()V

    .line 1525
    new-instance v7, Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-direct {v7}, Lcom/brakefield/infinitestudio/geometry/PathTracer;-><init>()V

    .line 1526
    new-instance v8, Landroid/graphics/RectF;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v1, v4

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    invoke-direct {v8, v9, v10, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v8, v1}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 1528
    iget-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->objects:Ljava/util/List;

    new-instance v3, Lcom/brakefield/infinitestudio/image/svg/SVGObject;

    invoke-direct {v3, v7, v6, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGObject;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;Lcom/brakefield/infinitestudio/color/PaintTracer;Lcom/brakefield/infinitestudio/color/PaintTracer;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1530
    :cond_1f
    iget-boolean v3, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->hidden:Z

    if-nez v3, :cond_27

    const-string/jumbo v3, "polygon"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    const-string/jumbo v4, "polyline"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    :cond_20
    const-string/jumbo v4, "points"

    .line 1531
    invoke-static {v4, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$900(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 1533
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-direct {v5}, Lcom/brakefield/infinitestudio/geometry/PathTracer;-><init>()V

    .line 1534
    invoke-static {v4}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;->access$100(Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1535
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v10, :cond_2c

    .line 1536
    invoke-direct {v0, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1537
    new-instance v6, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;

    iget-object v7, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->groupProps:Ljava/util/List;

    invoke-direct {v6, v2, v7, v14}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;-><init>(Lorg/xml/sax/Attributes;Ljava/util/List;Lcom/brakefield/infinitestudio/image/svg/SVGParser$1;)V

    .line 1538
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v5, v2, v7}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->moveTo(FF)V

    .line 1539
    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_21

    .line 1540
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-int/lit8 v7, v12, 0x1

    .line 1541
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 1542
    invoke-virtual {v5, v2, v7}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->lineTo(FF)V

    add-int/lit8 v12, v12, 0x2

    goto :goto_4

    .line 1545
    :cond_21
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1546
    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->close()V

    .line 1548
    :cond_22
    iget-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradientMap:Ljava/util/HashMap;

    invoke-direct {v0, v6, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->getFill(Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;Ljava/util/HashMap;)Lcom/brakefield/infinitestudio/color/PaintTracer;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 1550
    invoke-direct {v0, v5}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->doLimits(Landroid/graphics/Path;)V

    .line 1551
    iget-boolean v2, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->drawToCanvas:Z

    if-eqz v2, :cond_23

    iget-object v2, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    iget-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1552
    :cond_23
    iget-object v2, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/color/PaintTracer;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setColor(I)V

    .line 1554
    :cond_24
    invoke-direct {v0, v6}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->getStroke(Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;)Lcom/brakefield/infinitestudio/color/PaintTracer;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 1556
    iget-boolean v3, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->drawToCanvas:Z

    if-eqz v3, :cond_25

    iget-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    iget-object v4, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1557
    :cond_25
    iget-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/color/PaintTracer;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setColor(I)V

    .line 1559
    :cond_26
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->popTransform()V

    .line 1561
    iget-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->objects:Ljava/util/List;

    new-instance v4, Lcom/brakefield/infinitestudio/image/svg/SVGObject;

    invoke-direct {v4, v5, v2, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGObject;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;Lcom/brakefield/infinitestudio/color/PaintTracer;Lcom/brakefield/infinitestudio/color/PaintTracer;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1564
    :cond_27
    iget-boolean v3, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->hidden:Z

    if-nez v3, :cond_2c

    const-string v3, "path"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, "d"

    .line 1565
    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$200(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$1000(Ljava/lang/String;)Lcom/brakefield/infinitestudio/geometry/PathTracer;

    move-result-object v1

    .line 1566
    invoke-direct {v0, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1567
    new-instance v3, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;

    iget-object v4, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->groupProps:Ljava/util/List;

    invoke-direct {v3, v2, v4, v14}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;-><init>(Lorg/xml/sax/Attributes;Ljava/util/List;Lcom/brakefield/infinitestudio/image/svg/SVGParser$1;)V

    .line 1568
    iget-object v2, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->gradientMap:Ljava/util/HashMap;

    invoke-direct {v0, v3, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->getFill(Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;Ljava/util/HashMap;)Lcom/brakefield/infinitestudio/color/PaintTracer;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 1570
    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->doLimits(Landroid/graphics/Path;)V

    .line 1571
    iget-boolean v4, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->drawToCanvas:Z

    if-eqz v4, :cond_28

    iget-object v4, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    iget-object v5, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1572
    :cond_28
    iget-object v4, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/color/PaintTracer;->getColor()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setColor(I)V

    .line 1574
    :cond_29
    invoke-direct {v0, v3}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->getStroke(Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;)Lcom/brakefield/infinitestudio/color/PaintTracer;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 1576
    iget-boolean v4, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->drawToCanvas:Z

    if-eqz v4, :cond_2a

    iget-object v4, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    iget-object v5, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1577
    :cond_2a
    iget-object v4, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->paint:Lcom/brakefield/infinitestudio/color/PaintTracer;

    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/color/PaintTracer;->getColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setColor(I)V

    .line 1579
    :cond_2b
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->popTransform()V

    .line 1581
    iget-object v4, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->objects:Ljava/util/List;

    new-instance v5, Lcom/brakefield/infinitestudio/image/svg/SVGObject;

    invoke-direct {v5, v1, v3, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGObject;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;Lcom/brakefield/infinitestudio/color/PaintTracer;Lcom/brakefield/infinitestudio/color/PaintTracer;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    :goto_5
    return-void
.end method
