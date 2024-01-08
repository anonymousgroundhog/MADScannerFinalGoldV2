.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;
.super Ljava/lang/Object;
.source "SVGAndroidRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PathConverter;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextProcessor;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextDrawer;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PathTextDrawer;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextWidthCalculator;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextToPath;
    }
.end annotation


# static fields
.field private static final BEZIER_ARC_FACTOR:F = 0.5522848f

.field private static final DEFAULT_FONT_FAMILY:Ljava/lang/String; = "serif"

.field public static final LUMINANCE_TO_ALPHA_BLUE:F = 0.0722f

.field public static final LUMINANCE_TO_ALPHA_GREEN:F = 0.7151f

.field public static final LUMINANCE_TO_ALPHA_RED:F = 0.2127f

.field private static final TAG:Ljava/lang/String; = "SVGAndroidRenderer"

.field private static supportedFeatures:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private canvas:Landroid/graphics/Canvas;

.field private document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

.field private dpi:F

.field private matrixStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private parentStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

.field private stateStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/graphics/Canvas;F)V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    .line 202
    iput p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->dpi:F

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 89
    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)Z
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    return-object p0
.end method

.method static synthetic access$400(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)Landroid/graphics/Canvas;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    return-object p0
.end method

.method static synthetic access$600(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 89
    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(FFFFFZZFFLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathInterface;)V
    .locals 0

    .line 89
    invoke-static/range {p0 .. p9}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->arcTo(FFFFFZZFFLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathInterface;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 89
    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private addObjectToClip(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 1

    .line 3939
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)V

    .line 3941
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3943
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3946
    :cond_1
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    .line 3947
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3950
    :cond_2
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;

    if-eqz v0, :cond_3

    .line 3951
    move-object v0, p1

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    .line 3952
    :cond_3
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;

    if-eqz v0, :cond_4

    .line 3953
    move-object v0, p1

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    .line 3954
    :cond_4
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;

    if-eqz v0, :cond_5

    .line 3955
    move-object v0, p1

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    .line 3956
    :cond_5
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;

    if-eqz v0, :cond_6

    .line 3957
    move-object v0, p1

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v0

    .line 3961
    :goto_0
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 3963
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3964
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    :cond_6
    return-void
.end method

.method private addObjectToClip(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 2

    .line 3914
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)V

    .line 3916
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3918
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3921
    :cond_1
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    .line 3922
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3924
    :cond_2
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;->d:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;

    invoke-direct {v0, p0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 3926
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-nez v1, :cond_3

    .line 3927
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    .line 3929
    :cond_3
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 3932
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3933
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    return-void
.end method

.method private addObjectToClip(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 1

    .line 3854
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3858
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->clipStatePush()V

    .line 3860
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 3862
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;

    invoke-direct {p0, p1, p3, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "<use> elements inside a <clipPath> cannot reference another <use>"

    .line 3864
    invoke-static {p2, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3866
    :cond_2
    instance-of p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;

    if-eqz p2, :cond_3

    .line 3867
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;

    invoke-direct {p0, p1, p3, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 3868
    :cond_3
    instance-of p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;

    if-eqz p2, :cond_4

    .line 3869
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;

    invoke-direct {p0, p1, p3, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 3870
    :cond_4
    instance-of p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;

    if-eqz p2, :cond_5

    .line 3871
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;

    invoke-direct {p0, p1, p3, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 3873
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Invalid %s element found in clipPath definition"

    invoke-static {p2, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3877
    :goto_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->clipStatePop()V

    return-void
.end method

.method private addObjectToClip(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 9

    .line 3995
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)V

    .line 3997
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4000
    :cond_0
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    .line 4001
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 4004
    :cond_1
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->x:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v2

    .line 4005
    :goto_1
    iget-object v3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->y:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v2

    .line 4006
    :goto_3
    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->dx:Ljava/util/List;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_5

    :cond_7
    :goto_4
    move v4, v2

    .line 4007
    :goto_5
    iget-object v5, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->dy:Ljava/util/List;

    if-eqz v5, :cond_9

    iget-object v5, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_8

    goto :goto_6

    :cond_8
    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    .line 4010
    :cond_9
    :goto_6
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->textAnchor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    sget-object v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    if-eq v1, v5, :cond_b

    .line 4011
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;)F

    move-result v1

    .line 4012
    iget-object v5, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->textAnchor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    sget-object v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    if-ne v5, v6, :cond_a

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    :cond_a
    sub-float/2addr v0, v1

    .line 4019
    :cond_b
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-nez v1, :cond_c

    .line 4020
    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;

    invoke-direct {v1, p0, v0, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;FF)V

    .line 4021
    invoke-direct {p0, p1, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 4022
    new-instance v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget-object v6, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-direct {v5, v6, v7, v8, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v5, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    .line 4024
    :cond_c
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 4026
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 4027
    new-instance v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextToPath;

    add-float/2addr v0, v4

    add-float/2addr v3, v2

    invoke-direct {v5, p0, v0, v3, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextToPath;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;FFLandroid/graphics/Path;)V

    invoke-direct {p0, p1, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 4029
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 4030
    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    return-void
.end method

.method private addObjectToClip(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 2

    .line 3970
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)V

    .line 3972
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3974
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3977
    :cond_1
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    .line 3978
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3981
    :cond_2
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    move-result-object v0

    if-nez v0, :cond_3

    .line 3983
    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->href:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Use reference \'%s\' not found"

    invoke-static {p2, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3987
    :cond_3
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    const/4 p1, 0x0

    .line 3989
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    return-void
.end method

.method private static arcTo(FFFFFZZFFLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathInterface;)V
    .locals 20

    move/from16 v0, p4

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    cmpl-float v4, p0, v2

    if-nez v4, :cond_0

    cmpl-float v4, p1, v3

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    cmpl-float v5, p2, v4

    if-eqz v5, :cond_a

    cmpl-float v5, p3, v4

    if-nez v5, :cond_1

    goto/16 :goto_6

    .line 2564
    :cond_1
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 2565
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v7, v0

    const-wide v9, 0x4076800000000000L    # 360.0

    rem-double/2addr v7, v9

    .line 2568
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    double-to-float v7, v7

    float-to-double v7, v7

    .line 2569
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    .line 2570
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    sub-float v8, p0, v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v8, v12

    sub-float v13, p1, v3

    div-float/2addr v13, v12

    mul-float v14, v11, v8

    mul-float v15, v7, v13

    add-float/2addr v14, v15

    neg-float v15, v7

    mul-float/2addr v15, v8

    mul-float/2addr v13, v11

    add-float/2addr v15, v13

    mul-float v8, v5, v5

    mul-float v13, v6, v6

    mul-float v16, v14, v14

    mul-float v17, v15, v15

    div-float v18, v16, v8

    div-float v19, v17, v13

    add-float v9, v18, v19

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v18, v9, v10

    if-lez v18, :cond_2

    float-to-double v8, v9

    move/from16 v18, v11

    .line 2594
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v5, v10

    .line 2595
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v6, v8

    mul-float v8, v5, v5

    mul-float v13, v6, v6

    goto :goto_0

    :cond_2
    move/from16 v18, v11

    :goto_0
    move/from16 v10, p5

    if-ne v10, v1, :cond_3

    const/high16 v10, -0x40800000    # -1.0f

    goto :goto_1

    :cond_3
    const/high16 v10, 0x3f800000    # 1.0f

    :goto_1
    mul-float v11, v8, v13

    mul-float v8, v8, v17

    sub-float/2addr v11, v8

    mul-float v13, v13, v16

    sub-float/2addr v11, v13

    add-float/2addr v8, v13

    div-float/2addr v11, v8

    cmpg-float v8, v11, v4

    if-gez v8, :cond_4

    move v11, v4

    :cond_4
    float-to-double v9, v10

    float-to-double v12, v11

    .line 2604
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    double-to-float v9, v9

    mul-float v10, v5, v15

    div-float/2addr v10, v6

    mul-float/2addr v10, v9

    mul-float v11, v6, v14

    div-float/2addr v11, v5

    neg-float v11, v11

    mul-float/2addr v9, v11

    add-float v11, p0, v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v13, p1, v3

    div-float/2addr v13, v12

    mul-float v12, v18, v10

    mul-float v16, v7, v9

    sub-float v12, v12, v16

    add-float/2addr v11, v12

    mul-float/2addr v7, v10

    mul-float v12, v18, v9

    add-float/2addr v7, v12

    add-float/2addr v13, v7

    sub-float v7, v14, v10

    div-float/2addr v7, v5

    sub-float v12, v15, v9

    div-float/2addr v12, v6

    neg-float v14, v14

    sub-float/2addr v14, v10

    div-float/2addr v14, v5

    neg-float v10, v15

    sub-float/2addr v10, v9

    div-float/2addr v10, v6

    mul-float v9, v7, v7

    mul-float v15, v12, v12

    add-float/2addr v9, v15

    move/from16 v16, v5

    float-to-double v4, v9

    .line 2622
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v5, 0x0

    cmpg-float v17, v12, v5

    move/from16 p0, v9

    if-gez v17, :cond_5

    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_2

    :cond_5
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_2
    float-to-double v8, v5

    div-float v4, v7, v4

    float-to-double v4, v4

    .line 2625
    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    mul-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v5, v14, v14

    mul-float v8, v10, v10

    add-float/2addr v5, v8

    mul-float v9, p0, v5

    float-to-double v8, v9

    .line 2628
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float v8, v7, v14

    mul-float v9, v12, v10

    add-float/2addr v8, v9

    mul-float/2addr v7, v10

    mul-float/2addr v12, v14

    sub-float/2addr v7, v12

    const/4 v9, 0x0

    cmpg-float v7, v7, v9

    if-gez v7, :cond_6

    const/high16 v10, -0x40800000    # -1.0f

    goto :goto_3

    :cond_6
    const/high16 v10, 0x3f800000    # 1.0f

    :goto_3
    float-to-double v9, v10

    div-float/2addr v8, v5

    float-to-double v7, v8

    .line 2631
    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    move-result-wide v7

    mul-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    if-nez v1, :cond_7

    cmpl-double v5, v7, v9

    if-lez v5, :cond_7

    const-wide v14, 0x4076800000000000L    # 360.0

    sub-double/2addr v7, v14

    goto :goto_4

    :cond_7
    const-wide v14, 0x4076800000000000L    # 360.0

    if-eqz v1, :cond_8

    cmpg-double v1, v7, v9

    if-gez v1, :cond_8

    add-double/2addr v7, v14

    :cond_8
    :goto_4
    rem-double/2addr v7, v14

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v4, v1

    float-to-double v4, v4

    .line 2644
    invoke-static {v4, v5, v7, v8}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->arcToBeziers(DD)[F

    move-result-object v1

    .line 2647
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v5, v16

    .line 2648
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2649
    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 2650
    invoke-virtual {v4, v11, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2651
    invoke-virtual {v4, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2657
    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    aput v2, v1, v0

    .line 2658
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aput v3, v1, v0

    const/4 v0, 0x0

    .line 2661
    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_9

    .line 2663
    aget v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    aget v3, v1, v3

    add-int/lit8 v4, v0, 0x2

    aget v4, v1, v4

    add-int/lit8 v5, v0, 0x3

    aget v5, v1, v5

    add-int/lit8 v6, v0, 0x4

    aget v6, v1, v6

    add-int/lit8 v7, v0, 0x5

    aget v7, v1, v7

    move-object/from16 p0, p9

    move/from16 p1, v2

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    invoke-interface/range {p0 .. p6}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathInterface;->cubicTo(FFFFFF)V

    add-int/lit8 v0, v0, 0x6

    goto :goto_5

    :cond_9
    return-void

    :cond_a
    :goto_6
    move-object/from16 v0, p9

    .line 2559
    invoke-interface {v0, v2, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathInterface;->lineTo(FF)V

    return-void
.end method

.method private static arcToBeziers(DD)[F
    .locals 21

    .line 2684
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 2686
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 2687
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    int-to-double v5, v0

    div-double/2addr v3, v5

    double-to-float v3, v3

    float-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v6, v4, v6

    .line 2691
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide v10, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    add-double/2addr v6, v10

    div-double/2addr v8, v6

    mul-int/lit8 v6, v0, 0x6

    .line 2693
    new-array v6, v6, [F

    const/4 v7, 0x0

    move v10, v7

    :goto_0
    if-ge v7, v0, :cond_0

    int-to-float v11, v7

    mul-float/2addr v11, v3

    float-to-double v11, v11

    add-double/2addr v11, v1

    .line 2700
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    .line 2701
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    add-int/lit8 v17, v10, 0x1

    mul-double v18, v8, v15

    move/from16 v20, v0

    move-wide/from16 p0, v1

    sub-double v0, v13, v18

    double-to-float v0, v0

    .line 2703
    aput v0, v6, v10

    add-int/lit8 v0, v17, 0x1

    mul-double/2addr v13, v8

    add-double v1, v15, v13

    double-to-float v1, v1

    .line 2704
    aput v1, v6, v17

    add-double/2addr v11, v4

    .line 2707
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 2708
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    add-int/lit8 v12, v0, 0x1

    mul-double v13, v8, v10

    add-double/2addr v13, v1

    double-to-float v13, v13

    .line 2709
    aput v13, v6, v0

    add-int/lit8 v0, v12, 0x1

    mul-double v13, v8, v1

    sub-double v13, v10, v13

    double-to-float v13, v13

    .line 2710
    aput v13, v6, v12

    add-int/lit8 v12, v0, 0x1

    double-to-float v1, v1

    .line 2712
    aput v1, v6, v0

    add-int/lit8 v0, v12, 0x1

    double-to-float v1, v10

    .line 2713
    aput v1, v6, v12

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v1, p0

    move v10, v0

    move/from16 v0, v20

    goto :goto_0

    :cond_0
    return-object v6
.end method

.method private calculateClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;)Landroid/graphics/Path;
    .locals 5

    .line 3619
    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3621
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ClipPath reference \'%s\' not found"

    invoke-static {p2, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 3625
    :cond_0
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$ClipPath;

    .line 3628
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3632
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3634
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    .line 3635
    :goto_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    if-nez v0, :cond_3

    .line 3638
    iget v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    iget v3, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3639
    iget v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    iget p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    invoke-virtual {v2, v0, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3641
    :cond_3
    iget-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$ClipPath;->transform:Landroid/graphics/Matrix;

    if-eqz p2, :cond_4

    .line 3643
    iget-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$ClipPath;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3646
    :cond_4
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 3647
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$ClipPath;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    .line 3649
    instance-of v4, v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;

    if-nez v4, :cond_6

    goto :goto_2

    .line 3651
    :cond_6
    check-cast v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v3, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->objectToPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;Z)Landroid/graphics/Path;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 3653
    sget-object v4, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto :goto_2

    .line 3657
    :cond_7
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 3659
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$ClipPath;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-nez v0, :cond_8

    .line 3660
    invoke-direct {p0, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    move-result-object v0

    iput-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$ClipPath;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    .line 3661
    :cond_8
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$ClipPath;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->calculateClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;)Landroid/graphics/Path;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 3663
    sget-object v0, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 3666
    :cond_9
    invoke-virtual {p2, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 3669
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    return-object p2
.end method

.method private calculateMarkerPositions(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;",
            ")",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;",
            ">;"
        }
    .end annotation

    .line 1211
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;->x1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;->x1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v1

    .line 1212
    :goto_0
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;->y1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;->y1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, v1

    .line 1213
    :goto_1
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;->x2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;->x2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    move v8, v0

    goto :goto_2

    :cond_2
    move v8, v1

    .line 1214
    :goto_2
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;->y2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;->y2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {p1, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    :cond_3
    move v9, v1

    .line 1216
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1217
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    sub-float v10, v8, v4

    sub-float v11, v9, v5

    move-object v2, v0

    move-object v3, p0

    move v6, v10

    move v7, v11

    invoke-direct/range {v2 .. v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;FFFF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1218
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;FFFF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private calculateMarkerPositions(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;",
            ")",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1270
    iget-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;->points:[F

    array-length v1, v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1275
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1276
    new-instance v10, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget-object v4, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;->points:[F

    const/4 v11, 0x0

    aget v6, v4, v11

    iget-object v4, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;->points:[F

    const/4 v12, 0x1

    aget v7, v4, v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v10

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;FFFF)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1280
    iget-object v4, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;->points:[F

    aget v4, v4, v2

    .line 1281
    iget-object v5, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;->points:[F

    add-int/lit8 v6, v2, 0x1

    aget v5, v5, v6

    .line 1282
    invoke-virtual {v10, v4, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    .line 1283
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1284
    new-instance v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget v7, v10, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float v17, v4, v7

    iget v7, v10, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float v18, v5, v7

    move-object v13, v6

    move-object/from16 v14, p0

    move v15, v4

    move/from16 v16, v5

    invoke-direct/range {v13 .. v18}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;FFFF)V

    add-int/lit8 v2, v2, 0x2

    move-object v10, v6

    goto :goto_0

    .line 1288
    :cond_1
    instance-of v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Polygon;

    if-eqz v1, :cond_2

    .line 1289
    iget-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;->points:[F

    aget v1, v1, v11

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;->points:[F

    aget v1, v1, v12

    cmpl-float v1, v5, v1

    if-eqz v1, :cond_3

    .line 1290
    iget-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;->points:[F

    aget v6, v1, v11

    .line 1291
    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;->points:[F

    aget v7, v0, v12

    .line 1292
    invoke-virtual {v10, v6, v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    .line 1293
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1296
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget v1, v10, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float v8, v6, v1

    iget v1, v10, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float v9, v7, v1

    move-object v4, v0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;FFFF)V

    .line 1297
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->add(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 1298
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1299
    invoke-interface {v3, v11, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1302
    :cond_2
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-object v3
.end method

.method private calculatePathBounds(Landroid/graphics/Path;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;
    .locals 4

    .line 1051
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x1

    .line 1052
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1053
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object p1
.end method

.method private calculateTextWidth(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;)F
    .locals 2

    .line 1678
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextWidthCalculator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextWidthCalculator;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$1;)V

    .line 1679
    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1680
    iget p1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextWidthCalculator;->x:F

    return p1
.end method

.method private calculateViewBoxTransform(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;
    .locals 8

    .line 1973
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p3, :cond_5

    .line 1975
    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 1978
    :cond_0
    iget v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    iget v2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    div-float/2addr v1, v2

    .line 1979
    iget v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    iget v3, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    div-float/2addr v2, v3

    .line 1980
    iget v3, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    neg-float v3, v3

    .line 1981
    iget v4, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    neg-float v4, v4

    .line 1984
    sget-object v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->STRETCH:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    invoke-virtual {p3, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1986
    iget p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    iget p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1987
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1988
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    return-object v0

    .line 1994
    :cond_1
    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->getScale()Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    move-result-object v5

    sget-object v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    if-ne v5, v6, :cond_2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1996
    :goto_0
    iget v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    div-float/2addr v2, v1

    .line 1997
    iget v5, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    div-float/2addr v5, v1

    .line 1999
    sget-object v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$PreserveAspectRatio$Alignment:[I

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v7

    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    packed-switch v6, :pswitch_data_0

    goto :goto_2

    .line 2009
    :pswitch_0
    iget v6, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    sub-float/2addr v6, v2

    goto :goto_1

    .line 2004
    :pswitch_1
    iget v6, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    sub-float/2addr v6, v2

    div-float/2addr v6, v7

    :goto_1
    sub-float/2addr v3, v6

    .line 2016
    :goto_2
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$PreserveAspectRatio$Alignment:[I

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object p3

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result p3

    aget p3, v2, p3

    const/4 v2, 0x2

    if-eq p3, v2, :cond_4

    const/4 v2, 0x3

    if-eq p3, v2, :cond_3

    const/4 v2, 0x5

    if-eq p3, v2, :cond_4

    const/4 v2, 0x6

    if-eq p3, v2, :cond_3

    const/4 v2, 0x7

    if-eq p3, v2, :cond_4

    const/16 v2, 0x8

    if-eq p3, v2, :cond_3

    goto :goto_4

    .line 2026
    :cond_3
    iget p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    sub-float/2addr p2, v5

    goto :goto_3

    .line 2021
    :cond_4
    iget p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    sub-float/2addr p2, v5

    div-float/2addr p2, v7

    :goto_3
    sub-float/2addr v4, p2

    .line 2033
    :goto_4
    iget p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    iget p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 2034
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2035
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_5
    :goto_5
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private checkForClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V
    .locals 1

    .line 3587
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;)V

    return-void
.end method

.method private checkForClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;)V
    .locals 1

    .line 3593
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 3599
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->calculateClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;)Landroid/graphics/Path;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3601
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_1
    return-void
.end method

.method private checkForClipPath_OldStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;)V
    .locals 4

    .line 3800
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3802
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ClipPath reference \'%s\' not found"

    invoke-static {p2, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3806
    :cond_0
    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$ClipPath;

    .line 3809
    iget-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$ClipPath;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3810
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    return-void

    .line 3814
    :cond_1
    iget-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v2, v3

    .line 3816
    :cond_3
    instance-of v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Group;

    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    .line 3817
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "<clipPath clipPathUnits=\"objectBoundingBox\"> is not supported when referenced from container elements (like %s)"

    invoke-static {p2, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3821
    :cond_4
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->clipStatePush()V

    if-nez v2, :cond_5

    .line 3825
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 3826
    iget v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    iget v2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3827
    iget v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    iget p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3828
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3830
    :cond_5
    iget-object p1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$ClipPath;->transform:Landroid/graphics/Matrix;

    if-eqz p1, :cond_6

    .line 3832
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object p2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$ClipPath;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3837
    :cond_6
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3839
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 3841
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 3842
    iget-object p2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$ClipPath;->children:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    .line 3844
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {p0, v0, v3, p1, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 3846
    :cond_7
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 3848
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->clipStatePop()V

    return-void
.end method

.method private checkForGradientsAndPatterns(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V
    .locals 3

    .line 3197
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fill:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PaintReference;

    if-eqz v0, :cond_0

    .line 3198
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fill:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    check-cast v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PaintReference;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->decodePaintReference(ZLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PaintReference;)V

    .line 3200
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stroke:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PaintReference;

    if-eqz v0, :cond_1

    .line 3201
    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stroke:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PaintReference;

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->decodePaintReference(ZLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PaintReference;)V

    :cond_1
    return-void
.end method

.method private checkForImageDataURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "data:"

    .line 1928
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1930
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xe

    if-ge v0, v2, :cond_1

    return-object v1

    :cond_1
    const/16 v0, 0x2c

    .line 1933
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    const/16 v2, 0xc

    if-ge v0, v2, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v0, -0x7

    .line 1936
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";base64"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 1938
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 1939
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    return-object v1
.end method

.method private checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;
    .locals 5

    .line 2378
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;->Italic:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    .line 2379
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v0, 0x1f4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-le p2, v0, :cond_2

    if-eqz p3, :cond_1

    move p2, v3

    goto :goto_1

    :cond_1
    move p2, v1

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    move p2, v4

    goto :goto_1

    :cond_3
    move p2, v2

    .line 2382
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 v0, -0x1

    sparse-switch p3, :sswitch_data_0

    :goto_2
    move v1, v0

    goto :goto_3

    :sswitch_0
    const-string p3, "cursive"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x4

    goto :goto_3

    :sswitch_1
    const-string/jumbo p3, "serif"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_3

    :sswitch_2
    const-string p3, "fantasy"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    move v1, v4

    goto :goto_3

    :sswitch_3
    const-string p3, "monospace"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :sswitch_4
    const-string/jumbo p3, "sans-serif"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :cond_8
    :goto_3
    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_4

    .line 2390
    :pswitch_0
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_4

    .line 2384
    :pswitch_1
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_4

    .line 2392
    :pswitch_2
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_4

    .line 2388
    :pswitch_3
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_4

    .line 2386
    :pswitch_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_4
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5b97f43d -> :sswitch_4
        -0x5559f3fd -> :sswitch_3
        -0x407a00da -> :sswitch_2
        0x684317d -> :sswitch_1
        0x432c41c5 -> :sswitch_0
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

.method private checkXMLSpaceAttribute(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V
    .locals 1

    .line 416
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;

    if-nez v0, :cond_0

    return-void

    .line 419
    :cond_0
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;

    .line 420
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    :cond_1
    return-void
.end method

.method private static clamp255(F)I
    .locals 1

    const/high16 v0, 0x43800000    # 256.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    if-le p0, v0, :cond_1

    move p0, v0

    :cond_1
    :goto_0
    return p0
.end method

.method private clipStatePop()V
    .locals 1

    .line 3897
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 3899
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    return-void
.end method

.method private clipStatePush()V
    .locals 2

    .line 3887
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 3889
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3890
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    return-void
.end method

.method static colourWithOpacity(IF)I
    .locals 2

    shr-int/lit8 v0, p0, 0x18

    const/16 v1, 0xff

    and-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    .line 2409
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-gez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    shl-int/lit8 p1, v1, 0x18

    const v0, 0xffffff

    and-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0
.end method

.method private static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private decodePaintReference(ZLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PaintReference;)V
    .locals 3

    .line 3211
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iget-object v1, p3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    sget-object v0, Lcom/fasterxml/jackson/core/base/wdxk/XdOzfHnSj;->tphCUlCRvgmtUsY:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "Stroke"

    :goto_0
    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    .line 3214
    iget-object v2, p3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    aput-object v2, p2, v0

    const-string v0, "%s reference \'%s\' not found"

    invoke-static {v0, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3215
    iget-object p2, p3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PaintReference;->fallback:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    if-eqz p2, :cond_1

    .line 3216
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object p3, p3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PaintReference;->fallback:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, p2, p1, p3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 3219
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    goto :goto_1

    .line 3221
    :cond_2
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    :goto_1
    return-void

    .line 3225
    :cond_3
    instance-of p3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;

    if-eqz p3, :cond_4

    .line 3226
    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;

    invoke-direct {p0, p1, p2, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->makeLinearGradient(ZLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;)V

    goto :goto_2

    .line 3227
    :cond_4
    instance-of p3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;

    if-eqz p3, :cond_5

    .line 3228
    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;

    invoke-direct {p0, p1, p2, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->makeRadialGradient(ZLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;)V

    goto :goto_2

    .line 3229
    :cond_5
    instance-of p2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SolidColor;

    if-eqz p2, :cond_6

    .line 3230
    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SolidColor;

    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->setSolidColor(ZLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SolidColor;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private display()Z
    .locals 1

    .line 1945
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1946
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private doFilledPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fill:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PaintReference;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fill:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    check-cast v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PaintReference;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 434
    instance-of v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;

    if-eqz v1, :cond_0

    .line 435
    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;

    .line 436
    invoke-direct {p0, p1, p2, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->fillWithPattern(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;Landroid/graphics/Path;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;)V

    return-void

    .line 442
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private doStroke(Landroid/graphics/Path;)V
    .locals 5

    .line 451
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->vectorEffect:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;->NonScalingStroke:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

    if-ne v0, v1, :cond_1

    .line 457
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 459
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 460
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 462
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 465
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    .line 466
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p1, :cond_0

    .line 468
    invoke-virtual {p1, v2}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    .line 469
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 470
    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 471
    invoke-virtual {p1, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 475
    :cond_0
    iget-object v3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 478
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    if-eqz p1, :cond_2

    .line 481
    invoke-virtual {p1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private dotProduct(FFFF)F
    .locals 0

    mul-float/2addr p1, p3

    mul-float/2addr p2, p4

    add-float/2addr p1, p2

    return p1
.end method

.method private enumerateTextSpans(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextProcessor;)V
    .locals 4

    .line 1463
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1466
    :cond_0
    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;->children:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    move v1, v0

    .line 1469
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1471
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    .line 1473
    instance-of v3, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextSequence;

    if-eqz v3, :cond_1

    .line 1474
    check-cast v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextSequence;

    iget-object v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    xor-int/2addr v3, v0

    invoke-direct {p0, v2, v1, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextProcessor;->processText(Ljava/lang/String;)V

    goto :goto_1

    .line 1476
    :cond_1
    invoke-direct {p0, v2, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->processTextChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "SVGAndroidRenderer"

    .line 501
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private extractRawText(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1764
    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;->children:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    move v1, v0

    .line 1767
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1769
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    .line 1771
    instance-of v3, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;

    if-eqz v3, :cond_0

    .line 1772
    check-cast v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;

    invoke-direct {p0, v2, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->extractRawText(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 1773
    :cond_0
    instance-of v3, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextSequence;

    if-eqz v3, :cond_1

    .line 1774
    check-cast v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextSequence;

    iget-object v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    xor-int/2addr v3, v0

    invoke-direct {p0, v2, v1, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private fillInChainedGradientFields(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;Ljava/lang/String;)V
    .locals 2

    .line 3464
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    invoke-virtual {v0, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Gradient reference \'%s\' not found"

    .line 3467
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3470
    :cond_0
    instance-of v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Gradient href attributes must point to other gradient elements"

    .line 3471
    invoke-static {p2, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-ne v0, p1, :cond_2

    const/4 p1, 0x0

    sget-object p1, Lorg/checkerframework/checker/propkey/qual/lW/MjAmnOQWs;->clLJgW:Ljava/lang/String;

    .line 3475
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3479
    :cond_2
    move-object p2, v0

    check-cast p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;

    .line 3481
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 3482
    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    .line 3483
    :cond_3
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    if-nez v1, :cond_4

    .line 3484
    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    .line 3485
    :cond_4
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    if-nez v1, :cond_5

    .line 3486
    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    .line 3487
    :cond_5
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3488
    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    .line 3492
    :cond_6
    :try_start_0
    instance-of v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;

    if-eqz v1, :cond_7

    .line 3493
    move-object v1, p1

    check-cast v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;

    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;)V

    goto :goto_0

    .line 3495
    :cond_7
    move-object v1, p1

    check-cast v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;

    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3500
    :catch_0
    :goto_0
    iget-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 3501
    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private fillInChainedGradientFields(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;)V
    .locals 1

    .line 3507
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-nez v0, :cond_0

    .line 3508
    iget-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 3509
    :cond_0
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-nez v0, :cond_1

    .line 3510
    iget-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 3511
    :cond_1
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-nez v0, :cond_2

    .line 3512
    iget-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 3513
    :cond_2
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-nez v0, :cond_3

    .line 3514
    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    iput-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    :cond_3
    return-void
.end method

.method private fillInChainedGradientFields(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;)V
    .locals 1

    .line 3520
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-nez v0, :cond_0

    .line 3521
    iget-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 3522
    :cond_0
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-nez v0, :cond_1

    .line 3523
    iget-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 3524
    :cond_1
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->r:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-nez v0, :cond_2

    .line 3525
    iget-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->r:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->r:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 3526
    :cond_2
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-nez v0, :cond_3

    .line 3527
    iget-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 3528
    :cond_3
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-nez v0, :cond_4

    .line 3529
    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    iput-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    :cond_4
    return-void
.end method

.method private fillInChainedPatternFields(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;Ljava/lang/String;)V
    .locals 2

    .line 4421
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    invoke-virtual {v0, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Pattern reference \'%s\' not found"

    .line 4424
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4427
    :cond_0
    instance-of v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Pattern href attributes must point to other pattern elements"

    .line 4428
    invoke-static {p2, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-ne v0, p1, :cond_2

    const-string p1, "Circular reference in pattern href attribute \'%s\'"

    .line 4432
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4436
    :cond_2
    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;

    .line 4438
    iget-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    if-nez p2, :cond_3

    .line 4439
    iget-object p2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    .line 4440
    :cond_3
    iget-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    if-nez p2, :cond_4

    .line 4441
    iget-object p2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    .line 4442
    :cond_4
    iget-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    if-nez p2, :cond_5

    .line 4443
    iget-object p2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    iput-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    .line 4444
    :cond_5
    iget-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->x:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-nez p2, :cond_6

    .line 4445
    iget-object p2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->x:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    iput-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->x:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 4446
    :cond_6
    iget-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->y:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-nez p2, :cond_7

    .line 4447
    iget-object p2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->y:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    iput-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->y:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 4448
    :cond_7
    iget-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-nez p2, :cond_8

    .line 4449
    iget-object p2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    iput-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 4450
    :cond_8
    iget-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-nez p2, :cond_9

    .line 4451
    iget-object p2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    iput-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 4453
    :cond_9
    iget-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 4454
    iget-object p2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    iput-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    .line 4455
    :cond_a
    iget-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-nez p2, :cond_b

    .line 4456
    iget-object p2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iput-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    .line 4457
    :cond_b
    iget-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    if-nez p2, :cond_c

    .line 4458
    iget-object p2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    iput-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    .line 4461
    :cond_c
    iget-object p2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    if-eqz p2, :cond_d

    .line 4462
    iget-object p2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->fillInChainedPatternFields(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private fillWithPattern(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;Landroid/graphics/Path;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 4282
    iget-object v3, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 4286
    :goto_0
    iget-object v6, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 4287
    iget-object v6, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    invoke-direct {v0, v2, v6}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->fillInChainedPatternFields(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;Ljava/lang/String;)V

    :cond_1
    const/4 v6, 0x0

    if-eqz v3, :cond_6

    .line 4291
    iget-object v3, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->x:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->x:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v3, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v6

    .line 4292
    :goto_1
    iget-object v7, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->y:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v7, :cond_3

    iget-object v7, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->y:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v7, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    goto :goto_2

    :cond_3
    move v7, v6

    .line 4293
    :goto_2
    iget-object v8, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v8, :cond_4

    iget-object v8, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v8, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    goto :goto_3

    :cond_4
    move v8, v6

    .line 4294
    :goto_3
    iget-object v9, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v9, :cond_5

    iget-object v9, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v9, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    goto :goto_8

    :cond_5
    move v9, v6

    goto :goto_8

    .line 4299
    :cond_6
    iget-object v3, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->x:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v3, :cond_7

    iget-object v3, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->x:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v3, v0, v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;F)F

    move-result v3

    goto :goto_4

    :cond_7
    move v3, v6

    .line 4300
    :goto_4
    iget-object v8, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->y:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v8, :cond_8

    iget-object v8, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->y:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v8, v0, v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;F)F

    move-result v8

    goto :goto_5

    :cond_8
    move v8, v6

    .line 4301
    :goto_5
    iget-object v9, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v9, :cond_9

    iget-object v9, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v9, v0, v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;F)F

    move-result v9

    goto :goto_6

    :cond_9
    move v9, v6

    .line 4302
    :goto_6
    iget-object v10, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v10, :cond_a

    iget-object v10, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v10, v0, v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;F)F

    move-result v7

    goto :goto_7

    :cond_a
    move v7, v6

    .line 4303
    :goto_7
    iget-object v10, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v10, v10, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    iget-object v11, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v11, v11, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    mul-float/2addr v3, v11

    add-float/2addr v3, v10

    .line 4304
    iget-object v10, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v10, v10, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    iget-object v11, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v11, v11, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    mul-float/2addr v8, v11

    add-float/2addr v8, v10

    .line 4305
    iget-object v10, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v10, v10, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    mul-float/2addr v9, v10

    .line 4306
    iget-object v10, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v10, v10, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    mul-float/2addr v7, v10

    move/from16 v17, v9

    move v9, v7

    move v7, v8

    move/from16 v8, v17

    :goto_8
    cmpl-float v10, v8, v6

    if-eqz v10, :cond_1c

    cmpl-float v10, v9, v6

    if-nez v10, :cond_b

    goto/16 :goto_12

    .line 4312
    :cond_b
    iget-object v10, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    if-eqz v10, :cond_c

    iget-object v10, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    goto :goto_9

    :cond_c
    sget-object v10, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    .line 4315
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 4317
    iget-object v11, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v12, p2

    invoke-virtual {v11, v12}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 4320
    new-instance v11, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v11, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)V

    .line 4321
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->getDefaultStyle()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    move-result-object v12

    invoke-direct {v0, v11, v12}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;)V

    .line 4322
    iget-object v12, v11, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iput-object v13, v12, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 4325
    invoke-direct {v0, v2, v11}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v11

    iput-object v11, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    .line 4328
    iget-object v11, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    .line 4330
    iget-object v12, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    if-eqz v12, :cond_12

    .line 4332
    iget-object v12, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v13, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    invoke-virtual {v12, v13}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 4336
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 4337
    iget-object v13, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    invoke-virtual {v13, v12}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v11, 0x8

    new-array v11, v11, [F

    .line 4338
    iget-object v13, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v13, v13, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    aput v13, v11, v5

    iget-object v13, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v13, v13, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    aput v13, v11, v4

    iget-object v13, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    .line 4339
    invoke-virtual {v13}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->maxX()F

    move-result v13

    const/4 v14, 0x2

    aput v13, v11, v14

    iget-object v13, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v13, v13, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    const/4 v15, 0x3

    aput v13, v11, v15

    iget-object v13, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    .line 4340
    invoke-virtual {v13}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->maxX()F

    move-result v13

    const/4 v15, 0x4

    aput v13, v11, v15

    iget-object v13, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    invoke-virtual {v13}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->maxY()F

    move-result v13

    const/4 v15, 0x5

    aput v13, v11, v15

    iget-object v13, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v13, v13, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    const/4 v15, 0x6

    aput v13, v11, v15

    iget-object v13, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    .line 4341
    invoke-virtual {v13}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->maxY()F

    move-result v13

    const/16 v16, 0x7

    aput v13, v11, v16

    .line 4342
    invoke-virtual {v12, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4344
    new-instance v12, Landroid/graphics/RectF;

    aget v13, v11, v5

    aget v5, v11, v4

    invoke-direct {v12, v13, v5, v13, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_a
    if-gt v14, v15, :cond_11

    .line 4346
    aget v5, v11, v14

    iget v13, v12, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v13

    if-gez v5, :cond_d

    aget v5, v11, v14

    iput v5, v12, Landroid/graphics/RectF;->left:F

    .line 4347
    :cond_d
    aget v5, v11, v14

    iget v13, v12, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v13

    if-lez v5, :cond_e

    aget v5, v11, v14

    iput v5, v12, Landroid/graphics/RectF;->right:F

    :cond_e
    add-int/lit8 v5, v14, 0x1

    .line 4348
    aget v13, v11, v5

    iget v4, v12, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v13, v4

    if-gez v4, :cond_f

    aget v4, v11, v5

    iput v4, v12, Landroid/graphics/RectF;->top:F

    .line 4349
    :cond_f
    aget v4, v11, v5

    iget v13, v12, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v13

    if-lez v4, :cond_10

    aget v4, v11, v5

    iput v4, v12, Landroid/graphics/RectF;->bottom:F

    :cond_10
    add-int/lit8 v14, v14, 0x2

    const/4 v4, 0x1

    goto :goto_a

    .line 4351
    :cond_11
    new-instance v11, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v4, v12, Landroid/graphics/RectF;->left:F

    iget v5, v12, Landroid/graphics/RectF;->top:F

    iget v13, v12, Landroid/graphics/RectF;->right:F

    iget v14, v12, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v14

    iget v14, v12, Landroid/graphics/RectF;->bottom:F

    iget v12, v12, Landroid/graphics/RectF;->top:F

    sub-float/2addr v14, v12

    invoke-direct {v11, v4, v5, v13, v14}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 4356
    :cond_12
    iget v4, v11, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    sub-float/2addr v4, v3

    div-float/2addr v4, v8

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    .line 4357
    iget v4, v11, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    sub-float/2addr v4, v7

    div-float/2addr v4, v9

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v9

    add-float/2addr v7, v4

    .line 4360
    invoke-virtual {v11}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->maxX()F

    move-result v4

    .line 4361
    invoke-virtual {v11}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->maxY()F

    move-result v5

    .line 4362
    new-instance v11, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    invoke-direct {v11, v6, v6, v8, v9}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 4364
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v6

    :goto_b
    cmpg-float v12, v7, v5

    if-gez v12, :cond_1a

    move v12, v3

    :goto_c
    cmpg-float v13, v12, v4

    if-gez v13, :cond_19

    .line 4370
    iput v12, v11, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    .line 4371
    iput v7, v11, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    .line 4374
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 4377
    iget-object v13, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v13, v13, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v13, v13, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_13

    .line 4378
    iget v13, v11, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    iget v14, v11, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    iget v15, v11, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    move/from16 p2, v3

    iget v3, v11, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    invoke-direct {v0, v13, v14, v15, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    goto :goto_d

    :cond_13
    move/from16 p2, v3

    .line 4381
    :goto_d
    iget-object v3, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-eqz v3, :cond_14

    .line 4383
    iget-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v13, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    invoke-direct {v0, v11, v13, v10}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_10

    .line 4387
    :cond_14
    iget-object v3, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v3, :cond_16

    iget-object v3, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_e

    :cond_15
    const/4 v3, 0x0

    goto :goto_f

    :cond_16
    :goto_e
    const/4 v3, 0x1

    .line 4389
    :goto_f
    iget-object v13, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v13, v12, v7}, Landroid/graphics/Canvas;->translate(FF)V

    if-nez v3, :cond_17

    .line 4391
    iget-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v13, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v13, v13, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    iget-object v14, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v14, v14, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    invoke-virtual {v3, v13, v14}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4397
    :cond_17
    :goto_10
    iget-object v3, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    .line 4398
    invoke-direct {v0, v13}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    goto :goto_11

    .line 4402
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePop()V

    add-float/2addr v12, v8

    move/from16 v3, p2

    goto :goto_c

    :cond_19
    move/from16 p2, v3

    add-float/2addr v7, v9

    goto/16 :goto_b

    :cond_1a
    if-eqz v6, :cond_1b

    .line 4407
    invoke-direct {v0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 4410
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePop()V

    :cond_1c
    :goto_12
    return-void
.end method

.method private findInheritFromAncestorState(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;
    .locals 2

    .line 3153
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)V

    .line 3154
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->getDefaultStyle()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;)V

    .line 3155
    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object p1

    return-object p1
.end method

.method private findInheritFromAncestorState(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;
    .locals 3

    .line 3161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3165
    :goto_0
    instance-of v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3166
    move-object v2, p1

    check-cast v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3168
    :cond_0
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_2

    .line 3174
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;

    .line 3175
    invoke-direct {p0, p2, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)V

    goto :goto_1

    .line 3178
    :cond_1
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iput-object p1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    .line 3179
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iput-object p1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    return-object p2

    .line 3170
    :cond_2
    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    goto :goto_0
.end method

.method private getAnchorPosition()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;
    .locals 2

    .line 1404
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->direction:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDirection;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDirection;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->textAnchor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->textAnchor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->End:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    :goto_0
    return-object v0

    .line 1405
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->textAnchor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    return-object v0
.end method

.method private getClipRuleFromState()Landroid/graphics/Path$FillType;
    .locals 2

    .line 3905
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clipRule:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clipRule:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    if-ne v0, v1, :cond_0

    .line 3906
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    return-object v0

    .line 3908
    :cond_0
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method private getFillTypeFromState()Landroid/graphics/Path$FillType;
    .locals 2

    .line 2417
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fillRule:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fillRule:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    if-ne v0, v1, :cond_0

    .line 2418
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    return-object v0

    .line 2420
    :cond_0
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method private static declared-synchronized initialiseSupportedFeaturesMap()V
    .locals 3

    const-class v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;

    monitor-enter v0

    .line 858
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "Structure"

    .line 877
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 878
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "BasicStructure"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 880
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const/4 v2, 0x0

    sget-object v2, Lcom/google/android/gms/common/data/ieA/NoHYdmAciUCT;->KlscHL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 881
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "Image"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 882
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const/4 v2, 0x0

    sget-object v2, Lcom/google/android/exoplayer2/source/smoothstreaming/dG/norGc;->Wgc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 883
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "ViewportAttribute"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 884
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "Shape"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 886
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "BasicText"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 887
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "PaintAttribute"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 888
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "BasicPaintAttribute"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 889
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "OpacityAttribute"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 891
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "BasicGraphicsAttribute"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 892
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "Marker"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 894
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "Gradient"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 895
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "Pattern"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 896
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "Clip"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 897
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "BasicClip"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 898
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "Mask"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 908
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "View"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 927
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z
    .locals 2

    .line 2042
    iget-wide v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    and-long p1, v0, p2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private makeLinearGradient(ZLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 3237
    iget-object v3, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->href:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3238
    iget-object v3, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->href:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    .line 3240
    :cond_0
    iget-object v3, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    .line 3241
    :goto_0
    iget-object v6, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    if-eqz p1, :cond_2

    iget-object v6, v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_2
    iget-object v6, v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    :goto_1
    if-eqz v3, :cond_7

    .line 3246
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    move-result-object v8

    .line 3247
    iget-object v9, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v9, :cond_3

    iget-object v9, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v9, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 3248
    :goto_2
    iget-object v10, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v10, :cond_4

    iget-object v10, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v10, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v10

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    .line 3249
    :goto_3
    iget-object v11, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v11, :cond_5

    iget-object v8, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v8, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    goto :goto_4

    :cond_5
    iget v8, v8, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    .line 3250
    :goto_4
    iget-object v11, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v11, :cond_6

    iget-object v11, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v11, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v11

    goto :goto_5

    :cond_6
    const/4 v11, 0x0

    :goto_5
    move v15, v8

    move v13, v9

    move v14, v10

    move/from16 v16, v11

    goto :goto_a

    .line 3254
    :cond_7
    iget-object v8, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v8, :cond_8

    iget-object v8, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v8, v0, v9}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;F)F

    move-result v8

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    .line 3255
    :goto_6
    iget-object v10, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v10, :cond_9

    iget-object v10, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v10, v0, v9}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;F)F

    move-result v10

    goto :goto_7

    :cond_9
    const/4 v10, 0x0

    .line 3256
    :goto_7
    iget-object v11, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v11, :cond_a

    iget-object v11, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v11, v0, v9}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;F)F

    move-result v11

    goto :goto_8

    :cond_a
    move v11, v9

    .line 3257
    :goto_8
    iget-object v12, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v12, :cond_b

    iget-object v12, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v12, v0, v9}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;F)F

    move-result v9

    goto :goto_9

    :cond_b
    const/4 v9, 0x0

    :goto_9
    move v13, v8

    move/from16 v16, v9

    move v14, v10

    move v15, v11

    .line 3261
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3264
    invoke-direct {v0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v8

    iput-object v8, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3267
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    if-nez v3, :cond_c

    .line 3270
    iget v3, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    iget v9, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v8, v3, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3271
    iget v3, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    iget v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    invoke-virtual {v8, v3, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3273
    :cond_c
    iget-object v1, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->gradientTransform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_d

    .line 3275
    iget-object v1, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->gradientTransform:Landroid/graphics/Matrix;

    invoke-virtual {v8, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3279
    :cond_d
    iget-object v1, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_f

    .line 3282
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePop()V

    if-eqz p1, :cond_e

    .line 3284
    iget-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v5, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    goto :goto_b

    .line 3286
    :cond_e
    iget-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v5, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    :goto_b
    return-void

    .line 3290
    :cond_f
    new-array v3, v1, [I

    .line 3291
    new-array v9, v1, [F

    .line 3294
    iget-object v10, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->children:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/high16 v11, -0x40800000    # -1.0f

    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    .line 3296
    check-cast v12, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Stop;

    .line 3297
    iget-object v7, v12, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    if-eqz v7, :cond_10

    iget-object v7, v12, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    goto :goto_d

    :cond_10
    const/4 v7, 0x0

    :goto_d
    if-eqz v5, :cond_12

    cmpl-float v18, v7, v11

    if-ltz v18, :cond_11

    goto :goto_e

    .line 3304
    :cond_11
    aput v11, v9, v5

    goto :goto_f

    .line 3299
    :cond_12
    :goto_e
    aput v7, v9, v5

    move v11, v7

    .line 3307
    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3309
    iget-object v7, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, v7, v12}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)V

    .line 3310
    iget-object v7, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stopColor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    check-cast v7, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    if-nez v7, :cond_13

    .line 3312
    sget-object v7, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;->BLACK:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    .line 3313
    :cond_13
    iget v7, v7, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;->colour:I

    iget-object v12, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v12, v12, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v12, v12, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-static {v7, v12}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->colourWithOpacity(IF)I

    move-result v7

    aput v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    .line 3316
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePop()V

    goto :goto_c

    :cond_14
    cmpl-float v5, v13, v15

    if-nez v5, :cond_15

    cmpl-float v5, v14, v16

    if-eqz v5, :cond_16

    :cond_15
    if-ne v1, v4, :cond_17

    .line 3321
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePop()V

    sub-int/2addr v1, v4

    .line 3322
    aget v1, v3, v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    .line 3327
    :cond_17
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 3328
    iget-object v4, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->spreadMethod:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    if-eqz v4, :cond_19

    .line 3330
    iget-object v4, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->spreadMethod:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    sget-object v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;->reflect:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    if-ne v4, v5, :cond_18

    .line 3331
    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_10

    .line 3332
    :cond_18
    iget-object v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;->spreadMethod:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    sget-object v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;->repeat:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    if-ne v2, v4, :cond_19

    .line 3333
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    :cond_19
    :goto_10
    move-object/from16 v19, v1

    .line 3336
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3339
    new-instance v1, Landroid/graphics/LinearGradient;

    move-object v12, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v9

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 3340
    invoke-virtual {v1, v8}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 3341
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3342
    iget-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private makePathAndBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;)Landroid/graphics/Path;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4165
    iget-object v2, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;->cx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;->cx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v2, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 4166
    :goto_0
    iget-object v4, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;->cy:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v4, :cond_1

    iget-object v3, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;->cy:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v3, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    .line 4167
    :cond_1
    iget-object v4, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;->r:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v4, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    sub-float v11, v2, v4

    sub-float v12, v3, v4

    add-float v13, v2, v4

    add-float v14, v3, v4

    .line 4174
    iget-object v5, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-nez v5, :cond_2

    .line 4175
    new-instance v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v4

    invoke-direct {v5, v11, v12, v6, v6}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v5, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    :cond_2
    const v1, 0x3f0d6289

    mul-float/2addr v1, v4

    .line 4180
    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 4181
    invoke-virtual {v15, v2, v12}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v16, v2, v1

    sub-float v17, v3, v1

    move-object v4, v15

    move/from16 v5, v16

    move v6, v12

    move v7, v13

    move/from16 v8, v17

    move v9, v13

    move v10, v3

    .line 4182
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v18, v3, v1

    move v5, v13

    move/from16 v6, v18

    move/from16 v7, v16

    move v8, v14

    move v9, v2

    move v10, v14

    .line 4183
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v1, v2, v1

    move v5, v1

    move v6, v14

    move v7, v11

    move/from16 v8, v18

    move v9, v11

    move v10, v3

    .line 4184
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v5, v11

    move/from16 v6, v17

    move v7, v1

    move v8, v12

    move v9, v2

    move v10, v12

    .line 4185
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 4186
    invoke-virtual {v15}, Landroid/graphics/Path;->close()V

    return-object v15
.end method

.method private makePathAndBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4193
    iget-object v2, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;->cx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;->cx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v2, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 4194
    :goto_0
    iget-object v4, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;->cy:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v4, :cond_1

    iget-object v3, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;->cy:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v3, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    .line 4195
    :cond_1
    iget-object v4, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;->rx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v4, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    .line 4196
    iget-object v5, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;->ry:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v5, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    sub-float v11, v2, v4

    sub-float v12, v3, v5

    add-float v13, v2, v4

    add-float v14, v3, v5

    .line 4203
    iget-object v6, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-nez v6, :cond_2

    .line 4204
    new-instance v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v8, v4, v7

    mul-float/2addr v7, v5

    invoke-direct {v6, v11, v12, v8, v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v6, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    :cond_2
    const v1, 0x3f0d6289

    mul-float v15, v4, v1

    mul-float/2addr v1, v5

    .line 4210
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    .line 4211
    invoke-virtual {v10, v2, v12}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v16, v2, v15

    sub-float v17, v3, v1

    move-object v4, v10

    move/from16 v5, v16

    move v6, v12

    move v7, v13

    move/from16 v8, v17

    move v9, v13

    move-object/from16 v18, v10

    move v10, v3

    .line 4212
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float/2addr v1, v3

    move-object/from16 v4, v18

    move v5, v13

    move v6, v1

    move/from16 v7, v16

    move v8, v14

    move v9, v2

    move v10, v14

    .line 4213
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v13, v2, v15

    move v5, v13

    move v6, v14

    move v7, v11

    move v8, v1

    move v9, v11

    move v10, v3

    .line 4214
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v5, v11

    move/from16 v6, v17

    move v7, v13

    move v8, v12

    move v9, v2

    move v10, v12

    .line 4215
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 4216
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->close()V

    return-object v18
.end method

.method private makePathAndBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;)Landroid/graphics/Path;
    .locals 9

    .line 4085
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;->x1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;->x1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    .line 4086
    :goto_0
    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;->y1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;->y1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    .line 4087
    :goto_1
    iget-object v3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;->x2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    iget-object v3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;->x2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    .line 4088
    :goto_2
    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;->y2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;->y2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    .line 4090
    :goto_3
    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-nez v4, :cond_4

    .line 4091
    new-instance v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float v7, v3, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sub-float v8, v1, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    .line 4094
    :cond_4
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 4095
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 4096
    invoke-virtual {p1, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    return-object p1
.end method

.method private makePathAndBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;
    .locals 5

    .line 4223
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4225
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;->points:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;->points:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x2

    .line 4226
    :goto_0
    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;->points:[F

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 4227
    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;->points:[F

    aget v2, v2, v1

    iget-object v3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;->points:[F

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 4229
    :cond_0
    instance-of v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Polygon;

    if-eqz v1, :cond_1

    .line 4230
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 4232
    :cond_1
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-nez v1, :cond_2

    .line 4233
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    :cond_2
    return-object v0
.end method

.method private makePathAndBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;)Landroid/graphics/Path;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4105
    iget-object v2, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->rx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->ry:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    .line 4108
    :cond_0
    iget-object v2, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->rx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-nez v2, :cond_1

    .line 4109
    iget-object v2, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->ry:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v2, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    :goto_0
    move v4, v2

    goto :goto_1

    .line 4110
    :cond_1
    iget-object v2, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->ry:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-nez v2, :cond_2

    .line 4111
    iget-object v2, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->rx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v2, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_0

    .line 4113
    :cond_2
    iget-object v2, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->rx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v2, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    .line 4114
    iget-object v4, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->ry:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v4, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    .line 4116
    :goto_1
    iget-object v5, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v5, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 4117
    iget-object v5, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v5, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 4118
    iget-object v5, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->x:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->x:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v5, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    goto :goto_2

    :cond_3
    move v5, v3

    .line 4119
    :goto_2
    iget-object v6, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->y:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v6, :cond_4

    iget-object v6, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->y:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v6, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    move v13, v6

    goto :goto_3

    :cond_4
    move v13, v3

    .line 4120
    :goto_3
    iget-object v6, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v6, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    .line 4121
    iget-object v7, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v7, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    .line 4123
    iget-object v8, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-nez v8, :cond_5

    .line 4124
    new-instance v8, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    invoke-direct {v8, v5, v13, v6, v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v8, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    :cond_5
    add-float v15, v5, v6

    add-float v1, v13, v7

    .line 4130
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    cmpl-float v6, v2, v3

    if-eqz v6, :cond_7

    cmpl-float v3, v4, v3

    if-nez v3, :cond_6

    goto/16 :goto_4

    :cond_6
    const v3, 0x3f0d6289

    mul-float v16, v2, v3

    mul-float/2addr v3, v4

    add-float v12, v13, v4

    .line 4148
    invoke-virtual {v14, v5, v12}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v17, v12, v3

    add-float v11, v5, v2

    sub-float v21, v11, v16

    move-object v6, v14

    move v7, v5

    move/from16 v8, v17

    move/from16 v9, v21

    move v10, v13

    move/from16 p1, v11

    move/from16 v22, v12

    move v12, v13

    .line 4149
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v2, v15, v2

    .line 4150
    invoke-virtual {v14, v2, v13}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v6, v2, v16

    move-object v7, v14

    move v8, v6

    move v9, v13

    move v10, v15

    move/from16 v11, v17

    move v12, v15

    move/from16 v13, v22

    .line 4151
    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v12, v1, v4

    .line 4152
    invoke-virtual {v14, v15, v12}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v10, v12, v3

    move-object v3, v14

    move/from16 v16, v10

    move/from16 v17, v6

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v1

    .line 4153
    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move/from16 v2, p1

    .line 4154
    invoke-virtual {v3, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    move-object v6, v3

    move/from16 v7, v21

    move v8, v1

    move v9, v5

    move v11, v5

    .line 4155
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 4156
    invoke-virtual {v3, v5, v13}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_5

    :cond_7
    :goto_4
    move-object v3, v14

    .line 4134
    invoke-virtual {v3, v5, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 4135
    invoke-virtual {v3, v15, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4136
    invoke-virtual {v3, v15, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4137
    invoke-virtual {v3, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4138
    invoke-virtual {v3, v5, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4158
    :goto_5
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    return-object v3
.end method

.method private makePathAndBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;)Landroid/graphics/Path;
    .locals 9

    .line 4242
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->x:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 4243
    :goto_1
    iget-object v3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->y:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v2

    .line 4244
    :goto_3
    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->dx:Ljava/util/List;

    if-eqz v4, :cond_5

    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_5

    :cond_5
    :goto_4
    move v4, v2

    .line 4245
    :goto_5
    iget-object v5, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->dy:Ljava/util/List;

    if-eqz v5, :cond_7

    iget-object v5, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_6

    goto :goto_6

    :cond_6
    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    .line 4248
    :cond_7
    :goto_6
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->textAnchor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    sget-object v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    if-eq v1, v5, :cond_9

    .line 4249
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;)F

    move-result v1

    .line 4250
    iget-object v5, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->textAnchor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    sget-object v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    if-ne v5, v6, :cond_8

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    :cond_8
    sub-float/2addr v0, v1

    .line 4257
    :cond_9
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-nez v1, :cond_a

    .line 4258
    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;

    invoke-direct {v1, p0, v0, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;FF)V

    .line 4259
    invoke-direct {p0, p1, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 4260
    new-instance v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget-object v6, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-direct {v5, v6, v7, v8, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v5, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    .line 4263
    :cond_a
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 4264
    new-instance v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextToPath;

    add-float/2addr v0, v4

    add-float/2addr v3, v2

    invoke-direct {v5, p0, v0, v3, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextToPath;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;FFLandroid/graphics/Path;)V

    invoke-direct {p0, p1, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    return-object v1
.end method

.method private makeRadialGradient(ZLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 3348
    iget-object v3, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->href:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3349
    iget-object v3, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->href:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    .line 3351
    :cond_0
    iget-object v3, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    .line 3352
    :goto_0
    iget-object v6, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    if-eqz p1, :cond_2

    iget-object v6, v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_2
    iget-object v6, v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    :goto_1
    if-eqz v3, :cond_6

    .line 3357
    new-instance v7, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    const/high16 v8, 0x42480000    # 50.0f

    sget-object v9, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->percent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    invoke-direct {v7, v8, v9}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;-><init>(FLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;)V

    .line 3358
    iget-object v8, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v8, :cond_3

    iget-object v8, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v8, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    goto :goto_2

    :cond_3
    invoke-virtual {v7, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    .line 3359
    :goto_2
    iget-object v9, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v9, :cond_4

    iget-object v9, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v9, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    goto :goto_3

    :cond_4
    invoke-virtual {v7, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    .line 3360
    :goto_3
    iget-object v10, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->r:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v10, :cond_5

    iget-object v7, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->r:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    :cond_5
    invoke-virtual {v7, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    move v14, v7

    move v12, v8

    move v13, v9

    goto :goto_7

    .line 3364
    :cond_6
    iget-object v7, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    if-eqz v7, :cond_7

    iget-object v7, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v7, v0, v8}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;F)F

    move-result v7

    goto :goto_4

    :cond_7
    move v7, v9

    .line 3365
    :goto_4
    iget-object v10, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v10, :cond_8

    iget-object v10, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v10, v0, v8}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;F)F

    move-result v10

    goto :goto_5

    :cond_8
    move v10, v9

    .line 3366
    :goto_5
    iget-object v11, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->r:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v11, :cond_9

    iget-object v9, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->r:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v9, v0, v8}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;F)F

    move-result v8

    goto :goto_6

    :cond_9
    move v8, v9

    :goto_6
    move v12, v7

    move v14, v8

    move v13, v10

    .line 3372
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3375
    invoke-direct {v0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v7

    iput-object v7, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3378
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    if-nez v3, :cond_a

    .line 3381
    iget v3, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    iget v8, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v7, v3, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3382
    iget v3, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    iget v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    invoke-virtual {v7, v3, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3384
    :cond_a
    iget-object v1, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->gradientTransform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_b

    .line 3386
    iget-object v1, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->gradientTransform:Landroid/graphics/Matrix;

    invoke-virtual {v7, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3390
    :cond_b
    iget-object v1, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 3393
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePop()V

    if-eqz p1, :cond_c

    .line 3395
    iget-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v5, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    goto :goto_8

    .line 3397
    :cond_c
    iget-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v5, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    :goto_8
    return-void

    .line 3401
    :cond_d
    new-array v15, v1, [I

    .line 3402
    new-array v3, v1, [F

    .line 3405
    iget-object v8, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->children:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/high16 v9, -0x40800000    # -1.0f

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    .line 3407
    check-cast v10, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Stop;

    .line 3408
    iget-object v4, v10, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    if-eqz v4, :cond_e

    iget-object v4, v10, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v11

    :cond_e
    if-eqz v5, :cond_10

    cmpl-float v4, v11, v9

    if-ltz v4, :cond_f

    goto :goto_a

    .line 3415
    :cond_f
    aput v9, v3, v5

    goto :goto_b

    .line 3410
    :cond_10
    :goto_a
    aput v11, v3, v5

    move v9, v11

    .line 3418
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3420
    iget-object v4, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, v4, v10}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)V

    .line 3421
    iget-object v4, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stopColor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    check-cast v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    if-nez v4, :cond_11

    .line 3423
    sget-object v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;->BLACK:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    .line 3424
    :cond_11
    iget v4, v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;->colour:I

    iget-object v10, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v10, v10, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v10, v10, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-static {v4, v10}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->colourWithOpacity(IF)I

    move-result v4

    aput v4, v15, v5

    add-int/lit8 v5, v5, 0x1

    .line 3427
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePop()V

    goto :goto_9

    :cond_12
    cmpl-float v4, v14, v11

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    if-ne v1, v4, :cond_13

    goto :goto_d

    .line 3438
    :cond_13
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 3439
    iget-object v4, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->spreadMethod:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    if-eqz v4, :cond_15

    .line 3441
    iget-object v4, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->spreadMethod:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    sget-object v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;->reflect:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    if-ne v4, v5, :cond_14

    .line 3442
    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_c

    .line 3443
    :cond_14
    iget-object v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;->spreadMethod:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    sget-object v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;->repeat:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    if-ne v2, v4, :cond_15

    .line 3444
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    :cond_15
    :goto_c
    move-object/from16 v17, v1

    .line 3447
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3450
    new-instance v1, Landroid/graphics/RadialGradient;

    move-object v11, v1

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v17}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 3451
    invoke-virtual {v1, v7}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 3452
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3453
    iget-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    .line 3432
    :cond_16
    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePop()V

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 3433
    aget v1, v15, v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private makeViewPort(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 591
    invoke-virtual {p1, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 592
    invoke-virtual {p2, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    .line 594
    :cond_1
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    move-result-object p2

    if-eqz p3, :cond_2

    .line 595
    invoke-virtual {p3, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result p3

    goto :goto_1

    :cond_2
    iget p3, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    :goto_1
    if-eqz p4, :cond_3

    .line 596
    invoke-virtual {p4, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result p2

    goto :goto_2

    :cond_3
    iget p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    .line 598
    :goto_2
    new-instance p4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    invoke-direct {p4, p1, v0, p3, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object p4
.end method

.method private objectToPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;Z)Landroid/graphics/Path;
    .locals 4

    .line 3682
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3683
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3685
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)V

    .line 3687
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3694
    :cond_0
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    if-nez p2, :cond_1

    const-string p2, "<use> elements inside a <clipPath> cannot reference another <use>"

    new-array v2, v0, [Ljava/lang/Object;

    .line 3697
    invoke-static {p2, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3701
    :cond_1
    move-object p2, p1

    check-cast p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;

    .line 3702
    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iget-object v3, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->href:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    move-result-object v2

    if-nez v2, :cond_2

    .line 3704
    iget-object p1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->href:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Use reference \'%s\' not found"

    invoke-static {p2, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3705
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    return-object v1

    .line 3708
    :cond_2
    instance-of v3, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;

    if-nez v3, :cond_3

    .line 3709
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    return-object v1

    .line 3713
    :cond_3
    check-cast v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v2, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->objectToPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;Z)Landroid/graphics/Path;

    move-result-object v0

    if-nez v0, :cond_4

    return-object v1

    .line 3717
    :cond_4
    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-nez v1, :cond_5

    .line 3718
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    .line 3721
    :cond_5
    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_13

    .line 3722
    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto/16 :goto_1

    .line 3724
    :cond_6
    instance-of p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;

    if-eqz p2, :cond_10

    .line 3726
    move-object p2, p1

    check-cast p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;

    .line 3728
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;

    if-eqz v0, :cond_7

    .line 3730
    move-object v0, p1

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;

    .line 3731
    new-instance v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;->d:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;

    invoke-direct {v2, p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 3732
    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-nez v2, :cond_c

    .line 3733
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    move-result-object v2

    iput-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    goto :goto_0

    .line 3735
    :cond_7
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;

    if-eqz v0, :cond_8

    .line 3736
    move-object v0, p1

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    .line 3737
    :cond_8
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;

    if-eqz v0, :cond_9

    .line 3738
    move-object v0, p1

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    .line 3739
    :cond_9
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;

    if-eqz v0, :cond_a

    .line 3740
    move-object v0, p1

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    .line 3741
    :cond_a
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;

    if-eqz v0, :cond_b

    .line 3742
    move-object v0, p1

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    :cond_b
    move-object v0, v1

    :cond_c
    :goto_0
    if-nez v0, :cond_d

    return-object v1

    .line 3747
    :cond_d
    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-nez v1, :cond_e

    .line 3748
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    .line 3751
    :cond_e
    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_f

    .line 3752
    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 3754
    :cond_f
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_1

    .line 3756
    :cond_10
    instance-of p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;

    if-eqz p2, :cond_15

    .line 3758
    move-object p2, p1

    check-cast p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;

    .line 3759
    invoke-direct {p0, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;)Landroid/graphics/Path;

    move-result-object v0

    if-nez v0, :cond_11

    return-object v1

    .line 3764
    :cond_11
    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_12

    .line 3765
    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 3767
    :cond_12
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3775
    :cond_13
    :goto_1
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    if-eqz p2, :cond_14

    .line 3777
    iget-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->calculateClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;)Landroid/graphics/Path;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 3779
    sget-object p2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 3783
    :cond_14
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    return-object v0

    .line 3770
    :cond_15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Invalid %s element found in clipPath definition"

    invoke-static {p2, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 3688
    :cond_16
    :goto_2
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    return-object v1
.end method

.method private parentPop()V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 378
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method private parentPush(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;)V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private popLayer(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V
    .locals 6

    .line 713
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 720
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 721
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 722
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    const/16 v3, 0x1f

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 725
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 727
    new-instance v1, Landroid/graphics/ColorMatrix;

    const/16 v4, 0x14

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-direct {v1, v4}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 731
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 732
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 735
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 736
    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;

    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->renderMask(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 738
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 741
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 742
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 743
    iget-object v4, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v2, v1, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 746
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->renderMask(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 748
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 750
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 753
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePop()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3e59ce07    # 0.2127f
        0x3f3710cb    # 0.7151f
        0x3d93dd98    # 0.0722f
        0x0
        0x0
    .end array-data
.end method

.method private processTextChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextProcessor;)V
    .locals 8

    .line 1486
    move-object v0, p1

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;

    invoke-virtual {p2, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextProcessor;->doTextContainer(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1489
    :cond_0
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;

    if-eqz v0, :cond_1

    .line 1492
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 1494
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->renderTextPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;)V

    .line 1497
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePop()V

    goto/16 :goto_9

    .line 1499
    :cond_1
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;

    if-eqz v0, :cond_f

    const-string v0, "TSpan render"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 1501
    invoke-static {v0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1504
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 1506
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;

    .line 1508
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)V

    .line 1510
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1514
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;->x:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1515
    :goto_0
    instance-of v2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    if-nez v0, :cond_3

    .line 1516
    move-object v4, p2

    check-cast v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    iget v4, v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    goto :goto_1

    :cond_3
    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;->x:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    .line 1517
    :goto_1
    iget-object v5, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;->y:Ljava/util/List;

    if-eqz v5, :cond_5

    iget-object v5, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;->y:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;->y:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v5, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    goto :goto_3

    :cond_5
    :goto_2
    move-object v5, p2

    check-cast v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    iget v5, v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->y:F

    .line 1518
    :goto_3
    iget-object v6, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;->dx:Ljava/util/List;

    if-eqz v6, :cond_7

    iget-object v6, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;->dx:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_6

    goto :goto_4

    :cond_6
    iget-object v6, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;->dx:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v6, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    goto :goto_5

    :cond_7
    :goto_4
    move v6, v3

    .line 1519
    :goto_5
    iget-object v7, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;->dy:Ljava/util/List;

    if-eqz v7, :cond_9

    iget-object v7, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;->dy:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_8

    goto :goto_6

    :cond_8
    iget-object v3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;->dy:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    move v3, v1

    :cond_9
    :goto_6
    move v1, v3

    move v3, v4

    goto :goto_7

    :cond_a
    move v1, v3

    move v5, v1

    move v6, v5

    :goto_7
    if-eqz v0, :cond_c

    .line 1524
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->getAnchorPosition()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    move-result-object v0

    .line 1525
    sget-object v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    if-eq v0, v4, :cond_c

    .line 1526
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;)F

    move-result v4

    .line 1527
    sget-object v7, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    if-ne v0, v7, :cond_b

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v4, v0

    :cond_b
    sub-float/2addr v3, v4

    .line 1535
    :cond_c
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;->getTextRoot()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    if-eqz v2, :cond_d

    .line 1538
    move-object v0, p2

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    add-float/2addr v3, v6

    iput v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    add-float/2addr v5, v1

    .line 1539
    iput v5, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->y:F

    .line 1542
    :cond_d
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 1544
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    if-eqz v0, :cond_e

    .line 1547
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1551
    :cond_e
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePop()V

    goto :goto_9

    .line 1553
    :cond_f
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TRef;

    if-eqz v0, :cond_12

    .line 1556
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 1558
    move-object v0, p1

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TRef;

    .line 1560
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)V

    .line 1562
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1564
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TRef;->getTextRoot()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1567
    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iget-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 1568
    instance-of v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;

    if-eqz v1, :cond_10

    .line 1570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1571
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;

    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->extractRawText(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V

    .line 1572
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_11

    .line 1573
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextProcessor;->processText(Ljava/lang/String;)V

    goto :goto_8

    .line 1578
    :cond_10
    iget-object p1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Tref reference \'%s\' not found"

    invoke-static {p2, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1583
    :cond_11
    :goto_8
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePop()V

    :cond_12
    :goto_9
    return-void
.end method

.method private pushLayer()Z
    .locals 4

    .line 682
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->requiresCompositing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v1

    const/16 v2, 0x1f

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 689
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    .line 692
    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 693
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 695
    instance-of v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;

    if-nez v0, :cond_2

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Mask reference \'%s\' not found"

    invoke-static {v2, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iput-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    :cond_2
    return v1
.end method

.method private realignMarkerMid(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;
    .locals 4

    .line 2986
    iget v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    iget v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    iget v2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    iget v3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float/2addr v2, v3

    iget v3, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    iget p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float/2addr v3, p1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->dotProduct(FFFF)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 2989
    iget p1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    iget v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    iget v2, p3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    iget v3, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float/2addr v2, v3

    iget p3, p3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    iget v3, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float/2addr p3, v3

    invoke-direct {p0, p1, v1, v2, p3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->dotProduct(FFFF)F

    move-result p1

    :cond_0
    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    return-object p2

    :cond_1
    if-nez p1, :cond_3

    .line 2996
    iget p1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_2

    iget p1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_3

    :cond_2
    return-object p2

    .line 3000
    :cond_3
    iget p1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    neg-float p1, p1

    iput p1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    .line 3001
    iget p1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    neg-float p1, p1

    iput p1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    return-object p2
.end method

.method private render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v1, Lcom/brakefield/infinitestudio/image/eps/Jpb/CfMJvi;->ryPLHIZLTumv:Ljava/lang/String;

    .line 1101
    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1103
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;->r:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;->r:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)V

    .line 1108
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1110
    :cond_1
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 1113
    :cond_2
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    .line 1114
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1116
    :cond_3
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;)Landroid/graphics/Path;

    move-result-object v0

    .line 1117
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1119
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1120
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1122
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1124
    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_4

    .line 1125
    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1126
    :cond_4
    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_5

    .line 1127
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    :cond_5
    if-eqz v1, :cond_6

    .line 1130
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ellipse render"

    .line 1139
    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1141
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;->rx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;->ry:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;->rx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;->ry:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)V

    .line 1146
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1148
    :cond_1
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 1151
    :cond_2
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    .line 1152
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1154
    :cond_3
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;

    move-result-object v0

    .line 1155
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1157
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1158
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1160
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1162
    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_4

    .line 1163
    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1164
    :cond_4
    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_5

    .line 1165
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    :cond_5
    if-eqz v1, :cond_6

    .line 1168
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Group;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Group render"

    .line 607
    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)V

    .line 611
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 614
    :cond_0
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 618
    :cond_1
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 620
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    const/4 v1, 0x1

    .line 622
    invoke-direct {p0, p1, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;Z)V

    if-eqz v0, :cond_2

    .line 625
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 627
    :cond_2
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    return-void
.end method

.method private render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;)V
    .locals 11

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Image render"

    .line 1846
    invoke-static {v2, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1848
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v1, :cond_d

    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isZero()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v1, :cond_d

    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 1849
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isZero()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 1852
    :cond_0
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->href:Ljava/lang/String;

    if-nez v1, :cond_1

    return-void

    .line 1856
    :cond_1
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->preserveAspectRatio:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->preserveAspectRatio:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    .line 1859
    :goto_0
    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->href:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForImageDataURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1862
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->getFileResolver()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGExternalFileResolver;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    .line 1866
    :cond_3
    iget-object v3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->href:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGExternalFileResolver;->resolveImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    .line 1869
    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->href:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Could not locate image \'%s\'"

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1872
    :cond_5
    new-instance v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 1874
    iget-object v4, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v4, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)V

    .line 1876
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v4

    if-nez v4, :cond_6

    return-void

    .line 1878
    :cond_6
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v4

    if-nez v4, :cond_7

    return-void

    .line 1881
    :cond_7
    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->transform:Landroid/graphics/Matrix;

    if-eqz v4, :cond_8

    .line 1882
    iget-object v4, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v5, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1885
    :cond_8
    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->x:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v4, :cond_9

    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->x:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_1

    :cond_9
    move v4, v6

    .line 1886
    :goto_1
    iget-object v5, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->y:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v5, :cond_a

    iget-object v5, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->y:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v5, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    goto :goto_2

    :cond_a
    move v5, v6

    .line 1887
    :goto_2
    iget-object v7, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v7, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    .line 1888
    iget-object v8, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v8, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    .line 1889
    iget-object v9, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v10, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    invoke-direct {v10, v4, v5, v7, v8}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v10, v9, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    .line 1891
    iget-object v4, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1892
    iget-object v4, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v4, v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    iget-object v5, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v5, v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    iget-object v7, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v7, v7, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    iget-object v8, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v8, v8, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    invoke-direct {p0, v4, v5, v7, v8}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 1895
    :cond_b
    iget-object v4, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iput-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    .line 1896
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1898
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1900
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v4

    .line 1902
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->viewportFill()V

    .line 1904
    iget-object v5, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 1907
    iget-object v5, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    invoke-direct {p0, v7, v3, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1909
    new-instance v1, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->imageRendering:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$RenderQuality;

    sget-object v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$RenderQuality;->optimizeSpeed:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$RenderQuality;

    if-ne v3, v5, :cond_c

    goto :goto_3

    :cond_c
    const/4 v0, 0x2

    :goto_3
    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 1910
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1912
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    if-eqz v4, :cond_d

    .line 1915
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    :cond_d
    :goto_4
    return-void
.end method

.method private render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Line render"

    .line 1177
    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1179
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)V

    .line 1181
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1183
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1185
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v0, :cond_2

    return-void

    .line 1188
    :cond_2
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    .line 1189
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1191
    :cond_3
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;)Landroid/graphics/Path;

    move-result-object v0

    .line 1192
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1194
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1195
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1197
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1199
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1201
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;)V

    if-eqz v1, :cond_4

    .line 1204
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    :cond_4
    return-void
.end method

.method private render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Path render"

    .line 1006
    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1008
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;->d:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;

    if-nez v0, :cond_0

    return-void

    .line 1011
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)V

    .line 1013
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1015
    :cond_1
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 1017
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v0, :cond_3

    return-void

    .line 1020
    :cond_3
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_4

    .line 1021
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1023
    :cond_4
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;->d:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;

    invoke-direct {v0, p0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 1025
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-nez v1, :cond_5

    .line 1026
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    .line 1028
    :cond_5
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1030
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1031
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1033
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1035
    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_6

    .line 1036
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->getFillTypeFromState()Landroid/graphics/Path$FillType;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1037
    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1039
    :cond_6
    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_7

    .line 1040
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1042
    :cond_7
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;)V

    if-eqz v1, :cond_8

    .line 1045
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    :cond_8
    return-void
.end method

.method private render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PolyLine render"

    .line 1228
    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1230
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)V

    .line 1232
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1234
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1236
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v0, :cond_2

    return-void

    .line 1239
    :cond_2
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    .line 1240
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1242
    :cond_3
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;->points:[F

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    return-void

    .line 1246
    :cond_4
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v0

    .line 1247
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1249
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->getFillTypeFromState()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1251
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1252
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1254
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1256
    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_5

    .line 1257
    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1258
    :cond_5
    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_6

    .line 1259
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1261
    :cond_6
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;)V

    if-eqz v1, :cond_7

    .line 1264
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    :cond_7
    return-void
.end method

.method private render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Polygon;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Polygon render"

    .line 1313
    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1315
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)V

    .line 1317
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1319
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1321
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v0, :cond_2

    return-void

    .line 1324
    :cond_2
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Polygon;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    .line 1325
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Polygon;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1327
    :cond_3
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Polygon;->points:[F

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    return-void

    .line 1331
    :cond_4
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v0

    .line 1332
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1334
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1335
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1337
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1339
    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_5

    .line 1340
    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1341
    :cond_5
    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_6

    .line 1342
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1344
    :cond_6
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;)V

    if-eqz v1, :cond_7

    .line 1347
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    :cond_7
    return-void
.end method

.method private render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Rect render"

    .line 1062
    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1064
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)V

    .line 1069
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1071
    :cond_1
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 1074
    :cond_2
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    .line 1075
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1077
    :cond_3
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;)Landroid/graphics/Path;

    move-result-object v0

    .line 1078
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1080
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1081
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1083
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1085
    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_4

    .line 1086
    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1087
    :cond_4
    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_5

    .line 1088
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    :cond_5
    if-eqz v1, :cond_6

    .line 1092
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;)V
    .locals 4

    .line 527
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->x:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->y:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    iget-object v3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->makeViewPort(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    move-result-object v0

    .line 529
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;)V

    return-void
.end method

.method private render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;)V
    .locals 2

    .line 536
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;)V

    return-void
.end method

.method private render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Svg render"

    .line 545
    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    iget v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    iget v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p4, :cond_2

    .line 552
    iget-object p4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    if-eqz p4, :cond_1

    iget-object p4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    goto :goto_0

    :cond_1
    sget-object p4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    .line 554
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)V

    .line 556
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 559
    :cond_3
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object p2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    .line 561
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_4

    .line 562
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 565
    :cond_4
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;)V

    if-eqz p3, :cond_5

    .line 568
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    invoke-direct {p0, v0, p3, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 569
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object p3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iput-object p3, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    goto :goto_1

    .line 571
    :cond_5
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object p3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object p3, p3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget p3, p3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    iget-object p4, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object p4, p4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget p4, p4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 574
    :goto_1
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result p2

    .line 577
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->viewportFill()V

    const/4 p3, 0x1

    .line 579
    invoke-direct {p0, p1, p3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;Z)V

    if-eqz p2, :cond_6

    .line 582
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 584
    :cond_6
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V
    .locals 1

    .line 282
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$NotDirectlyRendered;

    if-eqz v0, :cond_0

    return-void

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 288
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkXMLSpaceAttribute(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    .line 290
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    if-eqz v0, :cond_1

    .line 291
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;)V

    goto/16 :goto_0

    .line 292
    :cond_1
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;

    if-eqz v0, :cond_2

    .line 293
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;)V

    goto/16 :goto_0

    .line 294
    :cond_2
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Switch;

    if-eqz v0, :cond_3

    .line 295
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Switch;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Switch;)V

    goto/16 :goto_0

    .line 296
    :cond_3
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Group;

    if-eqz v0, :cond_4

    .line 297
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Group;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Group;)V

    goto :goto_0

    .line 298
    :cond_4
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;

    if-eqz v0, :cond_5

    .line 299
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;)V

    goto :goto_0

    .line 300
    :cond_5
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;

    if-eqz v0, :cond_6

    .line 301
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;)V

    goto :goto_0

    .line 302
    :cond_6
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;

    if-eqz v0, :cond_7

    .line 303
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;)V

    goto :goto_0

    .line 304
    :cond_7
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;

    if-eqz v0, :cond_8

    .line 305
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Circle;)V

    goto :goto_0

    .line 306
    :cond_8
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;

    if-eqz v0, :cond_9

    .line 307
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Ellipse;)V

    goto :goto_0

    .line 308
    :cond_9
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;

    if-eqz v0, :cond_a

    .line 309
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;)V

    goto :goto_0

    .line 310
    :cond_a
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Polygon;

    if-eqz v0, :cond_b

    .line 311
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Polygon;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Polygon;)V

    goto :goto_0

    .line 312
    :cond_b
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;

    if-eqz v0, :cond_c

    .line 313
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;)V

    goto :goto_0

    .line 314
    :cond_c
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;

    if-eqz v0, :cond_d

    .line 315
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;)V

    .line 319
    :cond_d
    :goto_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePop()V

    return-void
.end method

.method private render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Switch;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Switch render"

    .line 772
    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 774
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)V

    .line 776
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 779
    :cond_0
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Switch;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    .line 780
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Switch;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 783
    :cond_1
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 785
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 787
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->renderSwitchChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Switch;)V

    if-eqz v0, :cond_2

    .line 790
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 792
    :cond_2
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    return-void
.end method

.method private render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Symbol;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;)V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Symbol render"

    .line 1807
    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1809
    iget v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    iget v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_2

    .line 1813
    :cond_0
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Symbol;->preserveAspectRatio:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Symbol;->preserveAspectRatio:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    .line 1815
    :goto_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)V

    .line 1817
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object p2, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    .line 1819
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    .line 1820
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v3, v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    invoke-direct {p0, p2, v1, v2, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 1823
    :cond_2
    iget-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Symbol;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-eqz p2, :cond_3

    .line 1824
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Symbol;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    invoke-direct {p0, v1, v2, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1825
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Symbol;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iput-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    goto :goto_1

    .line 1827
    :cond_3
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1830
    :goto_1
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result p2

    const/4 v0, 0x1

    .line 1832
    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;Z)V

    if-eqz p2, :cond_4

    .line 1835
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1837
    :cond_4
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;)V
    .locals 9

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v2, Lorg/ejml/sparse/csc/factory/IRj/pUMrurWM;->CIaKuxtQw:Ljava/lang/String;

    .line 1356
    invoke-static {v2, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1358
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)V

    .line 1360
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1363
    :cond_0
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_1

    .line 1364
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1367
    :cond_1
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->x:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    .line 1368
    :goto_1
    iget-object v3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->y:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v2

    .line 1369
    :goto_3
    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->dx:Ljava/util/List;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_5

    :cond_7
    :goto_4
    move v4, v2

    .line 1370
    :goto_5
    iget-object v5, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->dy:Ljava/util/List;

    if-eqz v5, :cond_9

    iget-object v5, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_8

    goto :goto_6

    :cond_8
    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    .line 1373
    :cond_9
    :goto_6
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->getAnchorPosition()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    move-result-object v0

    .line 1374
    sget-object v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    if-eq v0, v5, :cond_b

    .line 1375
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;)F

    move-result v5

    .line 1376
    sget-object v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    if-ne v0, v6, :cond_a

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v5, v0

    :cond_a
    sub-float/2addr v1, v5

    .line 1383
    :cond_b
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-nez v0, :cond_c

    .line 1384
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;

    invoke-direct {v0, p0, v1, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;FF)V

    .line 1385
    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1386
    new-instance v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget-object v6, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v5, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    .line 1388
    :cond_c
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1390
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1391
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1393
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 1395
    new-instance v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    add-float/2addr v1, v4

    add-float/2addr v3, v2

    invoke-direct {v5, p0, v1, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PlainTextDrawer;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;FF)V

    invoke-direct {p0, p1, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    if-eqz v0, :cond_d

    .line 1398
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    :cond_d
    return-void
.end method

.method private render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;)V
    .locals 7

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Use render"

    .line 935
    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 937
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 938
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 941
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)V

    .line 943
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 947
    :cond_3
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    move-result-object v0

    if-nez v0, :cond_4

    .line 949
    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->href:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Use reference \'%s\' not found"

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 953
    :cond_4
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_5

    .line 954
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 958
    :cond_5
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->x:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->x:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    goto :goto_0

    :cond_6
    move v1, v2

    .line 959
    :goto_0
    iget-object v3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->y:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v3, :cond_7

    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->y:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    .line 960
    :cond_7
    iget-object v3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 962
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 964
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 966
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->parentPush(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;)V

    .line 968
    instance-of v2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 970
    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    .line 971
    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-direct {p0, v3, v3, v2, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->makeViewPort(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    move-result-object v2

    .line 973
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 974
    invoke-direct {p0, v0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;)V

    .line 975
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePop()V

    goto :goto_3

    .line 977
    :cond_8
    instance-of v2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Symbol;

    if-eqz v2, :cond_b

    .line 979
    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    const/high16 v4, 0x42c80000    # 100.0f

    if-eqz v2, :cond_9

    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    goto :goto_1

    :cond_9
    new-instance v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    sget-object v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->percent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    invoke-direct {v2, v4, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;-><init>(FLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;)V

    .line 980
    :goto_1
    iget-object v5, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v5, :cond_a

    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Use;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    goto :goto_2

    :cond_a
    new-instance v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    sget-object v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->percent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    invoke-direct {v5, v4, v6}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;-><init>(FLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;)V

    move-object v4, v5

    .line 981
    :goto_2
    invoke-direct {p0, v3, v3, v2, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->makeViewPort(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    move-result-object v2

    .line 983
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 984
    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Symbol;

    invoke-direct {p0, v0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Symbol;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;)V

    .line 985
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePop()V

    goto :goto_3

    .line 989
    :cond_b
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    .line 992
    :goto_3
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->parentPop()V

    if-eqz v1, :cond_c

    .line 995
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 997
    :cond_c
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    return-void
.end method

.method private renderChildren(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 329
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->parentPush(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;)V

    .line 332
    :cond_0
    invoke-interface {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    .line 333
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 337
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->parentPop()V

    :cond_2
    return-void
.end method

.method private renderMarker(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;)V
    .locals 10

    .line 3023
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3026
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3028
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3030
    iget v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 3031
    :cond_0
    iget v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    float-to-double v2, v0

    iget v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    goto :goto_0

    .line 3034
    :cond_1
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3038
    :goto_0
    iget-boolean v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeWidth:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    iget v3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->dpi:F

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(F)F

    move-result v2

    .line 3042
    :goto_1
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v3

    iput-object v3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3044
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 3045
    iget v4, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    iget p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    invoke-virtual {v3, v4, p2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3046
    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 3047
    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3049
    iget-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->refX:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz p2, :cond_4

    iget-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->refX:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {p2, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result p2

    goto :goto_2

    :cond_4
    move p2, v1

    .line 3050
    :goto_2
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->refY:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->refY:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    goto :goto_3

    :cond_5
    move v0, v1

    .line 3051
    :goto_3
    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->markerWidth:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    const/high16 v4, 0x40400000    # 3.0f

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->markerWidth:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_4

    :cond_6
    move v2, v4

    .line 3052
    :goto_4
    iget-object v5, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->markerHeight:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v5, :cond_7

    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->markerHeight:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    .line 3054
    :cond_7
    iget-object v5, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-eqz v5, :cond_e

    .line 3061
    iget-object v5, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v5, v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    div-float v5, v2, v5

    .line 3062
    iget-object v6, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v6, v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    div-float v6, v4, v6

    .line 3065
    iget-object v7, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->preserveAspectRatio:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    if-eqz v7, :cond_8

    iget-object v7, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->preserveAspectRatio:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    goto :goto_5

    :cond_8
    sget-object v7, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    .line 3066
    :goto_5
    sget-object v8, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->STRETCH:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    invoke-virtual {v7, v8}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 3068
    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->getScale()Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    move-result-object v8

    sget-object v9, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    if-ne v8, v9, :cond_9

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_6

    :cond_9
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    :goto_6
    move v6, v5

    :cond_a
    neg-float p2, p2

    mul-float/2addr p2, v5

    neg-float v0, v0

    mul-float/2addr v0, v6

    .line 3073
    invoke-virtual {v3, p2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3074
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3078
    iget-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    mul-float/2addr p2, v5

    .line 3079
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    mul-float/2addr v0, v6

    .line 3082
    sget-object v8, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$PreserveAspectRatio$Alignment:[I

    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    packed-switch v8, :pswitch_data_0

    move p2, v1

    goto :goto_8

    :pswitch_0
    sub-float p2, v2, p2

    goto :goto_7

    :pswitch_1
    sub-float p2, v2, p2

    div-float/2addr p2, v9

    :goto_7
    sub-float p2, v1, p2

    .line 3099
    :goto_8
    sget-object v8, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$PreserveAspectRatio$Alignment:[I

    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v7

    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v7

    aget v7, v8, v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_c

    const/4 v8, 0x3

    if-eq v7, v8, :cond_b

    const/4 v8, 0x5

    if-eq v7, v8, :cond_c

    const/4 v8, 0x6

    if-eq v7, v8, :cond_b

    const/4 v8, 0x7

    if-eq v7, v8, :cond_c

    const/16 v8, 0x8

    if-eq v7, v8, :cond_b

    goto :goto_a

    :cond_b
    sub-float v0, v4, v0

    goto :goto_9

    :cond_c
    sub-float v0, v4, v0

    div-float/2addr v0, v9

    :goto_9
    sub-float/2addr v1, v0

    .line 3116
    :goto_a
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3117
    invoke-direct {p0, p2, v1, v2, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 3120
    :cond_d
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 3121
    invoke-virtual {v3, v5, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3122
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_b

    :cond_e
    neg-float p2, p2

    neg-float v0, v0

    .line 3128
    invoke-virtual {v3, p2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3129
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3131
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_f

    .line 3132
    invoke-direct {p0, v1, v1, v2, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 3136
    :cond_f
    :goto_b
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result p2

    const/4 v0, 0x0

    .line 3138
    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;Z)V

    if-eqz p2, :cond_10

    .line 3141
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 3143
    :cond_10
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePop()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private renderMarkers(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;)V
    .locals 9

    .line 2906
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2913
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    const-string v1, "Marker reference \'%s\' not found"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2914
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2916
    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;

    goto :goto_0

    .line 2918
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move-object v0, v2

    .line 2921
    :goto_0
    iget-object v3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 2922
    iget-object v3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iget-object v4, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2924
    check-cast v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;

    goto :goto_1

    .line 2926
    :cond_3
    iget-object v3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move-object v3, v2

    .line 2929
    :goto_1
    iget-object v4, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 2930
    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iget-object v5, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 2932
    check-cast v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;

    goto :goto_2

    .line 2934
    :cond_5
    iget-object v4, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    move-object v4, v2

    .line 2938
    :goto_2
    instance-of v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;

    if-eqz v1, :cond_7

    .line 2939
    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;

    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;->d:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->getMarkers()Ljava/util/List;

    move-result-object p1

    goto :goto_3

    .line 2940
    :cond_7
    instance-of v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;

    if-eqz v1, :cond_8

    .line 2941
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->calculateMarkerPositions(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Line;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    .line 2943
    :cond_8
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->calculateMarkerPositions(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;)Ljava/util/List;

    move-result-object p1

    :goto_3
    if-nez p1, :cond_9

    return-void

    .line 2948
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    return-void

    .line 2953
    :cond_a
    iget-object v5, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v6, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v7, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iput-object v2, v7, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    iput-object v2, v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    iput-object v2, v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 2956
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-direct {p0, v0, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    :cond_b
    const/4 v0, 0x1

    if-eqz v3, :cond_d

    .line 2958
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_d

    .line 2960
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 2961
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    move v6, v0

    :goto_4
    add-int/lit8 v7, v1, -0x1

    if-ge v6, v7, :cond_d

    add-int/lit8 v6, v6, 0x1

    .line 2965
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 2966
    iget-boolean v8, v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->isAmbiguous:Z

    if-eqz v8, :cond_c

    .line 2967
    invoke-direct {p0, v2, v5, v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->realignMarkerMid(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    move-result-object v2

    goto :goto_5

    :cond_c
    move-object v2, v5

    .line 2968
    :goto_5
    invoke-direct {p0, v3, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    move-object v5, v7

    goto :goto_4

    :cond_d
    if-eqz v4, :cond_e

    sub-int/2addr v1, v0

    .line 2975
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-direct {p0, v4, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    :cond_e
    return-void
.end method

.method private renderMask(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Mask render"

    .line 4476
    invoke-static {v2, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4478
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    .line 4483
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    .line 4484
    :goto_1
    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_3

    :cond_2
    iget-object v4, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v4, v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    goto :goto_3

    .line 4493
    :cond_3
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    const v4, 0x3f99999a    # 1.2f

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v1, p0, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;F)F

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v4

    .line 4494
    :goto_2
    iget-object v5, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v5, :cond_5

    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v4, p0, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;F)F

    move-result v4

    .line 4497
    :cond_5
    iget-object v5, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v5, v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    mul-float/2addr v1, v5

    .line 4498
    iget-object v5, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v5, v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    mul-float/2addr v4, v5

    :goto_3
    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_a

    cmpl-float v1, v4, v5

    if-nez v1, :cond_6

    goto :goto_5

    .line 4504
    :cond_6
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 4506
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v1

    iput-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    .line 4510
    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 4513
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    move v2, v0

    :cond_8
    :goto_4
    if-nez v2, :cond_9

    .line 4515
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    iget-object v3, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v3, v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4516
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4520
    :cond_9
    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;Z)V

    .line 4523
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePop()V

    :cond_a
    :goto_5
    return-void
.end method

.method private renderSwitchChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Switch;)V
    .locals 7

    .line 798
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 799
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->getFileResolver()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGExternalFileResolver;

    move-result-object v1

    .line 802
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Switch;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    .line 805
    instance-of v3, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;

    if-nez v3, :cond_1

    goto :goto_0

    .line 808
    :cond_1
    move-object v3, v2

    check-cast v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;

    .line 811
    invoke-interface {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;->getRequiredExtensions()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 815
    :cond_2
    invoke-interface {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;->getSystemLanguage()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 816
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 820
    :cond_3
    invoke-interface {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;->getRequiredFeatures()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 822
    sget-object v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    if-nez v5, :cond_4

    .line 823
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->initialiseSupportedFeaturesMap()V

    .line 824
    :cond_4
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    .line 829
    :cond_5
    invoke-interface {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;->getRequiredFormats()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 831
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v1, :cond_6

    goto :goto_0

    .line 833
    :cond_6
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 834
    invoke-virtual {v1, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGExternalFileResolver;->isFormatSupported(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_0

    .line 839
    :cond_8
    invoke-interface {v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;->getRequiredFonts()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 841
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v1, :cond_9

    goto :goto_0

    .line 843
    :cond_9
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 844
    iget-object v5, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGExternalFileResolver;->resolveFont(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    if-nez v4, :cond_a

    goto/16 :goto_0

    .line 850
    :cond_b
    invoke-direct {p0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    :cond_c
    return-void
.end method

.method private renderTextPath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;)V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "TextPath render"

    .line 1593
    invoke-static {v2, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1595
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)V

    .line 1597
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1599
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 1602
    :cond_1
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1605
    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "TextPath reference \'%s\' not found"

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1609
    :cond_2
    check-cast v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;

    .line 1610
    new-instance v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v3, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;->d:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;

    invoke-direct {v2, p0, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v2

    .line 1612
    iget-object v3, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-eqz v3, :cond_3

    .line 1613
    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1615
    :cond_3
    new-instance v1, Landroid/graphics/PathMeasure;

    invoke-direct {v1, v2, v0}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 1617
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;->startOffset:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;->startOffset:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;F)F

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v3

    .line 1620
    :goto_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->getAnchorPosition()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    move-result-object v1

    .line 1621
    sget-object v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    if-eq v1, v4, :cond_6

    .line 1622
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;)F

    move-result v4

    .line 1623
    sget-object v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    if-ne v1, v5, :cond_5

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v4, v1

    :cond_5
    sub-float/2addr v0, v4

    .line 1630
    :cond_6
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPath;->getTextRoot()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    .line 1632
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1634
    new-instance v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PathTextDrawer;

    invoke-direct {v4, p0, v2, v0, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$PathTextDrawer;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;Landroid/graphics/Path;FF)V

    invoke-direct {p0, p1, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    if-eqz v1, :cond_7

    .line 1637
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V

    :cond_7
    return-void
.end method

.method private requiresCompositing()Z
    .locals 2

    .line 759
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private resetState()V
    .locals 3

    .line 171
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    .line 172
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    .line 175
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->getDefaultStyle()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;)V

    .line 177
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    .line 179
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    .line 182
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v1, p0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    .line 187
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    return-void
.end method

.method private setClipRect(FFFF)V
    .locals 1

    add-float/2addr p3, p1

    add-float/2addr p4, p2

    .line 2431
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clip:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CSSClipRect;

    if-eqz v0, :cond_0

    .line 2432
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clip:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CSSClipRect;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CSSClipRect;->left:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    add-float/2addr p1, v0

    .line 2433
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clip:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CSSClipRect;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CSSClipRect;->top:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    add-float/2addr p2, v0

    .line 2434
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clip:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CSSClipRect;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CSSClipRect;->right:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    sub-float/2addr p3, v0

    .line 2435
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clip:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CSSClipRect;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CSSClipRect;->bottom:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    sub-float/2addr p4, v0

    .line 2438
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    return-void
.end method

.method private setPaintColour(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;)V
    .locals 2

    .line 2356
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    if-eqz p2, :cond_0

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2358
    instance-of v1, p3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    if-eqz v1, :cond_1

    .line 2359
    check-cast p3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    iget p3, p3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;->colour:I

    goto :goto_1

    .line 2360
    :cond_1
    instance-of p3, p3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CurrentColor;

    if-eqz p3, :cond_3

    .line 2361
    iget-object p3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object p3, p3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->color:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    iget p3, p3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;->colour:I

    .line 2365
    :goto_1
    invoke-static {p3, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->colourWithOpacity(IF)I

    move-result p3

    if-eqz p2, :cond_2

    .line 2367
    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 2369
    :cond_2
    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method private setSolidColor(ZLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SolidColor;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v2, 0x180000000L

    const-wide v4, 0x100000000L

    const-wide v6, 0x80000000L

    if-eqz p1, :cond_3

    .line 3538
    iget-object v8, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SolidColor;->baseStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    invoke-direct {p0, v8, v6, v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3540
    iget-object v6, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v7, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SolidColor;->baseStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->solidColor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    iput-object v7, v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fill:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    .line 3541
    iget-object v6, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SolidColor;->baseStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->solidColor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 3544
    :cond_1
    iget-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SolidColor;->baseStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    invoke-direct {p0, v0, v4, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3546
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SolidColor;->baseStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 3550
    :cond_2
    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SolidColor;->baseStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    invoke-direct {p0, p2, v2, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 3553
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fill:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, p2, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;)V

    goto :goto_2

    .line 3558
    :cond_3
    iget-object v8, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SolidColor;->baseStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    invoke-direct {p0, v8, v6, v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3560
    iget-object v6, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v7, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SolidColor;->baseStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->solidColor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    iput-object v7, v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stroke:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    .line 3561
    iget-object v6, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SolidColor;->baseStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->solidColor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    iput-boolean v0, v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 3564
    :cond_5
    iget-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SolidColor;->baseStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    invoke-direct {p0, v0, v4, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3566
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SolidColor;->baseStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 3570
    :cond_6
    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SolidColor;->baseStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    invoke-direct {p0, p2, v2, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 3573
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stroke:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, p2, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private statePop()V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 360
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    return-void
.end method

.method private statePush()V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 350
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    return-void
.end method

.method private textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 3

    .line 1787
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    const-string v1, " "

    if-eqz v0, :cond_0

    const-string p2, "[\\n\\t]"

    .line 1788
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "\\n"

    const-string v2, ""

    .line 1791
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\t"

    .line 1792
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    const-string p2, "^\\s+"

    .line 1795
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-eqz p3, :cond_2

    const-string p2, "\\s+$"

    .line 1797
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string p2, "\\s{2,}"

    .line 1798
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updateParentBoundingBox(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;)V
    .locals 7

    .line 643
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_0

    return-void

    .line 645
    :cond_0
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-nez v0, :cond_1

    return-void

    .line 649
    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 651
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    new-array v1, v1, [F

    .line 652
    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    const/4 v4, 0x1

    aput v2, v1, v4

    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    .line 653
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->maxX()F

    move-result v2

    const/4 v5, 0x2

    aput v2, v1, v5

    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    const/4 v6, 0x3

    aput v2, v1, v6

    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    .line 654
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->maxX()F

    move-result v2

    const/4 v6, 0x4

    aput v2, v1, v6

    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->maxY()F

    move-result v2

    const/4 v6, 0x5

    aput v2, v1, v6

    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    const/4 v6, 0x6

    aput v2, v1, v6

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    .line 655
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->maxY()F

    move-result p1

    const/4 v2, 0x7

    aput p1, v1, v2

    .line 657
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 658
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 660
    new-instance p1, Landroid/graphics/RectF;

    aget v0, v1, v3

    aget v2, v1, v4

    invoke-direct {p1, v0, v2, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    if-gt v5, v6, :cond_6

    .line 662
    aget v0, v1, v5

    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    aget v0, v1, v5

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 663
    :cond_2
    aget v0, v1, v5

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    aget v0, v1, v5

    iput v0, p1, Landroid/graphics/RectF;->right:F

    :cond_3
    add-int/lit8 v0, v5, 0x1

    .line 664
    aget v2, v1, v0

    iget v3, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    aget v2, v1, v0

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 665
    :cond_4
    aget v2, v1, v0

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    aget v0, v1, v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_5
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 668
    :cond_6
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;

    .line 669
    iget-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-nez v1, :cond_7

    .line 670
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v2, v3, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->fromLimits(FFFF)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    move-result-object p1

    iput-object p1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    goto :goto_1

    .line 672
    :cond_7
    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v2, v3, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->fromLimits(FFFF)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->union(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;)V

    :cond_8
    :goto_1
    return-void
.end method

.method private updateStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;)V
    .locals 11

    const-wide/16 v0, 0x1000

    .line 2053
    invoke-direct {p0, p2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2055
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->color:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->color:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    :cond_0
    const-wide/16 v0, 0x800

    .line 2058
    invoke-direct {p0, p2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2060
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    :cond_1
    const-wide/16 v0, 0x1

    .line 2063
    invoke-direct {p0, p2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 2065
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fill:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    iput-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fill:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    .line 2066
    iget-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fill:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fill:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    sget-object v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;->TRANSPARENT:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    if-eq v0, v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iput-boolean v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    :cond_3
    const-wide/16 v3, 0x4

    .line 2069
    invoke-direct {p0, p2, v3, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2071
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    iput-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    :cond_4
    const-wide/16 v3, 0x1805

    .line 2075
    invoke-direct {p0, p2, v3, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2077
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fill:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, p1, v2, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;)V

    :cond_5
    const-wide/16 v3, 0x2

    .line 2080
    invoke-direct {p0, p2, v3, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2082
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fillRule:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    iput-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fillRule:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    :cond_6
    const-wide/16 v3, 0x8

    .line 2086
    invoke-direct {p0, p2, v3, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2088
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stroke:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    iput-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stroke:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    .line 2089
    iget-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stroke:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stroke:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    sget-object v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;->TRANSPARENT:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    if-eq v0, v3, :cond_7

    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v1

    :goto_1
    iput-boolean v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    :cond_8
    const-wide/16 v3, 0x10

    .line 2092
    invoke-direct {p0, p2, v3, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2094
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    iput-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    :cond_9
    const-wide/16 v3, 0x1818

    .line 2097
    invoke-direct {p0, p2, v3, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2099
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stroke:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, p1, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;)V

    :cond_a
    const-wide v3, 0x800000000L

    .line 2102
    invoke-direct {p0, p2, v3, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2104
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->vectorEffect:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

    iput-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->vectorEffect:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

    :cond_b
    const-wide/16 v3, 0x20

    .line 2107
    invoke-direct {p0, p2, v3, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2109
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeWidth:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    iput-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeWidth:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 2110
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeWidth:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_c
    const-wide/16 v3, 0x40

    .line 2113
    invoke-direct {p0, p2, v3, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_10

    .line 2115
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v5, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeLineCap:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    iput-object v5, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeLineCap:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    .line 2116
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVG$Style$LineCap:[I

    iget-object v5, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeLineCap:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v2, :cond_f

    if-eq v0, v4, :cond_e

    if-eq v0, v3, :cond_d

    goto :goto_2

    .line 2125
    :cond_d
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_2

    .line 2122
    :cond_e
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_2

    .line 2119
    :cond_f
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_10
    :goto_2
    const-wide/16 v5, 0x80

    .line 2132
    invoke-direct {p0, p2, v5, v6}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2134
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v5, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeLineJoin:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    iput-object v5, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeLineJoin:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    .line 2135
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVG$Style$LineJoin:[I

    iget-object v5, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeLineJoin:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v2, :cond_13

    if-eq v0, v4, :cond_12

    if-eq v0, v3, :cond_11

    goto :goto_3

    .line 2144
    :cond_11
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_3

    .line 2141
    :cond_12
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_3

    .line 2138
    :cond_13
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    :cond_14
    :goto_3
    const-wide/16 v3, 0x100

    .line 2151
    invoke-direct {p0, p2, v3, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2153
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    iput-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    .line 2154
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    :cond_15
    const-wide/16 v3, 0x200

    .line 2157
    invoke-direct {p0, p2, v3, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2159
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeDashArray:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    iput-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeDashArray:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    :cond_16
    const-wide/16 v3, 0x400

    .line 2162
    invoke-direct {p0, p2, v3, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2164
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeDashOffset:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    iput-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeDashOffset:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    :cond_17
    const-wide/16 v3, 0x600

    .line 2167
    invoke-direct {p0, p2, v3, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1d

    .line 2170
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeDashArray:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-nez v0, :cond_18

    .line 2172
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_6

    .line 2177
    :cond_18
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeDashArray:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    array-length v0, v0

    .line 2180
    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_19

    move v4, v0

    goto :goto_4

    :cond_19
    mul-int/lit8 v4, v0, 0x2

    .line 2181
    :goto_4
    new-array v5, v4, [F

    const/4 v6, 0x0

    move v7, v1

    move v8, v6

    :goto_5
    if-ge v7, v4, :cond_1a

    .line 2183
    iget-object v9, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v9, v9, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeDashArray:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    rem-int v10, v7, v0

    aget-object v9, v9, v10

    invoke-virtual {v9, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    aput v9, v5, v7

    add-float/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_1a
    cmpl-float v0, v8, v6

    if-nez v0, :cond_1b

    .line 2187
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_6

    .line 2189
    :cond_1b
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeDashOffset:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    cmpg-float v4, v0, v6

    if-gez v4, :cond_1c

    rem-float/2addr v0, v8

    add-float/2addr v0, v8

    .line 2195
    :cond_1c
    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/DashPathEffect;

    invoke-direct {v6, v5, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_1d
    :goto_6
    const-wide/16 v4, 0x4000

    .line 2200
    invoke-direct {p0, p2, v4, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2202
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->getCurrentFontSize()F

    move-result v0

    .line 2203
    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v5, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontSize:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    iput-object v5, v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontSize:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 2204
    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    iget-object v5, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontSize:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v5, p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2205
    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v5, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontSize:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-virtual {v5, p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;F)F

    move-result v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_1e
    const-wide/16 v4, 0x2000

    .line 2208
    invoke-direct {p0, p2, v4, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2210
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v4, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    iput-object v4, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    :cond_1f
    const-wide/32 v4, 0x8000

    .line 2213
    invoke-direct {p0, p2, v4, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2216
    iget-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, -0x1

    const/16 v5, 0x64

    if-ne v0, v4, :cond_20

    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v5, :cond_20

    .line 2217
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v4, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    goto :goto_7

    .line 2218
    :cond_20
    iget-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_21

    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x384

    if-ge v0, v4, :cond_21

    .line 2219
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v4, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    goto :goto_7

    .line 2221
    :cond_21
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v4, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    iput-object v4, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    :cond_22
    :goto_7
    const-wide/32 v4, 0x10000

    .line 2224
    invoke-direct {p0, p2, v4, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2226
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v4, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;

    iput-object v4, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;

    :cond_23
    const-wide/32 v4, 0x1a000

    .line 2230
    invoke-direct {p0, p2, v4, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2234
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    if-eqz v0, :cond_26

    .line 2235
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->getFileResolver()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGExternalFileResolver;

    move-result-object v0

    .line 2237
    iget-object v4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2238
    iget-object v5, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    iget-object v6, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;

    invoke-direct {p0, v3, v5, v6}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;

    move-result-object v5

    if-nez v5, :cond_25

    if-eqz v0, :cond_25

    .line 2240
    iget-object v5, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v5, v6}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGExternalFileResolver;->resolveFont(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_8

    :cond_25
    move-object v3, v5

    :goto_8
    if-eqz v3, :cond_24

    :cond_26
    if-nez v3, :cond_27

    .line 2248
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;

    const-string/jumbo v4, "serif"

    invoke-direct {p0, v4, v0, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 2250
    :cond_27
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2251
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_28
    const-wide/32 v3, 0x20000

    .line 2254
    invoke-direct {p0, p2, v3, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2256
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->textDecoration:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    iput-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->textDecoration:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    .line 2257
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->textDecoration:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    if-ne v3, v4, :cond_29

    move v3, v2

    goto :goto_9

    :cond_29
    move v3, v1

    :goto_9
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 2258
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->textDecoration:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    if-ne v3, v4, :cond_2a

    move v3, v2

    goto :goto_a

    :cond_2a
    move v3, v1

    :goto_a
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 2262
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->textDecoration:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    if-ne v3, v4, :cond_2b

    move v3, v2

    goto :goto_b

    :cond_2b
    move v3, v1

    :goto_b
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 2263
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->textDecoration:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    if-ne v3, v4, :cond_2c

    move v1, v2

    :cond_2c
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    :cond_2d
    const-wide v0, 0x1000000000L

    .line 2267
    invoke-direct {p0, p2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2269
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->direction:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDirection;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->direction:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDirection;

    :cond_2e
    const-wide/32 v0, 0x40000

    .line 2272
    invoke-direct {p0, p2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2274
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->textAnchor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->textAnchor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    :cond_2f
    const-wide/32 v0, 0x80000

    .line 2277
    invoke-direct {p0, p2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2279
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    :cond_30
    const-wide/32 v0, 0x200000

    .line 2282
    invoke-direct {p0, p2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2284
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    :cond_31
    const-wide/32 v0, 0x400000

    .line 2287
    invoke-direct {p0, p2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2289
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    :cond_32
    const-wide/32 v0, 0x800000

    .line 2292
    invoke-direct {p0, p2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2294
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    :cond_33
    const-wide/32 v0, 0x1000000

    .line 2297
    invoke-direct {p0, p2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2299
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    :cond_34
    const-wide/32 v0, 0x2000000

    .line 2302
    invoke-direct {p0, p2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2304
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    :cond_35
    const-wide/32 v0, 0x100000

    .line 2307
    invoke-direct {p0, p2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2309
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clip:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CSSClipRect;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clip:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CSSClipRect;

    :cond_36
    const-wide/32 v0, 0x10000000

    .line 2312
    invoke-direct {p0, p2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2314
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    :cond_37
    const-wide/32 v0, 0x20000000

    .line 2317
    invoke-direct {p0, p2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2319
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clipRule:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clipRule:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    :cond_38
    const-wide/32 v0, 0x40000000

    .line 2322
    invoke-direct {p0, p2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2324
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    :cond_39
    const-wide/32 v0, 0x4000000

    .line 2327
    invoke-direct {p0, p2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2329
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stopColor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stopColor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    :cond_3a
    const-wide/32 v0, 0x8000000

    .line 2332
    invoke-direct {p0, p2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2334
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    :cond_3b
    const-wide v0, 0x200000000L

    .line 2337
    invoke-direct {p0, p2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2339
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->viewportFill:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->viewportFill:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    :cond_3c
    const-wide v0, 0x400000000L

    .line 2342
    invoke-direct {p0, p2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2344
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    :cond_3d
    const-wide v0, 0x2000000000L

    .line 2347
    invoke-direct {p0, p2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2349
    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->imageRendering:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$RenderQuality;

    iput-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->imageRendering:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$RenderQuality;

    :cond_3e
    return-void
.end method

.method private updateStyleForElement(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)V
    .locals 3

    .line 387
    iget-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 388
    :goto_0
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->resetNonInheritingProperties(Z)V

    .line 391
    iget-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;)V

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->hasCSSRules()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 397
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->getCSSRules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Rule;

    .line 399
    iget-object v2, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Rule;->selector:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;

    invoke-static {v2, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->ruleMatch(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 400
    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Rule;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    invoke-direct {p0, p1, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;)V

    goto :goto_1

    .line 406
    :cond_3
    iget-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    if-eqz v0, :cond_4

    .line 407
    iget-object p2, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;)V

    :cond_4
    return-void
.end method

.method private viewportFill()V
    .locals 2

    .line 2448
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->viewportFill:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    if-eqz v0, :cond_0

    .line 2449
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->viewportFill:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    iget v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;->colour:I

    goto :goto_0

    .line 2450
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->viewportFill:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CurrentColor;

    if-eqz v0, :cond_2

    .line 2451
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->color:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    iget v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;->colour:I

    .line 2455
    :goto_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 2456
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->colourWithOpacity(IF)I

    move-result v0

    .line 2458
    :cond_1
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_2
    return-void
.end method

.method private visible()Z
    .locals 1

    .line 1953
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1954
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "SVGAndroidRenderer"

    .line 495
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method getCurrentFontSize()F
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method getCurrentFontXHeight()F
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method getCurrentViewPortInUserUnits()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    return-object v0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->state:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    return-object v0
.end method

.method getDPI()F
    .locals 1

    .line 208
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->dpi:F

    return v0
.end method

.method renderDocument(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;)V
    .locals 2

    .line 243
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->document:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    .line 245
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->getRootElement()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Nothing to render. Document is empty."

    .line 248
    invoke-static {p2, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->resetState()V

    .line 255
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->checkXMLSpaceAttribute(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V

    .line 258
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 261
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    iget v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    invoke-virtual {v0, p0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;F)F

    move-result v0

    iput v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    .line 263
    :cond_1
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    iget v1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    invoke-virtual {v0, p0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValue(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;F)F

    move-result v0

    iput v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    :cond_2
    if-eqz p3, :cond_3

    goto :goto_0

    .line 268
    :cond_3
    iget-object p3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    :goto_0
    if-eqz p4, :cond_4

    goto :goto_1

    .line 269
    :cond_4
    iget-object p4, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    .line 267
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->render(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Svg;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;)V

    .line 272
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->statePop()V

    return-void
.end method
