.class Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern$CCielab;
.super Ljava/lang/Object;
.source "ColourLovers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CCielab"
.end annotation


# instance fields
.field L:F

.field a:F

.field b:F

.field final synthetic this$0:Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 297
    iput-object v1, v0, Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern$CCielab;->this$0:Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 300
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 301
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 302
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-double v1, v1

    const-wide v5, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpl-double v7, v1, v5

    const-wide v8, 0x4003333333333333L    # 2.4

    const-wide v10, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v12, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v14, 0x4029d70a3d70a3d7L    # 12.92

    if-lez v7, :cond_0

    add-double/2addr v1, v12

    div-double/2addr v1, v10

    .line 304
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    goto :goto_0

    :cond_0
    div-double/2addr v1, v14

    :goto_0
    double-to-float v1, v1

    float-to-double v2, v3

    cmpl-double v7, v2, v5

    if-lez v7, :cond_1

    add-double/2addr v2, v12

    div-double/2addr v2, v10

    .line 306
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    goto :goto_1

    :cond_1
    div-double/2addr v2, v14

    :goto_1
    double-to-float v2, v2

    float-to-double v3, v4

    cmpl-double v5, v3, v5

    if-lez v5, :cond_2

    add-double/2addr v3, v12

    div-double/2addr v3, v10

    .line 308
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    goto :goto_2

    :cond_2
    div-double/2addr v3, v14

    :goto_2
    double-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v1, v4

    mul-float/2addr v2, v4

    mul-float/2addr v3, v4

    float-to-double v4, v1

    const-wide v6, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double/2addr v6, v4

    float-to-double v1, v2

    const-wide v8, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double/2addr v8, v1

    add-double/2addr v6, v8

    float-to-double v8, v3

    const-wide v10, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double/2addr v10, v8

    add-double/2addr v6, v10

    double-to-float v3, v6

    const-wide v6, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v6, v4

    const-wide v10, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v10, v1

    add-double/2addr v6, v10

    const-wide v10, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v10, v8

    add-double/2addr v6, v10

    double-to-float v6, v6

    const-wide v10, 0x3f93c36113404ea5L    # 0.0193

    mul-double/2addr v4, v10

    const-wide v10, 0x3fbe83e425aee632L    # 0.1192

    mul-double/2addr v1, v10

    add-double/2addr v4, v1

    const-wide v1, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double/2addr v8, v1

    add-double/2addr v4, v8

    double-to-float v1, v4

    float-to-double v2, v3

    const-wide v4, 0x4057c3020c49ba5eL    # 95.047

    div-double/2addr v2, v4

    double-to-float v2, v2

    float-to-double v3, v6

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    double-to-float v3, v3

    float-to-double v4, v1

    const-wide v6, 0x405b3883126e978dL    # 108.883

    div-double/2addr v4, v6

    double-to-float v1, v4

    float-to-double v4, v2

    const-wide v6, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v2, v4, v6

    const-wide v8, 0x3fd5555555555555L    # 0.3333333333333333

    const-wide v10, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    const-wide v12, 0x401f25e353f7ced9L    # 7.787

    if-lez v2, :cond_3

    .line 325
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    goto :goto_3

    :cond_3
    mul-double/2addr v4, v12

    add-double/2addr v4, v10

    :goto_3
    double-to-float v2, v4

    float-to-double v3, v3

    cmpl-double v5, v3, v6

    if-lez v5, :cond_4

    .line 327
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    goto :goto_4

    :cond_4
    mul-double/2addr v3, v12

    add-double/2addr v3, v10

    :goto_4
    double-to-float v3, v3

    float-to-double v4, v1

    cmpl-double v1, v4, v6

    if-lez v1, :cond_5

    .line 329
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    goto :goto_5

    :cond_5
    mul-double/2addr v4, v12

    add-double/2addr v4, v10

    :goto_5
    double-to-float v1, v4

    const-wide/high16 v4, 0x405d000000000000L    # 116.0

    float-to-double v6, v3

    mul-double/2addr v6, v4

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    sub-double/2addr v6, v4

    double-to-float v4, v6

    .line 332
    iput v4, v0, Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern$CCielab;->L:F

    sub-float/2addr v2, v3

    float-to-double v4, v2

    const-wide v6, 0x407f400000000000L    # 500.0

    mul-double/2addr v4, v6

    double-to-float v2, v4

    .line 333
    iput v2, v0, Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern$CCielab;->a:F

    sub-float/2addr v3, v1

    float-to-double v1, v3

    const-wide/high16 v3, 0x4069000000000000L    # 200.0

    mul-double/2addr v1, v3

    double-to-float v1, v1

    .line 334
    iput v1, v0, Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern$CCielab;->b:F

    return-void
.end method


# virtual methods
.method deltaE(Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern$CCielab;)F
    .locals 9

    .line 342
    iget v0, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern$CCielab;->a:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern$CCielab;->b:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 343
    iget v1, p1, Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern$CCielab;->a:F

    mul-float/2addr v1, v1

    iget v2, p1, Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern$CCielab;->b:F

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 344
    iget v2, p1, Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern$CCielab;->L:F

    iget v3, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern$CCielab;->L:F

    sub-float v4, v2, v3

    sub-float/2addr v1, v0

    sub-float v5, v3, v2

    sub-float/2addr v3, v2

    mul-float/2addr v5, v3

    .line 346
    iget v2, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern$CCielab;->a:F

    iget v3, p1, Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern$CCielab;->a:F

    sub-float v6, v2, v3

    sub-float/2addr v2, v3

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    iget v2, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern$CCielab;->b:F

    iget p1, p1, Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern$CCielab;->b:F

    sub-float v3, v2, p1

    sub-float/2addr v2, p1

    mul-float/2addr v3, v2

    add-float/2addr v5, v3

    float-to-double v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p1, v2

    float-to-double v2, p1

    .line 349
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v3, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    add-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    mul-float/2addr p1, p1

    mul-float v2, v4, v4

    sub-float/2addr p1, v2

    mul-float v2, v1, v1

    sub-float/2addr p1, v2

    float-to-double v2, p1

    .line 350
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    float-to-double v2, v0

    const-wide v5, 0x3fa70a3d70a3d70aL    # 0.045

    mul-double/2addr v5, v2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v7

    double-to-float v0, v5

    const-wide v5, 0x3f8eb851eb851eb8L    # 0.015

    mul-double/2addr v2, v5

    add-double/2addr v2, v7

    double-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v4, v3

    mul-float/2addr v0, v3

    div-float/2addr v1, v0

    mul-float/2addr v3, v2

    div-float/2addr p1, v3

    float-to-double v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 359
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    float-to-double v1, v1

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v1, p1

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p1, v1

    add-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method
