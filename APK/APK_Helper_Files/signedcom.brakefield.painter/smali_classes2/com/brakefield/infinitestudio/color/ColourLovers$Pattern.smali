.class public Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern;
.super Ljava/lang/Object;
.source "ColourLovers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/color/ColourLovers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pattern"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern$CCielab;
    }
.end annotation


# instance fields
.field public colors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/color/ColourLovers$Colour;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public localURL:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 217
    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern;->title:Ljava/lang/String;

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern;->colors:Ljava/util/List;

    .line 219
    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern;->imageUrl:Ljava/lang/String;

    .line 224
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addColor(Lcom/brakefield/infinitestudio/color/ColourLovers$Colour;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern;->colors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method colourDistance(II)F
    .locals 5

    .line 285
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 286
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 287
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 288
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

    .line 289
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method protected getIndexedPattern(Landroid/graphics/Bitmap;Ljava/util/List;Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 241
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    .line 243
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 244
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 245
    new-instance v5, Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern$CCielab;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v5, v0, v4}, Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern$CCielab;-><init>(Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern;I)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 249
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v5, v3, v4

    .line 251
    new-array v14, v5, [I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p1

    move-object v7, v14

    move v9, v3

    move v12, v3

    move v13, v4

    .line 253
    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_4

    .line 257
    new-instance v8, Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern$CCielab;

    aget v9, v14, v7

    invoke-direct {v8, v0, v9}, Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern$CCielab;-><init>(Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern;I)V

    const/4 v9, -0x1

    const/4 v10, 0x0

    move v11, v6

    move v12, v9

    :goto_2
    if-ge v11, v1, :cond_3

    .line 266
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern$CCielab;

    .line 267
    invoke-virtual {v8, v13}, Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern$CCielab;->deltaE(Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern$CCielab;)F

    move-result v13

    if-eq v12, v9, :cond_1

    cmpg-float v15, v13, v10

    if-gez v15, :cond_2

    :cond_1
    move v12, v11

    move v10, v13

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v10, p3

    .line 277
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v14, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 280
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {v14, v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 2

    const-string v0, ".s3.amazonaws.com"

    const-string v1, ""

    .line 233
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "static"

    .line 234
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "colourlovers.com"

    const-string/jumbo v1, "static.colourlovers.com"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "http:"

    const-string v1, "https:"

    .line 235
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 236
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Pattern;->imageUrl:Ljava/lang/String;

    return-void
.end method
