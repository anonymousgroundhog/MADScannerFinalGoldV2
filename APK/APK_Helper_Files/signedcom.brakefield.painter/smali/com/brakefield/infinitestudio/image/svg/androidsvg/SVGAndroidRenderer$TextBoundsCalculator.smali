.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;
.super Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextProcessor;
.source "SVGAndroidRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextBoundsCalculator"
.end annotation


# instance fields
.field bbox:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;FF)V
    .locals 1

    .line 1708
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextProcessor;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$1;)V

    .line 1705
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    .line 1709
    iput p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->x:F

    .line 1710
    iput p3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->y:F

    return-void
.end method


# virtual methods
.method public doTextContainer(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;)Z
    .locals 5

    .line 1716
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1720
    move-object v0, p1

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;

    .line 1721
    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iget-object v2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 1723
    iget-object p1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "TextPath path reference \'%s\' not found"

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->access$600(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 1726
    :cond_0
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;

    .line 1727
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;

    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;->d:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;

    invoke-direct {v0, v3, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 1728
    iget-object v3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-eqz v3, :cond_1

    .line 1729
    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1730
    :cond_1
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 1731
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1732
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    return v2

    :cond_2
    return v1
.end method

.method public processText(Ljava/lang/String;)V
    .locals 4

    .line 1741
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->access$200(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1743
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1745
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->access$300(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1746
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1748
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->x:F

    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->y:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 1750
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 1754
    :cond_0
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->x:F

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->access$300(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->x:F

    return-void
.end method
