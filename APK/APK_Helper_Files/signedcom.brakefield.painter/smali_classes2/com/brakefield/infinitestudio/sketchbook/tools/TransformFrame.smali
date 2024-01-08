.class public Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;
.super Ljava/lang/Object;
.source "TransformFrame.java"


# static fields
.field public static final ANCHOR:I = 0xf

.field public static final BOTTOM:I = 0x8

.field public static final BOTTOM_LEFT:I = 0x9

.field public static final BOTTOM_RIGHT:I = 0x7

.field public static final BOTTOM_SLIDE:I = 0xd

.field public static final LEFT:I = 0xa

.field public static final LEFT_SLIDE:I = 0xe

.field public static final MODE_DISTORT:I = 0x3

.field public static final MODE_FREE:I = 0x0

.field public static final MODE_ROTATE:I = 0x2

.field public static final MODE_SCALE:I = 0x1

.field public static final MOVE:I = 0x1

.field public static final NOTHING:I = 0x0

.field public static final RIGHT:I = 0x6

.field public static final RIGHT_SLIDE:I = 0xc

.field public static final ROTATE:I = 0x2

.field public static final TOP:I = 0x4

.field public static final TOP_LEFT:I = 0x3

.field public static final TOP_RIGHT:I = 0x5

.field public static final TOP_SLIDE:I = 0xb

.field public static TOUCH_SIZE:F

.field private static a:F

.field private static anchor:Lcom/brakefield/infinitestudio/geometry/Point;

.field private static animator:Landroid/animation/ValueAnimator;

.field private static bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

.field private static bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

.field private static control:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

.field private static controlPressed:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

.field private static downAnchor:Lcom/brakefield/infinitestudio/geometry/Point;

.field private static downAngle:F

.field private static downMatrix:Landroid/graphics/Matrix;

.field private static downRadius:F

.field private static downX:F

.field private static downY:F

.field private static knobSize:I

.field public static matrix:Landroid/graphics/Matrix;

.field public static mode:I

.field private static move:Z

.field private static origBottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

.field private static origBottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

.field private static origTopLeft:Lcom/brakefield/infinitestudio/geometry/Point;

.field private static origTopRight:Lcom/brakefield/infinitestudio/geometry/Point;

.field private static pA:F

.field private static pZoom:F

