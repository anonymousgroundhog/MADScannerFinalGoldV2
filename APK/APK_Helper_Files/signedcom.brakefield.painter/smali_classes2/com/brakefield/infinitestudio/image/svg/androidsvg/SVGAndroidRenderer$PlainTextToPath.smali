.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextToPath;
.super Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextProcessor;
.source "SVGAndroidRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlainTextToPath"
.end annotation


# instance fields
.field textAsPath:Landroid/graphics/Path;

.field final synthetic this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;FFLandroid/graphics/Path;)V
    .locals 1

    .line 4044
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextToPath;->this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextProcessor;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$1;)V

    .line 4045
    iput p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextToPath;->x:F

    .line 4046
    iput p3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextToPath;->y:F

    .line 4047
    iput-object p4, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextToPath;->textAsPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public doTextContainer(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;)Z
    .locals 2

    .line 4053
    instance-of p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;

    if-eqz p1, :cond_0

    const-string p1, "Using <textPath> elements in a clip path is not supported."

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 4055
    invoke-static {p1, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->access$800(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public processText(Ljava/lang/String;)V
    .locals 8

    .line 4064
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextToPath;->this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->access$200(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4067
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4068
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextToPath;->this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->access$300(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextToPath;->x:F

    iget v6, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextToPath;->y:F

    move-object v2, p1

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 4069
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextToPath;->textAsPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 4073
    :cond_0
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextToPath;->x:F

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextToPath;->this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->access$300(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextToPath;->x:F

    return-void
.end method
