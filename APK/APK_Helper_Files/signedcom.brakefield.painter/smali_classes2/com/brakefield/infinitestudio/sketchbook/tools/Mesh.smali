.class public Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;
.super Ljava/lang/Object;
.source "Mesh.java"


# instance fields
.field colorOffset:I

.field colors:[I

.field columns:I

.field count:I

.field gridPaint:Landroid/graphics/Paint;

.field height:I

.field private final inverse:Landroid/graphics/Matrix;

.field private final matrix:Landroid/graphics/Matrix;

.field origs:[F

.field rows:I

.field vertOffset:I

.field verts:[F

.field width:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 7

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->gridPaint:Landroid/graphics/Paint;

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->matrix:Landroid/graphics/Matrix;

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->inverse:Landroid/graphics/Matrix;

    .line 32
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->gridPaint:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->width:I

    .line 35
    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->height:I

    .line 36
    iput p3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->columns:I

    .line 37
    iput p4, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->rows:I

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p4, 0x1

    mul-int/2addr v0, v1

    .line 38
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->count:I

    mul-int/lit8 v1, v0, 0x2

    .line 39
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->verts:[F

    mul-int/lit8 v0, v0, 0x2

    .line 40
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->origs:[F

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-gt v1, p4, :cond_1

    int-to-float v3, p2

    int-to-float v4, v1

    mul-float/2addr v3, v4

    int-to-float v4, p4

    div-float/2addr v3, v4

    move v4, v0

    :goto_1
    if-gt v4, p3, :cond_0

    int-to-float v5, p1

    int-to-float v6, v4

    mul-float/2addr v5, v6

    int-to-float v6, p3

    div-float/2addr v5, v6

    .line 47
    iget-object v6, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->verts:[F

    invoke-direct {p0, v6, v2, v5, v3}, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->setXY([FIFF)V

    .line 48
    iget-object v6, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->origs:[F

    invoke-direct {p0, v6, v2, v5, v3}, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->setXY([FIFF)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->matrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->inverse:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 53
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->vertOffset:I

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->colors:[I

    .line 55
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->colorOffset:I

    return-void
.end method

.method private setXY([FIFF)V
    .locals 1

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 v0, p2, 0x0

    .line 89
    aput p3, p1, v0

    add-int/lit8 p2, p2, 0x1

    .line 90
    aput p4, p1, p2

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V
    .locals 9

    .line 94
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->columns:I

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->rows:I

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->verts:[F

    iget v5, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->vertOffset:I

    iget-object v6, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->colors:[I

    iget v7, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->colorOffset:I

    move-object v0, p1

    move-object v1, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    return-void
.end method

.method public getPoints()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/Point;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 74
    :goto_0
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->verts:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 75
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->verts:[F

    aget v4, v3, v1

    add-int/lit8 v5, v1, 0x1

    aget v3, v3, v5

    invoke-direct {v2, v4, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public prepareColors()V
    .locals 1

    .line 59
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->count:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->colors:[I

    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    .line 98
    :goto_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->origs:[F

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->verts:[F

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 100
    aget v1, v1, v0

    aput v1, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setColor(II)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->colors:[I

    aput p2, v0, p1

    return-void
.end method

.method public setFromPoints(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/Point;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 67
    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->verts:[F

    iget v3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->setXY([FIFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVertex(IFF)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->verts:[F

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->setXY([FIFF)V

    return-void
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/Mesh;->verts:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method