.field private static points:[Lcom/brakefield/infinitestudio/geometry/Point;

.field private static ptx:F

.field private static pty:F

.field private static tX:F

.field private static tY:F

.field private static topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

.field private static topRight:Lcom/brakefield/infinitestudio/geometry/Point;

.field private static touchCase:I

.field private static transform:Lcom/brakefield/infinitestudio/geometry/Line;

.field private static undo:Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;

.field private static useHand:Z

.field private static zoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    sput v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->TOUCH_SIZE:F

    .line 73
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->matrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 79
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->mode:I

    .line 81
    sget-object v0, Lcom/brakefield/infinitestudio/Main;->res:Landroid/content/res/Resources;

    sget v1, Lcom/brakefield/infinitestudio/R$dimen;->knob_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->knobSize:I

    .line 783
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->transform:Lcom/brakefield/infinitestudio/geometry/Line;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 784
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->pZoom:F

    .line 785
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->zoom:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 1

    .line 26
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->anchor:Lcom/brakefield/infinitestudio/geometry/Point;

    return-object v0
.end method

.method static synthetic access$100()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 1

    .line 26
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    return-object v0
.end method

.method static synthetic access$200()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 1

    .line 26
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    return-object v0
.end method

.method static synthetic access$300()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 1

    .line 26
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    return-object v0
.end method

.method static synthetic access$400()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 1

    .line 26
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    return-object v0
.end method

.method static synthetic access$500()V
    .locals 0

    .line 26
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->updateMatrix()V

    return-void
.end method

.method static synthetic access$602(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 26
    sput-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->animator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static applyMatrix()V
    .locals 22

    .line 916
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 918
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 919
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 920
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 921
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 923
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/16 v1, 0x8

    new-array v3, v1, [F

    .line 924
    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origTopLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v8, 0x0

    aput v2, v3, v8

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origTopLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v9, 0x1

    aput v2, v3, v9

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origTopRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v10, 0x2

    aput v2, v3, v10

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origTopRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v11, 0x3

    aput v2, v3, v11

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origBottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v12, 0x4

    aput v2, v3, v12

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origBottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v13, 0x5

    aput v2, v3, v13

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origBottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v14, 0x6

    aput v2, v3, v14

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origBottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v15, 0x7

    aput v2, v3, v15

    const/4 v4, 0x0

    new-array v5, v1, [F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v2, v5, v8

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v2, v5, v9

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v2, v5, v10

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v2, v5, v11

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v2, v5, v12

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v2, v5, v13

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v2, v5, v14

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v2, v5, v15

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 931
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 932
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 934
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    new-array v2, v1, [F

    .line 935
    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v3, v2, v8

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v3, v2, v9

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v3, v2, v10

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v3, v2, v11

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v3, v2, v12

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v3, v2, v13

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v3, v2, v14

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v3, v2, v15

    const/16 v18, 0x0

    new-array v1, v1, [F

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origTopLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v3, v1, v8

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origTopLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v3, v1, v9

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origTopRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v3, v1, v10

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origTopRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v3, v1, v11

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origBottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v3, v1, v12

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origBottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v3, v1, v13

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origBottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v3, v1, v14

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origBottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v3, v1, v15

    const/16 v20, 0x0

    const/16 v21, 0x4

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v19, v1

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 941
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 942
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 944
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-static {v0}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->createFrame(Landroid/graphics/RectF;)V

    return-void
.end method

.method public static contains(FF)Z
    .locals 3

    .line 1273
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 1275
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v2, p0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-direct {v1, v0, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 1277
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result p0

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->getRadius()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static createFrame(Landroid/graphics/RectF;)V
    .locals 5

    .line 113
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, p0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Landroid/graphics/RectF;->top:F

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, p0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, p0, Landroid/graphics/RectF;->left:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v3, v4, p0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-static {v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->createFrame(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    return-void
.end method

.method public static createFrame(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V
    .locals 3

    .line 86
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    sput v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->TOUCH_SIZE:F

    .line 88
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 89
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 90
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 91
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, p3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, p3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 93
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->anchor:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 95
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget p0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, v1, p0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origTopLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 96
    new-instance p0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    sput-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origTopRight:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 97
    new-instance p0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget p1, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget p2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    sput-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origBottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 98
    new-instance p0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget p1, p3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget p2, p3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    sput-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origBottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 100
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/graphics/Matrix;->reset()V

    .line 102
    new-instance p0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;-><init>()V

    sput-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->control:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    .line 103
    sget p1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->knobSize:I

    neg-int p2, p1

    neg-int p3, p1

    invoke-virtual {p0, p2, p3, p1, p1}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->setBounds(IIII)V

    .line 104
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->control:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->setColor(I)V

    .line 106
    new-instance p0, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;-><init>()V

    sput-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->controlPressed:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    .line 107
    sget p1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->knobSize:I

    neg-int p2, p1

    neg-int p3, p1

    invoke-virtual {p0, p2, p3, p1, p1}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->setBounds(IIII)V

    .line 108
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->controlPressed:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    const p1, -0x333334

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->setColor(I)V

    return-void
.end method

.method public static draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 120
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 124
    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 126
    new-instance v6, Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v6, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 127
    new-instance v7, Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v7, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 128
    new-instance v8, Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v8, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 129
    new-instance v9, Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v9, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 131
    new-instance v10, Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->anchor:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->anchor:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v10, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 133
    invoke-virtual {v6, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 134
    invoke-virtual {v7, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 135
    invoke-virtual {v8, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 136
    invoke-virtual {v9, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 138
    invoke-virtual {v10, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 140
    iget v1, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v3, v7, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v7, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 141
    iget v1, v7, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, v7, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v3, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 142
    iget v1, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v3, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 143
    iget v1, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v3, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 145
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 146
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 147
    iget v0, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 148
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->touchCase:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    .line 149
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->controlPressed:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 151
    :cond_2
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->control:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 152
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_1
    return-void
.end method

.method public static flipHorizontal()V
    .locals 5

    .line 1114
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 1116
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1117
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v4, v2, v0}, Landroid/graphics/Matrix;->setScale(FFFF)V

    const/16 v0, 0x190

    .line 1119
    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->transform(Landroid/graphics/Matrix;I)V

    .line 1121
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1122
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1124
    new-instance v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$10;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, v0}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$10;-><init>(ILandroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    sput-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->undo:Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;

    return-void
.end method

.method public static flipVertical()V
    .locals 5

    .line 1087
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 1089
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1090
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v1, v3, v4, v2, v0}, Landroid/graphics/Matrix;->setScale(FFFF)V

    const/16 v0, 0x190

    .line 1092
    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->transform(Landroid/graphics/Matrix;I)V

    .line 1094
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1095
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1097
    new-instance v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$9;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, v0}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$9;-><init>(ILandroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    sput-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->undo:Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;

    return-void
.end method

.method public static getBounds()Landroid/graphics/RectF;
    .locals 5

    .line 1303
    new-instance v0, Landroid/graphics/RectF;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origTopLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origTopLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origBottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v4, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origBottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public static getCenter()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 5

    .line 311
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v1, v2

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v1, v2

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v4, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v3, v4

    sget-object v4, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v3, v4

    sget-object v4, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    invoke-direct {v0, v1, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public static getMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 178
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 179
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method private static getRadius()F
    .locals 4

    .line 1265
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 1266
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 1268
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v0

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static getReverseMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 185
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 186
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method public static getUndo()Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;
    .locals 2

    .line 1312
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->undo:Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;

    const/4 v1, 0x0

    .line 1313
    sput-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->undo:Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;

    return-object v0
.end method

.method public static nudge(FF)V
    .locals 2

    .line 1141
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1142
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    const/4 p0, 0x0

    .line 1144
    invoke-static {v0, p0}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->transform(Landroid/graphics/Matrix;I)V

    .line 1146
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 1147
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1149
    new-instance v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$11;

    invoke-direct {v1, p0, v0, p1}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$11;-><init>(ILandroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    sput-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->undo:Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;

    return-void
.end method

.method public static onDown(FF)V
    .locals 6

    const/4 v0, 0x0

    .line 192
    sput-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->move:Z

    .line 194
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 196
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 197
    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 199
    iget p0, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 200
    iget p1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 202
    iget v0, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sput v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downX:F

    .line 203
    iget v0, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sput v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downY:F

    .line 205
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 206
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v1, v2, v3, p0, p1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 207
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v2

    sput v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downRadius:F

    .line 208
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v1

    sput v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downAngle:F

    .line 210
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->TOUCH_SIZE:F

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v2

    div-float/2addr v1, v2

    .line 212
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 213
    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 215
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->mode:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    if-ne v0, v3, :cond_1

    .line 216
    :cond_0
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->anchor:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->anchor:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p0, p1, v0, v2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 219
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->anchor:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/geometry/Point;->copy()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object p0

    sput-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downAnchor:Lcom/brakefield/infinitestudio/geometry/Point;

    const/16 p0, 0xf

    .line 220
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->touchCase:I

    return-void

    .line 225
    :cond_1
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downMatrix:Landroid/graphics/Matrix;

    .line 227
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p0, p1, v0, v2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    const/4 p0, 0x3

    .line 230
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->touchCase:I

    return-void

    .line 234
    :cond_2
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p0, p1, v0, v2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    const/4 p0, 0x5

    .line 237
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->touchCase:I

    return-void

    .line 241
    :cond_3
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p0, p1, v0, v2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    const/4 p0, 0x7

    .line 244
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->touchCase:I

    return-void

    .line 248
    :cond_4
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p0, p1, v0, v2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    const/16 p0, 0x9

    .line 251
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->touchCase:I

    return-void

    .line 255
    :cond_5
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v4, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v2, v4}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 256
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v2, p0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {v0, v2, v4}, Lcom/brakefield/infinitestudio/geometry/Line;->getClosestPoint(Lcom/brakefield/infinitestudio/geometry/Point;F)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 259
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p0, p1, v2, v0}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    const/4 p0, 0x4

    .line 262
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->touchCase:I

    return-void

    .line 267
    :cond_6
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v2, v5}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 268
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v2, p0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-virtual {v0, v2, v4}, Lcom/brakefield/infinitestudio/geometry/Line;->getClosestPoint(Lcom/brakefield/infinitestudio/geometry/Point;F)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 271
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p0, p1, v2, v0}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    const/4 p0, 0x6

    .line 274
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->touchCase:I

    return-void

    .line 279
    :cond_7
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v2, v5}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 280
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v2, p0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-virtual {v0, v2, v4}, Lcom/brakefield/infinitestudio/geometry/Line;->getClosestPoint(Lcom/brakefield/infinitestudio/geometry/Point;F)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 283
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p0, p1, v2, v0}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    const/16 p0, 0x8

    .line 286
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->touchCase:I

    return-void

    .line 291
    :cond_8
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v2, v5}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 292
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v2, p0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-virtual {v0, v2, v4}, Lcom/brakefield/infinitestudio/geometry/Line;->getClosestPoint(Lcom/brakefield/infinitestudio/geometry/Point;F)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 295
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p0, p1, v2, v0}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    const/16 p0, 0xa

    .line 298
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->touchCase:I

    return-void

    .line 303
    :cond_9
    sput v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->touchCase:I

    .line 304
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downX:F

    .line 305
    sput p1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downY:F

    return-void
.end method

.method public static onMove(FF)V
    .locals 20

    .line 318
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 320
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    move/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 321
    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 323
    iget v0, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 324
    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 326
    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 327
    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 329
    sget v4, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->mode:I

    const/4 v5, 0x7

    const/16 v6, 0x9

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-nez v4, :cond_0

    sget v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->touchCase:I

    if-eq v10, v9, :cond_0

    if-eq v10, v8, :cond_0

    if-eq v10, v7, :cond_0

    if-eq v10, v6, :cond_0

    if-eq v10, v5, :cond_0

    .line 330
    sput v9, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->touchCase:I

    .line 333
    :cond_0
    sget-boolean v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->move:Z

    const/4 v11, 0x6

    const/16 v12, 0x8

    const/16 v13, 0xa

    const/4 v14, 0x4

    if-nez v10, :cond_3

    if-ne v4, v8, :cond_2

    .line 334
    sget v4, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->touchCase:I

    if-eq v4, v14, :cond_1

    if-eq v4, v12, :cond_1

    if-eq v4, v11, :cond_1

    if-eq v4, v13, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v9

    :goto_1
    sput-boolean v4, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->move:Z

    .line 337
    :cond_3
    sget-boolean v4, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->move:Z

    const/16 v10, 0xd

    const/16 v15, 0xb

    const-wide v16, 0x4076800000000000L    # 360.0

    if-nez v4, :cond_10

    sget v4, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downX:F

    sget v6, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downY:F

    invoke-static {v4, v6, v0, v2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v4

    sget v6, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->TOUCH_SIZE:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_10

    .line 339
    sput-boolean v9, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->move:Z

    .line 341
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Line;

    sget v6, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downX:F

    sget v5, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downY:F

    invoke-direct {v4, v6, v5, v0, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 342
    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v4

    .line 344
    sget v5, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->touchCase:I

    const/16 v6, 0x154

    const/16 v7, 0xa0

    const/16 v8, 0xc8

    const/16 v9, 0x14

    if-ne v5, v14, :cond_6

    .line 345
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v14, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v11, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v5, v14, v11}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 346
    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v5

    float-to-double v13, v5

    .line 347
    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    float-to-double v4, v4

    .line 348
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    sub-double/2addr v13, v4

    .line 347
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    rem-double v4, v4, v16

    double-to-int v4, v4

    if-le v4, v9, :cond_4

    if-lt v4, v7, :cond_f

    :cond_4
    if-le v4, v8, :cond_5

    if-lt v4, v6, :cond_f

    .line 350
    :cond_5
    sput v15, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->touchCase:I

    goto/16 :goto_2

    :cond_6
    if-ne v5, v12, :cond_9

    .line 352
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v13, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v14, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v5, v13, v14}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 353
    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v5

    float-to-double v13, v5

    .line 354
    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    float-to-double v4, v4

    .line 355
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    sub-double/2addr v13, v4

    .line 354
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    rem-double v4, v4, v16

    double-to-int v4, v4

    if-le v4, v9, :cond_7

    if-lt v4, v7, :cond_f

    :cond_7
    if-le v4, v8, :cond_8

    if-lt v4, v6, :cond_f

    .line 357
    :cond_8
    sput v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->touchCase:I

    goto :goto_2

    :cond_9
    const/16 v11, 0xa

    if-ne v5, v11, :cond_c

    .line 359
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v13, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v14, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v5, v13, v14}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 360
    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v5

    float-to-double v13, v5

    .line 361
    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    float-to-double v4, v4

    .line 362
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    sub-double/2addr v13, v4

    .line 361
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    rem-double v4, v4, v16

    double-to-int v4, v4

    if-le v4, v9, :cond_a

    if-lt v4, v7, :cond_f

    :cond_a
    if-le v4, v8, :cond_b

    if-lt v4, v6, :cond_f

    :cond_b
    const/16 v4, 0xe

    .line 364
    sput v4, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->touchCase:I

    goto :goto_2

    :cond_c
    const/4 v13, 0x6

    if-ne v5, v13, :cond_f

    .line 366
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v13, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v14, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v5, v13, v14}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 367
    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v5

    float-to-double v13, v5

    .line 368
    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    float-to-double v4, v4

    .line 369
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    sub-double/2addr v13, v4

    .line 368
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    rem-double v4, v4, v16

    double-to-int v4, v4

    if-le v4, v9, :cond_d

    if-lt v4, v7, :cond_f

    :cond_d
    if-le v4, v8, :cond_e

    if-lt v4, v6, :cond_f

    :cond_e
    const/16 v4, 0xc

    .line 371
    sput v4, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->touchCase:I

    .line 374
    :cond_f
    :goto_2
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downX:F

    .line 375
    sput v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downY:F

    .line 378
    :cond_10
    sget-boolean v4, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->move:Z

    if-nez v4, :cond_11

    return-void

    .line 381
    :cond_11
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v4

    .line 382
    new-instance v5, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v6, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v7, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v5, v6, v7, v0, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 383
    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v6

    sget v7, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downRadius:F

    sub-float/2addr v6, v7

    .line 384
    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v7

    sget v8, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downAngle:F

    sub-float/2addr v7, v8

    .line 386
    sget v8, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downX:F

    sub-float v8, v3, v8

    .line 387
    sget v9, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downY:F

    sub-float v9, v1, v9

    .line 389
    new-instance v13, Lcom/brakefield/infinitestudio/geometry/Line;

    sget v14, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downX:F

    sget v11, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downY:F

    invoke-direct {v13, v14, v11, v3, v1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 391
    invoke-virtual {v13}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v14

    .line 392
    invoke-virtual {v13}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v13

    .line 394
    new-instance v11, Lcom/brakefield/infinitestudio/geometry/Point;

    const/high16 v10, -0x40800000    # -1.0f

    invoke-direct {v11, v10, v10}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 395
    new-instance v15, Lcom/brakefield/infinitestudio/geometry/Point;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v15, v10, v10}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 397
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v10}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 398
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v15, v10}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 400
    sget v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->touchCase:I

    const/16 v12, 0xa

    if-eq v10, v12, :cond_12

    move-object v12, v11

    const/4 v11, 0x6

    if-eq v10, v11, :cond_13

    const/4 v11, 0x4

    if-eq v10, v11, :cond_13

    const/16 v11, 0x8

    if-ne v10, v11, :cond_15

    goto :goto_3

    :cond_12
    move-object v12, v11

    .line 403
    :cond_13
    :goto_3
    iget v10, v12, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v11, v15, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_14

    const/high16 v10, -0x40800000    # -1.0f

    mul-float/2addr v8, v10

    goto :goto_4

    :cond_14
    const/high16 v10, -0x40800000    # -1.0f

    .line 408
    :goto_4
    iget v11, v12, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v12, v15, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_15

    mul-float/2addr v9, v10

    .line 414
    :cond_15
    sget v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->touchCase:I

    const/16 v11, 0xf

    if-ne v10, v11, :cond_16

    .line 416
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->anchor:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v2, v8

    iput v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 417
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->anchor:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v2, v9

    iput v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto/16 :goto_6

    :cond_16
    const/4 v11, 0x1

    if-ne v10, v11, :cond_17

    .line 423
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v2, v8

    iput v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 424
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v2, v9

    iput v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 425
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v2, v8

    iput v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 426
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v2, v9

    iput v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 427
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v2, v8

    iput v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 428
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v2, v9

    iput v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 429
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v2, v8

    iput v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 430
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v2, v9

    iput v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 431
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->anchor:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v2, v8

    iput v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 432
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->anchor:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v2, v9

    iput v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto/16 :goto_6

    .line 436
    :cond_17
    sget v11, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->mode:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_27

    if-ne v10, v12, :cond_18

    .line 440
    sget-object v8, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iput v0, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 441
    sget-object v8, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iput v2, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto/16 :goto_5

    :cond_18
    const/4 v11, 0x5

    if-ne v10, v11, :cond_19

    .line 444
    sget-object v8, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iput v0, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 445
    sget-object v8, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iput v2, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto/16 :goto_5

    :cond_19
    const/4 v11, 0x7

    if-ne v10, v11, :cond_1a

    .line 448
    sget-object v8, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iput v0, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 449
    sget-object v8, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iput v2, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto/16 :goto_5

    :cond_1a
    const/16 v11, 0x9

    if-ne v10, v11, :cond_1b

    .line 452
    sget-object v8, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iput v0, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 453
    sget-object v8, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iput v2, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto/16 :goto_5

    :cond_1b
    const/16 v11, 0x10e

    const/16 v12, 0x5a

    const/16 v15, 0xb

    if-ne v10, v15, :cond_1d

    .line 458
    new-instance v8, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v9, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v8, v9, v10}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 459
    invoke-virtual {v8}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v8

    float-to-double v8, v8

    .line 461
    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v18

    float-to-double v14, v14

    .line 462
    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    sub-double v18, v18, v14

    .line 461
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    rem-double v14, v14, v16

    double-to-int v10, v14

    if-le v10, v12, :cond_1c

    if-ge v10, v11, :cond_1c

    const/high16 v10, -0x40800000    # -1.0f

    mul-float/2addr v13, v10

    .line 466
    :cond_1c
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v11, v11

    float-to-double v13, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v11, v15

    double-to-float v11, v11

    iput v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 467
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v11, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v11, v15

    double-to-float v11, v11

    iput v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 469
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v11, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v11, v15

    double-to-float v11, v11

    iput v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 470
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v11, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v13, v8

    add-double/2addr v11, v13

    double-to-float v8, v11

    iput v8, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto/16 :goto_5

    :cond_1d
    const/16 v15, 0xd

    if-ne v10, v15, :cond_1f

    .line 476
    new-instance v8, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v9, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v8, v9, v10}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 477
    invoke-virtual {v8}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v8

    float-to-double v8, v8

    .line 479
    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v18

    float-to-double v14, v14

    .line 480
    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    sub-double v18, v18, v14

    .line 479
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    rem-double v14, v14, v16

    double-to-int v10, v14

    if-le v10, v12, :cond_1e

    if-ge v10, v11, :cond_1e

    const/high16 v10, -0x40800000    # -1.0f

    mul-float/2addr v13, v10

    .line 484
    :cond_1e
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v11, v11

    float-to-double v13, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v11, v15

    double-to-float v11, v11

    iput v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 485
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v11, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v11, v15

    double-to-float v11, v11

    iput v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 487
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v11, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v11, v15

    double-to-float v11, v11

    iput v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 488
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v11, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v13, v8

    add-double/2addr v11, v13

    double-to-float v8, v11

    iput v8, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto/16 :goto_5

    :cond_1f
    const/16 v15, 0xe

    if-ne v10, v15, :cond_21

    .line 494
    new-instance v8, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v9, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v8, v9, v10}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 495
    invoke-virtual {v8}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v8

    float-to-double v8, v8

    .line 497
    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v18

    float-to-double v14, v14

    .line 498
    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    sub-double v18, v18, v14

    .line 497
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    rem-double v14, v14, v16

    double-to-int v10, v14

    if-le v10, v12, :cond_20

    if-ge v10, v11, :cond_20

    const/high16 v10, -0x40800000    # -1.0f

    mul-float/2addr v13, v10

    .line 502
    :cond_20
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v11, v11

    float-to-double v13, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v11, v15

    double-to-float v11, v11

    iput v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 503
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v11, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v11, v15

    double-to-float v11, v11

    iput v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 505
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v11, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v11, v15

    double-to-float v11, v11

    iput v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 506
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v11, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v13, v8

    add-double/2addr v11, v13

    double-to-float v8, v11

    iput v8, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto/16 :goto_5

    :cond_21
    const/16 v15, 0xc

    if-ne v10, v15, :cond_23

    .line 512
    new-instance v8, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v9, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v8, v9, v10}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 513
    invoke-virtual {v8}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v8

    float-to-double v8, v8

    .line 515
    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v18

    float-to-double v14, v14

    .line 516
    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    sub-double v18, v18, v14

    .line 515
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    rem-double v14, v14, v16

    double-to-int v10, v14

    if-le v10, v12, :cond_22

    if-ge v10, v11, :cond_22

    const/high16 v10, -0x40800000    # -1.0f

    mul-float/2addr v13, v10

    .line 520
    :cond_22
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v11, v11

    float-to-double v13, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v11, v15

    double-to-float v11, v11

    iput v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 521
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v11, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v11, v15

    double-to-float v11, v11

    iput v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 523
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v11, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v11, v15

    double-to-float v11, v11

    iput v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 524
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v11, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v13, v8

    add-double/2addr v11, v13

    double-to-float v8, v11

    iput v8, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto/16 :goto_5

    :cond_23
    const-wide v11, 0x3ff921fb54442d18L    # 1.5707963267948966

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v14, 0x4

    if-ne v10, v14, :cond_24

    .line 528
    new-instance v8, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v14, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v8, v10, v14}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 529
    new-instance v10, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v14, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v15, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v10, v14, v15}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 530
    invoke-virtual {v8}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v8

    invoke-virtual {v10}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v10

    add-float/2addr v8, v10

    div-float/2addr v8, v13

    float-to-double v13, v8

    add-double/2addr v13, v11

    double-to-float v8, v13

    .line 532
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v11, v11

    float-to-double v13, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v11, v15

    double-to-float v11, v11

    iput v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 533
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v11, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v11, v15

    double-to-float v11, v11

    iput v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 535
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v11, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v11, v15

    double-to-float v11, v11

    iput v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 536
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v11, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v13, v8

    add-double/2addr v11, v13

    double-to-float v8, v11

    iput v8, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto/16 :goto_5

    :cond_24
    const/16 v14, 0x8

    if-ne v10, v14, :cond_25

    const/high16 v14, -0x40800000    # -1.0f

    mul-float/2addr v9, v14

    .line 542
    new-instance v8, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v14, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v8, v10, v14}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 543
    new-instance v10, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v14, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v15, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v10, v14, v15}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 544
    invoke-virtual {v8}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v8

    invoke-virtual {v10}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v10

    add-float/2addr v8, v10

    div-float/2addr v8, v13

    float-to-double v13, v8

    add-double/2addr v13, v11

    double-to-float v8, v13

    .line 546
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v11, v11

    float-to-double v13, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    sub-double/2addr v11, v15

    double-to-float v11, v11

    iput v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 547
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v11, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    sub-double/2addr v11, v15

    double-to-float v11, v11

    iput v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 549
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v11, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    sub-double/2addr v11, v15

    double-to-float v11, v11

    iput v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 550
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v11, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v13, v8

    sub-double/2addr v11, v13

    double-to-float v8, v11

    iput v8, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto/16 :goto_5

    :cond_25
    const/16 v9, 0xa

    if-ne v10, v9, :cond_26

    .line 554
    new-instance v9, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v14, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v9, v10, v14}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 555
    new-instance v10, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v14, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v15, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v10, v14, v15}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 556
    invoke-virtual {v9}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v9

    invoke-virtual {v10}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v10

    add-float/2addr v9, v10

    div-float/2addr v9, v13

    float-to-double v9, v9

    add-double/2addr v9, v11

    double-to-float v9, v9

    .line 558
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v11, v11

    float-to-double v13, v8

    float-to-double v8, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v11, v15

    double-to-float v11, v11

    iput v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 559
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v11, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v11, v15

    double-to-float v11, v11

    iput v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 561
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v11, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v11, v15

    double-to-float v11, v11

    iput v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 562
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v11, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v13, v8

    add-double/2addr v11, v13

    double-to-float v8, v11

    iput v8, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    goto :goto_5

    :cond_26
    const/4 v9, 0x6

    if-ne v10, v9, :cond_27

    const/high16 v9, -0x40800000    # -1.0f

    mul-float/2addr v8, v9

    .line 568
    new-instance v9, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v14, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v9, v10, v14}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 569
    new-instance v10, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v14, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v15, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v10, v14, v15}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 570
    invoke-virtual {v9}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v9

    invoke-virtual {v10}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v10

    add-float/2addr v9, v10

    div-float/2addr v9, v13

    float-to-double v9, v9

    add-double/2addr v9, v11

    double-to-float v9, v9

    .line 572
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v11, v11

    float-to-double v13, v8

    float-to-double v8, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    sub-double/2addr v11, v15

    double-to-float v11, v11

    iput v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 573
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v11, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    sub-double/2addr v11, v15

    double-to-float v11, v11

    iput v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 575
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v11, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    sub-double/2addr v11, v15

    double-to-float v11, v11

    iput v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 576
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v11, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v13, v8

    sub-double/2addr v11, v13

    double-to-float v8, v11

    iput v8, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 580
    :cond_27
    :goto_5
    sget v8, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->mode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_28

    .line 668
    new-instance v8, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v9, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->anchor:Lcom/brakefield/infinitestudio/geometry/Point;

    new-instance v10, Lcom/brakefield/infinitestudio/geometry/Point;

    sget v11, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downX:F

    sget v12, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downY:F

    invoke-direct {v10, v11, v12}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-direct {v8, v9, v10}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 669
    new-instance v9, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->anchor:Lcom/brakefield/infinitestudio/geometry/Point;

    new-instance v11, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v11, v0, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-direct {v9, v10, v11}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 671
    invoke-virtual {v9}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v0

    invoke-virtual {v8}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v2

    div-float/2addr v0, v2

    .line 673
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 674
    sget-object v8, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->anchor:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v8, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v9, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->anchor:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v9, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v2, v0, v0, v8, v9}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 676
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 677
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 678
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 679
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 680
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->anchor:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 684
    :cond_28
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->mode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_29

    .line 688
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    float-to-double v8, v7

    .line 689
    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v2, v8

    sget-object v8, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->anchor:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v8, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v9, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->anchor:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v9, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v0, v2, v8, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 691
    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 692
    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 693
    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 694
    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 698
    :cond_29
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->mode:I

    if-nez v0, :cond_2a

    .line 702
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downRadius:F

    add-float/2addr v6, v0

    div-float/2addr v6, v0

    .line 704
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    float-to-double v7, v7

    .line 705
    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    double-to-float v2, v7

    iget v7, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v8, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v0, v2, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 706
    iget v2, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v0, v6, v6, v2, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 708
    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 709
    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 710
    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 711
    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 712
    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->anchor:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v2, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 718
    :cond_2a
    :goto_6
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->updateMatrix()V

    .line 720
    sput v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downX:F

    .line 721
    sput v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downY:F

    .line 722
    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v0

    sput v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downRadius:F

    .line 723
    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v0

    sput v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downAngle:F

    return-void
