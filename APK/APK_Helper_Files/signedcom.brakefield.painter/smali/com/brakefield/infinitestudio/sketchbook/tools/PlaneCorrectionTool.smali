.class public Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;
.super Ljava/lang/Object;
.source "PlaneCorrectionTool.java"


# static fields
.field public static final LINE:I = 0x0

.field public static final PLANE:I = 0x1

.field private static a:Lcom/brakefield/infinitestudio/geometry/Point;

.field private static activePoint:Lcom/brakefield/infinitestudio/geometry/Point;

.field private static b:Lcom/brakefield/infinitestudio/geometry/Point;

.field private static c:Lcom/brakefield/infinitestudio/geometry/Point;

.field static cursor:Landroid/graphics/Paint;

.field private static d:Lcom/brakefield/infinitestudio/geometry/Point;

.field private static downX:F

.field private static downY:F

.field private static filter:Landroid/graphics/Paint;

.field private static matrix:Landroid/graphics/Matrix;

.field private static mode:I

.field private static reverseMatrix:Landroid/graphics/Matrix;

.field static set:Z

.field private static show:Z

.field static stroke:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->stroke:Landroid/graphics/Paint;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->cursor:Landroid/graphics/Paint;

    .line 28
    sput-boolean v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->set:Z

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->filter:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/graphics/Matrix;)V
    .locals 0

    return-void
.end method

