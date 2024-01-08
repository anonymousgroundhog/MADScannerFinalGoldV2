.class Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;
.super Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;
.source "PathTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/geometry/PathTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoundRect"
.end annotation


# instance fields
.field dir:F

.field radii:[F

.field rect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/brakefield/infinitestudio/geometry/PathTracer;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;Landroid/graphics/RectF;FFF)V
    .locals 0

    .line 975
    iput-object p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->this$0:Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;)V

    const/16 p1, 0x8

    .line 976
    iput p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->type:I

    .line 977
    iput-object p2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->rect:Landroid/graphics/RectF;

    new-array p1, p1, [F

    const/4 p2, 0x0

    aput p3, p1, p2

    const/4 p2, 0x1

    aput p4, p1, p2

    const/4 p2, 0x2

    aput p3, p1, p2

    const/4 p2, 0x3

    aput p4, p1, p2

    const/4 p2, 0x4

    aput p3, p1, p2

    const/4 p2, 0x5

    aput p4, p1, p2

    const/4 p2, 0x6

    aput p3, p1, p2

    const/4 p2, 0x7

    aput p4, p1, p2

    .line 978
    iput-object p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->radii:[F

    .line 979
    iput p5, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->dir:F

    return-void
.end method

.method public constructor <init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;Landroid/graphics/RectF;[FF)V
    .locals 0

    .line 968
    iput-object p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->this$0:Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;)V

    const/16 p1, 0x8

    .line 969
    iput p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->type:I

    .line 970
    iput-object p2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->rect:Landroid/graphics/RectF;

    .line 971
    iput-object p3, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->radii:[F

    .line 972
    iput p4, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->dir:F

    return-void
.end method


# virtual methods
.method public addToPath(Landroid/graphics/Path;)V
    .locals 3

    .line 1011
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->radii:[F

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public copy()Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;
    .locals 7

    .line 1001
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->this$0:Lcom/brakefield/infinitestudio/geometry/PathTracer;

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 v3, 0x8

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->radii:[F

    const/4 v5, 0x0

    aget v6, v4, v5

    aput v6, v3, v5

    const/4 v5, 0x1

    aget v6, v4, v5

    aput v6, v3, v5

    const/4 v5, 0x2

    aget v6, v4, v5

    aput v6, v3, v5

    const/4 v5, 0x3

    aget v6, v4, v5

    aput v6, v3, v5

    const/4 v5, 0x4

    aget v6, v4, v5

    aput v6, v3, v5

    const/4 v5, 0x5

    aget v6, v4, v5

    aput v6, v3, v5

    const/4 v5, 0x6

    aget v6, v4, v5

    aput v6, v3, v5

    const/4 v5, 0x7

    aget v4, v4, v5

    aput v4, v3, v5

    iget v4, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->dir:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;Landroid/graphics/RectF;[FF)V

    return-object v0
.end method

.method public getData()[F
    .locals 7

    const/16 v0, 0xd

    new-array v0, v0, [F

    .line 983
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    const/4 v4, 0x2

    aput v1, v0, v4

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    const/4 v5, 0x3

    aput v1, v0, v5

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->radii:[F

    aget v2, v1, v2

    const/4 v6, 0x4

    aput v2, v0, v6

    aget v2, v1, v3

    const/4 v3, 0x5

    aput v2, v0, v3

    aget v2, v1, v4

    const/4 v4, 0x6

    aput v2, v0, v4

    aget v2, v1, v5

    const/4 v5, 0x7

    aput v2, v0, v5

    const/16 v2, 0x8

    aget v6, v1, v6

    aput v6, v0, v2

    const/16 v2, 0x9

    aget v3, v1, v3

    aput v3, v0, v2

    const/16 v2, 0xa

    aget v3, v1, v4

    aput v3, v0, v2

    const/16 v2, 0xb

    aget v1, v1, v5

    aput v1, v0, v2

    const/16 v1, 0xc

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->dir:F

    aput v2, v0, v1

    return-object v0
.end method

.method public toSVG()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 16

    move-object/from16 v0, p0

    const/16 v1, 0xc

    new-array v1, v1, [F

    .line 987
    iget-object v2, v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v2, v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x1

    aput v2, v1, v4

    iget-object v2, v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    const/4 v5, 0x2

    aput v2, v1, v5

    iget-object v2, v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x3

    aput v2, v1, v6

    iget-object v2, v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->radii:[F

    aget v7, v2, v3

    const/4 v8, 0x4

    aput v7, v1, v8

    aget v7, v2, v4

    const/4 v9, 0x5

    aput v7, v1, v9

    aget v7, v2, v5

    const/4 v10, 0x6

    aput v7, v1, v10

    aget v7, v2, v6

    const/4 v11, 0x7

    aput v7, v1, v11

    aget v7, v2, v8

    const/16 v12, 0x8

    aput v7, v1, v12

    aget v7, v2, v9

    const/16 v13, 0x9

    aput v7, v1, v13

    aget v7, v2, v10

    const/16 v14, 0xa

    aput v7, v1, v14

    aget v2, v2, v11

    const/16 v7, 0xb

    aput v2, v1, v7

    move-object/from16 v2, p1

    .line 988
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 989
    iget-object v2, v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->rect:Landroid/graphics/RectF;

    aget v15, v1, v3

    aget v7, v1, v4

    aget v14, v1, v5

    aget v13, v1, v6

    invoke-virtual {v2, v15, v7, v14, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 990
    iget-object v2, v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$RoundRect;->radii:[F

    aget v7, v1, v8

    aput v7, v2, v3

    aget v3, v1, v9

    .line 991
    aput v3, v2, v4

    aget v3, v1, v10

    .line 992
    aput v3, v2, v5

    aget v3, v1, v11

    .line 993
    aput v3, v2, v6

    aget v3, v1, v12

    .line 994
    aput v3, v2, v8

    const/16 v3, 0x9

    aget v3, v1, v3

    .line 995
    aput v3, v2, v9

    const/16 v3, 0xa

    aget v3, v1, v3

    .line 996
    aput v3, v2, v10

    const/16 v3, 0xb

    aget v1, v1, v3

    .line 997
    aput v1, v2, v11

    return-void
.end method