.end method

.method public static onMultiDown(FFFF)V
    .locals 6

    .line 794
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 795
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, p2, p3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 796
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 797
    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 798
    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 800
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v2, v3}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->contains(FF)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    iget v2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v2, v5}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    sput-boolean v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->useHand:Z

    if-nez v2, :cond_2

    .line 802
    sget v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->mode:I

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :cond_2
    :goto_1
    sput-boolean v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->useHand:Z

    if-eqz v3, :cond_3

    .line 805
    invoke-static {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->onMultiDown(FFFF)V

    goto :goto_2

    .line 808
    :cond_3
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    sput-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downMatrix:Landroid/graphics/Matrix;

    .line 810
    iget p0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 811
    iget p1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 812
    iget p2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 813
    iget p3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 815
    sput v4, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->touchCase:I

    .line 816
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->transform:Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/geometry/Line;->init(FFFF)V

    .line 817
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->transform:Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result p0

    sput p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->pZoom:F

    .line 818
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->transform:Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/geometry/Line;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object p0

    .line 819
    iget p1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sput p1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->ptx:F

    .line 820
    iget p0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sput p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->pty:F

    .line 821
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->transform:Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result p0

    sput p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->pA:F

    :goto_2
    return-void
.end method

.method public static onMultiMove(FFFF)V
    .locals 10

    .line 827
    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->useHand:Z

    if-eqz v0, :cond_0

    .line 828
    invoke-static {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->onMultiMove(FFFF)V

    goto/16 :goto_0

    .line 831
    :cond_0
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 832
    new-instance p0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {p0, p2, p3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 833
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    .line 834
    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 835
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 836
    iget p1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 837
    iget p2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 838
    iget p3, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 839
    iget p0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 841
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->transform:Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/brakefield/infinitestudio/geometry/Line;->init(FFFF)V

    .line 842
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->transform:Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/geometry/Line;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object p0

    .line 843
    iget p1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->ptx:F

    sub-float/2addr p1, p2

    sput p1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->tX:F

    .line 844
    iget p1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->pty:F

    sub-float/2addr p1, p2

    sput p1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->tY:F

    .line 845
    iget p1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sput p1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->ptx:F

    .line 846
    iget p1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sput p1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->pty:F

    .line 847
    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->transform:Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result p1

    .line 848
    sget p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->pZoom:F

    sub-float p2, p1, p2

    div-float/2addr p2, p1

    const/high16 p3, 0x3f800000    # 1.0f

    add-float/2addr p2, p3

    sput p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->zoom:F

    .line 849
    sput p1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->pZoom:F

    .line 850
    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->transform:Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result p1

    .line 851
    sget p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->pA:F

    sub-float p2, p1, p2

    sput p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->a:F

    .line 852
    sput p1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->pA:F

    .line 853
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 854
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 855
    sget p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->a:F

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p2

    double-to-float p2, p2

    sget p3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->ptx:F

    sget v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->pty:F

    invoke-virtual {p1, p2, p3, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 856
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 857
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 858
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 859
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 860
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->anchor:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 861
    sget p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->zoom:F

    sget p3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->ptx:F

    sget v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->pty:F

    invoke-virtual {p1, p2, p2, p3, v0}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 862
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 863
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 864
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 865
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 866
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->anchor:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 867
    sget p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->tX:F

    sget p3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->tY:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 868
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 869
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 870
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 871
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 872
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->anchor:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 874
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->matrix:Landroid/graphics/Matrix;

    const/16 p1, 0x8

    new-array v1, p1, [F

    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origTopLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 p3, 0x0

    aput p2, v1, p3

    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origTopLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v2, 0x1

    aput p2, v1, v2

    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origTopRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v3, 0x2

    aput p2, v1, v3

    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origTopRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v4, 0x3

    aput p2, v1, v4

    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origBottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v5, 0x4

    aput p2, v1, v5

    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origBottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v6, 0x5

    aput p2, v1, v6

    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origBottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v7, 0x6

    aput p2, v1, v7

    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origBottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v8, 0x7

    aput p2, v1, v8

    const/4 p2, 0x0

    new-array p1, p1, [F

    sget-object v9, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v9, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v9, p1, p3

    sget-object p3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p3, p3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput p3, p1, v2

    sget-object p3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p3, p3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput p3, p1, v3

    sget-object p3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p3, p3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput p3, p1, v4

    sget-object p3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p3, p3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput p3, p1, v5

    sget-object p3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p3, p3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput p3, p1, v6

    sget-object p3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p3, p3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput p3, p1, v7

    sget-object p3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p3, p3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput p3, p1, v8

    const/4 v4, 0x0

    move v2, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 881
    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->transform:Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result p1

    sput p1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->pZoom:F

    .line 882
    iget p1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sput p1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->ptx:F

    .line 883
    iget p0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sput p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->pty:F

    .line 884
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->transform:Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result p0

    sput p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->pA:F

    :goto_0
    return-void
.end method

.method public static onMultiUp()V
    .locals 4

    .line 889
    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->useHand:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 890
    invoke-static {v0}, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->onMultiUp(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 892
    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 893
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 894
    new-instance v1, Landroid/graphics/Matrix;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downMatrix:Landroid/graphics/Matrix;

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 895
    new-instance v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$3;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$3;-><init>(ILandroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    sput-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->undo:Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;

    :cond_1
    :goto_0
    return-void
.end method

.method public static onUp()V
    .locals 4

    .line 738
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->touchCase:I

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 739
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->anchor:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downAnchor:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->anchor:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downAnchor:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 740
    :cond_0
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downAnchor:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Point;->copy()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 741
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->anchor:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Point;->copy()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    .line 742
    new-instance v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$1;

    invoke-direct {v3, v2, v1, v0}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$1;-><init>(ILcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    sput-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->undo:Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;

    goto :goto_0

    .line 759
    :cond_1
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 760
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 761
    new-instance v1, Landroid/graphics/Matrix;

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->downMatrix:Landroid/graphics/Matrix;

    invoke-direct {v1, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 762
    new-instance v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$2;

    invoke-direct {v3, v2, v0, v1}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$2;-><init>(ILandroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    sput-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->undo:Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;

    .line 780
    :cond_2
    :goto_0
    sput v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->touchCase:I

    return-void
.end method

.method public static reset()V
    .locals 4

    .line 1062
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1063
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/16 v1, 0xc8

    .line 1065
    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->transform(Landroid/graphics/Matrix;I)V

    .line 1067
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1068
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1070
    new-instance v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$8;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$8;-><init>(ILandroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    sput-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->undo:Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;

    return-void
.end method

.method public static reset(Landroid/graphics/RectF;)V
    .locals 0

    .line 949
    invoke-static {p0}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->createFrame(Landroid/graphics/RectF;)V

    return-void
.end method

.method public static resetAnchor()V
    .locals 1

    .line 1308
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->anchor:Lcom/brakefield/infinitestudio/geometry/Point;

    return-void
.end method

.method public static rotate180()V
    .locals 4

    .line 1008
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 1010
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1011
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v1, v3, v2, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/16 v0, 0x190

    .line 1013
    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->transform(Landroid/graphics/Matrix;I)V

    .line 1015
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1016
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1018
    new-instance v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$6;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, v0}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$6;-><init>(ILandroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    sput-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->undo:Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;

    return-void
.end method

.method public static rotate90CCW()V
    .locals 4

    .line 981
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 983
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 984
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/high16 v3, -0x3e900000    # -15.0f

    invoke-virtual {v1, v3, v2, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/16 v0, 0xc8

    .line 986
    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->transform(Landroid/graphics/Matrix;I)V

    .line 988
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 989
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 991
    new-instance v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$5;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, v0}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$5;-><init>(ILandroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    sput-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->undo:Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;

    return-void
.end method

.method public static rotate90CW()V
    .locals 4

    .line 954
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 956
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 957
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v1, v3, v2, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/16 v0, 0xc8

    .line 959
    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->transform(Landroid/graphics/Matrix;I)V

    .line 961
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 962
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 964
    new-instance v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$4;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, v0}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$4;-><init>(ILandroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    sput-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->undo:Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;

    return-void
.end method

.method public static rotateArbitrary(F)V
    .locals 3

    .line 1035
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 1037
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1038
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v1, p0, v2, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/16 p0, 0xc8

    .line 1040
    invoke-static {v1, p0}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->transform(Landroid/graphics/Matrix;I)V

    .line 1042
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 1043
    invoke-virtual {v1, p0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1045
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$7;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$7;-><init>(ILandroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->undo:Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;

    return-void
.end method

.method public static setMatrix(Landroid/graphics/Matrix;)V
    .locals 2

    .line 1281
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1283
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_0

    .line 1285
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origTopLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 1286
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origTopLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 1287
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origTopRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 1288
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origTopRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 1290
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origBottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 1291
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origBottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 1292
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origBottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 1293
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origBottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 1295
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 1296
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 1297
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 1298
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public static transform(Landroid/graphics/Matrix;I)V
    .locals 10

    .line 1166
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    .line 1169
    :cond_0
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Point;->copy()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v2

    .line 1170
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Point;->copy()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v4

    .line 1171
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Point;->copy()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v6

    .line 1172
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Point;->copy()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v8

    .line 1174
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Point;->copy()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v3

    .line 1175
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Point;->copy()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v5

    .line 1176
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Point;->copy()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v7

    .line 1177
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Point;->copy()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v9

    .line 1179
    invoke-virtual {v3, p0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 1180
    invoke-virtual {v5, p0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 1181
    invoke-virtual {v7, p0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 1182
    invoke-virtual {v9, p0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    const/4 p0, 0x1

    if-nez p1, :cond_1

    .line 1186
    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p1, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->set(Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 1187
    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p1, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->set(Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 1188
    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p1, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->set(Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 1189
    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p1, v3}, Lcom/brakefield/infinitestudio/geometry/Point;->set(Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 1191
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->updateMatrix()V

    .line 1193
    sget-object p1, Lcom/brakefield/infinitestudio/Main;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 1198
    :cond_1
    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p0

    sput-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->animator:Landroid/animation/ValueAnimator;

    int-to-long v0, p1

    .line 1200
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1202
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->animator:Landroid/animation/ValueAnimator;

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1204
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->animator:Landroid/animation/ValueAnimator;

    new-instance p1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1236
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->animator:Landroid/animation/ValueAnimator;

    new-instance p1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$13;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$13;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1260
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static updateMatrix()V
    .locals 13

    .line 728
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->matrix:Landroid/graphics/Matrix;

    const/16 v1, 0x8

    new-array v2, v1, [F

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origTopLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v4, 0x0

    aput v3, v2, v4

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origTopLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v5, 0x1

    aput v3, v2, v5

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origTopRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v6, 0x2

    aput v3, v2, v6

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origTopRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v7, 0x3

    aput v3, v2, v7

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origBottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v8, 0x4

    aput v3, v2, v8

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origBottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v9, 0x5

    aput v3, v2, v9

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origBottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v10, 0x6

    aput v3, v2, v10

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->origBottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v11, 0x7

    aput v3, v2, v11

    const/4 v3, 0x0

    new-array v12, v1, [F

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v1, v12, v4

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v1, v12, v5

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v1, v12, v6

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->topRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v1, v12, v7

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v1, v12, v8

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomRight:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v1, v12, v9

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v1, v12, v10

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->bottomLeft:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v1, v12, v11

    const/4 v5, 0x4

    move-object v1, v2

    move v2, v3

    move-object v3, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    return-void
.end method
