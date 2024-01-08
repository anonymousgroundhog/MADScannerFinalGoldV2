.class public Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;
.super Lcom/brakefield/infinitestudio/image/filters/PhotoFilter;
.source "KMeansFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;
    }
.end annotation


# static fields
.field public static final MAX_LOOPS:I = 0x14

.field public static final MODE_CONTINUOUS:I = 0x1

.field public static final MODE_ITERATIVE:I = 0x2


# instance fields
.field private clusters:[Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;

.field colors:I

.field private hasTransparency:Z

.field mergeTolerance:I

.field mode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/filters/PhotoFilter;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;->mode:I

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;->mergeTolerance:I

    .line 27
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;->hasTransparency:Z

    .line 30
    iput p1, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;->colors:I

    return-void
.end method

.method private createClusters([IIII)[Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;
    .locals 7

    .line 37
    new-array v0, p4, [Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;

    .line 40
    div-int v1, p2, p4

    .line 41
    div-int/2addr p3, p4

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, p4, :cond_0

    .line 43
    new-instance v5, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;

    mul-int v6, v3, p2

    add-int/2addr v6, v4

    aget v6, p1, v6

    invoke-direct {v5, p0, v2, v6}, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;-><init>(Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;II)V

    aput-object v5, v0, v2

    add-int/2addr v4, v1

    add-int/2addr v3, p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private findMinimalCluster(I[Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;)Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;
    .locals 4

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 53
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 54
    aget-object v3, p2, v2

    invoke-virtual {v3, p1}, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->distance(I)I

    move-result v3

    if-ge v3, v1, :cond_0

    .line 57
    aget-object v0, p2, v2

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;)V
    .locals 11

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/16 v2, 0x80

    if-gt v0, v2, :cond_0

    if-le v1, v2, :cond_2

    :cond_0
    const/4 v3, 0x0

    const/high16 v4, 0x43000000    # 128.0f

    if-le v0, v1, :cond_1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    mul-float/2addr v1, v4

    float-to-int v0, v1

    .line 166
    invoke-static {p1, v2, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 168
    invoke-static {p1, v0, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 171
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 172
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    .line 174
    new-array v10, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 177
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0, v10, v8, v9, v0}, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;->apply([III[I)V

    move-object v0, p1

    .line 181
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method

.method public apply([III[I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 186
    iget v5, v0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;->colors:I

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;->createClusters([IIII)[Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;

    move-result-object v5

    iput-object v5, v0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;->clusters:[Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;

    if-eqz v4, :cond_0

    .line 189
    array-length v7, v4

    array-length v5, v5

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_0

    .line 191
    iget-object v8, v0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;->clusters:[Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;

    new-instance v9, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;

    aget v10, v4, v7

    invoke-direct {v9, v0, v7, v10}, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;-><init>(Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;II)V

    aput-object v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    mul-int v4, v2, v3

    .line 196
    new-array v5, v4, [I

    const/4 v7, -0x1

    .line 197
    invoke-static {v5, v7}, Ljava/util/Arrays;->fill([II)V

    const/4 v8, 0x1

    move v9, v8

    const/4 v10, 0x0

    :goto_1
    if-eqz v9, :cond_b

    add-int/2addr v10, v8

    const/16 v9, 0x14

    if-le v10, v9, :cond_1

    goto/16 :goto_8

    :cond_1
    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v3, :cond_7

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v2, :cond_6

    mul-int v13, v11, v2

    add-int/2addr v13, v12

    .line 212
    aget v14, v1, v13

    .line 214
    invoke-static {v14}, Landroid/graphics/Color;->alpha(I)I

    move-result v15

    if-nez v15, :cond_2

    .line 215
    iput-boolean v8, v0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;->hasTransparency:Z

    goto :goto_4

    .line 219
    :cond_2
    iget-object v15, v0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;->clusters:[Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;

    invoke-direct {v0, v14, v15}, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;->findMinimalCluster(I[Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;)Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;

    move-result-object v15

    .line 220
    aget v6, v5, v13

    invoke-virtual {v15}, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->getId()I

    move-result v7

    if-eq v6, v7, :cond_5

    .line 222
    iget v6, v0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;->mode:I

    if-ne v6, v8, :cond_4

    .line 223
    aget v6, v5, v13

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 226
    iget-object v7, v0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;->clusters:[Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;

    aget-object v6, v7, v6

    invoke-virtual {v6, v14}, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->removePixel(I)V

    .line 229
    :cond_3
    invoke-virtual {v15, v14}, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->addPixel(I)V

    .line 235
    :cond_4
    invoke-virtual {v15}, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->getId()I

    move-result v6

    aput v6, v5, v13

    move v9, v8

    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    const/4 v7, -0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v11, v11, 0x1

    const/4 v7, -0x1

    goto :goto_2

    .line 239
    :cond_7
    iget v6, v0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;->mode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_a

    const/4 v6, 0x0

    .line 241
    :goto_5
    iget-object v7, v0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;->clusters:[Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;

    array-length v11, v7

    if-ge v6, v11, :cond_8

    .line 242
    aget-object v7, v7, v6

    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->clear()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_8
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v3, :cond_a

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v2, :cond_9

    mul-int v11, v2, v6

    add-int/2addr v11, v7

    .line 246
    aget v12, v5, v11

    .line 248
    iget-object v13, v0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;->clusters:[Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;

    aget-object v12, v13, v12

    aget v11, v1, v11

    invoke-virtual {v12, v11}, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->addPixel(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_a
    const/4 v7, -0x1

    goto :goto_1

    .line 257
    :cond_b
    :goto_8
    iget v6, v0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;->mergeTolerance:I

    if-lez v6, :cond_13

    .line 258
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 259
    iget-object v7, v0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;->clusters:[Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_9
    if-ge v9, v8, :cond_c

    aget-object v10, v7, v9

    .line 260
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 262
    :cond_c
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 264
    :goto_a
    iget-object v9, v0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;->clusters:[Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;

    array-length v10, v9

    if-ge v8, v10, :cond_13

    .line 265
    aget-object v9, v9, v8

    if-nez v9, :cond_d

    goto :goto_e

    .line 268
    :cond_d
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 269
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_e
    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;

    if-eq v9, v12, :cond_e

    .line 271
    invoke-virtual {v12}, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->getRGB()I

    move-result v13

    invoke-virtual {v9, v13}, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->distance(I)I

    move-result v13

    iget v14, v0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;->mergeTolerance:I

    if-ge v13, v14, :cond_e

    .line 272
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 277
    :cond_f
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;

    const/4 v12, 0x0

    :goto_d
    if-ge v12, v4, :cond_11

    .line 279
    aget v13, v5, v12

    iget v14, v11, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->id:I

    if-ne v13, v14, :cond_10

    .line 280
    iget v13, v9, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->id:I

    aput v13, v5, v12

    :cond_10
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 281
    :cond_11
    invoke-virtual {v9, v11}, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->merge(Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;)V

    .line 282
    invoke-interface {v6, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 283
    iget-object v12, v0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;->clusters:[Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;

    iget v11, v11, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->id:I

    const/4 v13, 0x0

    aput-object v13, v12, v11

    goto :goto_c

    .line 285
    :cond_12
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_13
    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_16

    const/4 v6, 0x0

    :goto_10
    if-ge v6, v2, :cond_15

    mul-int v7, v2, v4

    add-int/2addr v7, v6

    .line 292
    aget v8, v5, v7

    const/4 v9, -0x1

    if-eq v8, v9, :cond_14

    .line 294
    iget-object v10, v0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;->clusters:[Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;

    aget-object v8, v10, v8

    invoke-virtual {v8}, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->getRGB()I

    move-result v8

    aput v8, v1, v7

    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_15
    const/4 v9, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_16
    return-void
.end method

.method public chain(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method colourDistance(II)F
    .locals 5

    .line 323
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 324
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 325
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 326
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    sub-int/2addr p1, p2

    const/high16 p2, 0x43800000    # 256.0f

    div-float v3, v0, p2

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr v3, v4

    mul-int/2addr v1, v1

    int-to-float v1, v1

    mul-float/2addr v3, v1

    mul-int/2addr v2, v2

    int-to-float v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    const/high16 v1, 0x437f0000    # 255.0f

    sub-float/2addr v1, v0

    div-float/2addr v1, p2

    add-float/2addr v1, v4

    mul-int/2addr p1, p1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    add-float/2addr v3, v1

    float-to-double p1, v3

    .line 329
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public getClusters()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;",
            ">;"
        }
    .end annotation

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 311
    :goto_0
    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;->clusters:[Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 312
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 313
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public hasTransparency()Z
    .locals 1

    .line 318
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;->hasTransparency:Z

    return v0
.end method

.method public isLinear()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