.method public static draw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v6, p0

    .line 56
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->mode:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/high16 v7, 0x41200000    # 10.0f

    const/4 v8, 0x0

    if-nez v0, :cond_3

    .line 58
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->show:Z

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v9, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v9, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v10, v10, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, v9, v10}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 61
    new-instance v9, Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v10, v10, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v11, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v11, v11, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v9, v10, v11}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 63
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->reverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v10}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 64
    sget-object v10, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->reverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v10}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 66
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    new-array v12, v5, [F

    .line 67
    iget v5, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v5, v12, v4

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v0, v12, v3

    iget v0, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v0, v12, v2

    iget v0, v9, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v0, v12, v1

    const/4 v13, 0x0

    .line 68
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->getAdjustedLine()[F

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x2

    move-object v11, v10

    .line 67
    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 71
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->getCurrentLayerBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 72
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->getCurrentLayerBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 70
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 75
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 76
    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 77
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->getCurrentLayerBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->filter:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v8, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 78
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 80
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->matrix:Landroid/graphics/Matrix;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->filter:Landroid/graphics/Paint;

    invoke-virtual {v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->getCurrentLayerBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->matrix:Landroid/graphics/Matrix;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->filter:Landroid/graphics/Paint;

    invoke-virtual {v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 85
    :goto_0
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->show:Z

    if-nez v1, :cond_1

    .line 86
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->stroke:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 89
    :cond_1
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_2

    .line 90
    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v6, v0, v1, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 92
    :cond_2
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_c

    .line 93
    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v6, v0, v1, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 97
    :cond_3
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->d:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->show:Z

    if-eqz v0, :cond_4

    .line 99
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/16 v9, 0x8

    new-array v10, v9, [F

    .line 100
    sget-object v9, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v9, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v9, v10, v4

    sget-object v4, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v4, v10, v3

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v3, v10, v2

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v2, v10, v1

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v1, v10, v5

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v2, 0x5

    aput v1, v10, v2

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->d:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v2, 0x6

    aput v1, v10, v2

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->d:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v2, 0x7

    aput v1, v10, v2

    const/4 v11, 0x0

    .line 101
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->getAdjustedPlane()[F

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x4

    move-object v9, v0

    .line 100
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 104
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->getCurrentLayerBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 105
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->getCurrentLayerBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 103
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 106
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 108
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 109
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 110
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->getCurrentLayerBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v3, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->filter:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v8, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 111
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 113
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->matrix:Landroid/graphics/Matrix;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->filter:Landroid/graphics/Paint;

    invoke-virtual {v6, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 116
    :cond_4
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->getCurrentLayerBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->matrix:Landroid/graphics/Matrix;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->filter:Landroid/graphics/Paint;

    invoke-virtual {v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 118
    :goto_1
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_5

    .line 119
    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v6, v0, v1, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 121
    :cond_5
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_6

    .line 122
    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v6, v0, v1, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 124
    :cond_6
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_7

    .line 125
    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v6, v0, v1, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 127
    :cond_7
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->d:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_8

    .line 128
    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->d:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v6, v0, v1, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 131
    :cond_8
    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->show:Z

    if-nez v0, :cond_c

    .line 132
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_9

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v1, :cond_9

    .line 133
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->stroke:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 135
    :cond_9
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_a

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v1, :cond_a

    .line 136
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->stroke:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 138
    :cond_a
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_b

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->d:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v1, :cond_b

    .line 139
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->d:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->d:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->stroke:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 141
    :cond_b
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->d:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v0, :cond_c

    .line 142
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->d:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->d:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->stroke:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 147
    :cond_c
    :goto_2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 148
    invoke-virtual {v0, v8, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 149
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->getCurrentLayerBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 150
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->getCurrentLayerBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 151
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->getCurrentLayerBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 152
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/BitmapManager;->getCurrentLayerBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 153
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 155
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 157
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private static getAdjustedLine()[F
    .locals 12

    .line 167
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 168
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 170
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getCenter()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 171
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v2, v2

    float-to-double v4, v1

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    sub-double/2addr v2, v8

    double-to-float v1, v2

    .line 172
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v2, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    sub-double/2addr v2, v8

    double-to-float v2, v2

    .line 173
    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    float-to-double v8, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    double-to-float v3, v8

    .line 174
    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    float-to-double v8, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v8, v4

    double-to-float v0, v8

    .line 176
    sget-object v4, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v4, v5, v1, v2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v4

    .line 177
    sget-object v5, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget-object v6, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v5, v6, v1, v2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v5

    .line 179
    new-instance v6, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v6, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 180
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, v3, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 182
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->reverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 183
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->reverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    cmpg-float v0, v4, v5

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x4

    if-gez v0, :cond_0

    new-array v0, v7, [F

    .line 186
    iget v7, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v7, v0, v5

    iget v5, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v5, v0, v4

    iget v4, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v4, v0, v3

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v1, v0, v2

    return-object v0

    :cond_0
    new-array v0, v7, [F

    .line 188
    iget v7, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v7, v0, v5

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v1, v0, v4

    iget v1, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aput v1, v0, v3

    iget v1, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    aput v1, v0, v2

    return-object v0
.end method

.method private static getAdjustedPlane()[F
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 162
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v2, 0x1

    aput v1, v0, v2

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v2, 0x2

    aput v1, v0, v2

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v1, v2

    const/4 v3, 0x3

    aput v1, v0, v3

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    add-float/2addr v1, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/high16 v2, 0x40a00000    # 5.0f

    sub-float/2addr v1, v2

    const/4 v3, 0x5

    aput v1, v0, v3

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->d:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v3, 0x6

    aput v1, v0, v3

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->d:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v1, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    return-object v0
.end method

.method private static getClosestPoint(FF)Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 6

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v1, :cond_0

    .line 230
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_0
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v1, :cond_1

    .line 232
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_1
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v1, :cond_2

    .line 234
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_2
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->d:Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v1, :cond_3

    .line 236
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 241
    iget v4, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {p0, p1, v4, v5}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v4

    if-eqz v1, :cond_5

    cmpg-float v5, v4, v2

    if-gez v5, :cond_4

    :cond_5
    move-object v1, v3

    move v2, v4

    goto :goto_0

    :cond_6
    return-object v1
.end method

.method public static init(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 1

    .line 43
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->stroke:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->stroke:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->stroke:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->stroke:Landroid/graphics/Paint;

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 p0, 0x1

    .line 47
    sput-boolean p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->set:Z

    .line 49
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->filter:Landroid/graphics/Paint;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 51
    sput-object p1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->matrix:Landroid/graphics/Matrix;

    .line 52
    sput-object p2, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->reverseMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public static onDown(FF)V
    .locals 1

    .line 192
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->mode:I

    if-nez v0, :cond_2

    .line 193
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 195
    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->activePoint:Lcom/brakefield/infinitestudio/geometry/Point;

    goto :goto_0

    .line 196
    :cond_0
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    if-nez v0, :cond_1

    .line 197
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 198
    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->activePoint:Lcom/brakefield/infinitestudio/geometry/Point;

    goto :goto_0

    .line 200
    :cond_1
    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->getClosestPoint(FF)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->activePoint:Lcom/brakefield/infinitestudio/geometry/Point;

    goto :goto_0

    .line 203
    :cond_2
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    if-nez v0, :cond_3

    .line 204
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 205
    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->activePoint:Lcom/brakefield/infinitestudio/geometry/Point;

    goto :goto_0

    .line 206
    :cond_3
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    if-nez v0, :cond_4

    .line 207
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 208
    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->activePoint:Lcom/brakefield/infinitestudio/geometry/Point;

    goto :goto_0

    .line 209
    :cond_4
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    if-nez v0, :cond_5

    .line 210
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->c:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 211
    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->activePoint:Lcom/brakefield/infinitestudio/geometry/Point;

    goto :goto_0

    .line 212
    :cond_5
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->d:Lcom/brakefield/infinitestudio/geometry/Point;

    if-nez v0, :cond_6

    .line 213
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->d:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 214
    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->activePoint:Lcom/brakefield/infinitestudio/geometry/Point;

    goto :goto_0

    .line 216
    :cond_6
    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->getClosestPoint(FF)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->activePoint:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 217
    iput p0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 218
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->activePoint:Lcom/brakefield/infinitestudio/geometry/Point;

    iput p1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 222
    :goto_0
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->downX:F

    .line 223
    sput p1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->downY:F

    return-void
.end method

.method public static onMove(FF)V
    .locals 3

    .line 252
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->activePoint:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->downX:F

    sub-float v2, p0, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 253
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->activePoint:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->downY:F

    sub-float v2, p1, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 254
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->downX:F

    .line 255
    sput p1, Lcom/brakefield/infinitestudio/sketchbook/tools/PlaneCorrectionTool;->downY:F

    return-void
.end method

.method public static onUp()V
    .locals 0

    return-void
.end method
