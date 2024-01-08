.class public Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;
.super Ljava/lang/Object;
.source "ColourLovers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/color/ColourLovers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Palette"
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

.field public widths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 123
    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->title:Ljava/lang/String;

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->colors:Ljava/util/List;

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->widths:Ljava/util/List;

    .line 126
    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->imageUrl:Ljava/lang/String;

    .line 131
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addColor(Lcom/brakefield/infinitestudio/color/ColourLovers$Colour;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->colors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWidth(F)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->widths:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 17

    move-object/from16 v0, p0

    .line 167
    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v9, v2

    move v2, v1

    move v3, v8

    :goto_0
    div-float v2, v9, v2

    float-to-int v2, v2

    mul-int v4, v2, v3

    .line 174
    iget-object v5, v0, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->colors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    int-to-float v2, v3

    div-float v2, v1, v2

    goto :goto_0

    .line 181
    :cond_0
    iget-object v3, v0, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->colors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v10, v3

    int-to-float v3, v10

    div-float v11, v1, v3

    .line 184
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->colors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v1, v2

    if-nez v1, :cond_1

    move v12, v2

    move v13, v12

    goto :goto_2

    :cond_1
    if-le v10, v8, :cond_3

    move/from16 v16, v2

    move v2, v1

    move/from16 v1, v16

    :goto_1
    add-int/lit8 v3, v10, -0x1

    add-int/2addr v3, v2

    add-int/lit8 v4, v1, -0x1

    if-gt v3, v4, :cond_2

    add-int/lit8 v1, v1, -0x1

    move v2, v3

    goto :goto_1

    :cond_2
    move v12, v1

    move v13, v2

    goto :goto_2

    :cond_3
    move v13, v1

    move v12, v2

    :goto_2
    int-to-float v1, v12

    div-float v14, v9, v1

    const/4 v1, 0x0

    move v15, v1

    .line 197
    :goto_3
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->colors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_5

    .line 199
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->colors:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/color/ColourLovers$Colour;

    iget v1, v1, Lcom/brakefield/infinitestudio/color/ColourLovers$Colour;->color:I

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    div-int v1, v15, v12

    .line 203
    rem-int v2, v15, v12

    add-int/lit8 v3, v10, -0x1

    if-ne v1, v3, :cond_4

    int-to-float v3, v13

    div-float v3, v9, v3

    goto :goto_4

    :cond_4
    move v3, v14

    :goto_4
    int-to-float v2, v2

    mul-float/2addr v2, v3

    int-to-float v1, v1

    mul-float v4, v11, v1

    add-float v5, v2, v3

    add-float v6, v4, v11

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    .line 209
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public getAverageBrightness()F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 148
    :goto_0
    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->colors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v2, 0x3

    new-array v2, v2, [F

    .line 150
    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->colors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/color/ColourLovers$Colour;

    iget v3, v3, Lcom/brakefield/infinitestudio/color/ColourLovers$Colour;->color:I

    invoke-static {v3, v2}, Lcom/brakefield/infinitestudio/color/HSLColor;->fromRGB(I[F)[F

    const/4 v3, 0x2

    aget v2, v2, v3

    .line 151
    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->widths:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getAverageColor()I
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 158
    :goto_0
    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->colors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 159
    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->colors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/color/ColourLovers$Colour;

    iget v3, v3, Lcom/brakefield/infinitestudio/color/ColourLovers$Colour;->color:I

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->colors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->colors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    :cond_1
    long-to-int v0, v0

    return v0
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->imageUrl:Ljava/lang/String;

    return-void
.end method
