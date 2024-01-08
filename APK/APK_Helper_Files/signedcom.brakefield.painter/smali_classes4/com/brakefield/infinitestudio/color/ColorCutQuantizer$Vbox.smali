.class Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vbox"
.end annotation


# instance fields
.field private lowerIndex:I

.field private maxBlue:I

.field private maxGreen:I

.field private maxRed:I

.field private minBlue:I

.field private minGreen:I

.field private minRed:I

.field final synthetic this$0:Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;

.field private upperIndex:I


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;II)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->this$0:Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput p2, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->lowerIndex:I

    .line 171
    iput p3, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->upperIndex:I

    .line 172
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->fitBox()V

    return-void
.end method


# virtual methods
.method canSplit()Z
    .locals 2

    .line 178
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->getColorCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method findSplitPoint()I
    .locals 5

    .line 257
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->getLongestColorDimension()I

    move-result v0

    .line 261
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->this$0:Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;

    iget v2, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->lowerIndex:I

    iget v3, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->upperIndex:I

    invoke-static {v1, v0, v2, v3}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->access$100(Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;III)V

    .line 263
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->this$0:Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->access$000(Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;)[I

    move-result-object v1

    iget v2, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->lowerIndex:I

    iget v3, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->upperIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->sort([III)V

    .line 265
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->this$0:Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;

    iget v2, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->lowerIndex:I

    iget v3, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->upperIndex:I

    invoke-static {v1, v0, v2, v3}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->access$100(Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;III)V

    .line 266
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->midPoint(I)I

    move-result v1

    .line 267
    iget v2, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->lowerIndex:I

    :goto_0
    iget v3, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->upperIndex:I

    if-ge v2, v3, :cond_4

    .line 268
    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->this$0:Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;

    invoke-static {v3}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->access$000(Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;)[I

    move-result-object v3

    aget v3, v3, v2

    const/4 v4, -0x3

    if-eq v0, v4, :cond_2

    const/4 v4, -0x2

    if-eq v0, v4, :cond_1

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    goto :goto_1

    .line 281
    :cond_0
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    if-le v3, v1, :cond_3

    return v2

    .line 276
    :cond_1
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    if-lt v3, v1, :cond_3

    return v2

    .line 271
    :cond_2
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    if-lt v3, v1, :cond_3

    return v2

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    :cond_4
    iget v0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->lowerIndex:I

    return v0
.end method

.method fitBox()V
    .locals 5

    const/16 v0, 0xff

    .line 188
    iput v0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->minBlue:I

    iput v0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->minGreen:I

    iput v0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->minRed:I

    const/4 v0, 0x0

    .line 189
    iput v0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->maxBlue:I

    iput v0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->maxGreen:I

    iput v0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->maxRed:I

    .line 190
    iget v0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->lowerIndex:I

    :goto_0
    iget v1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->upperIndex:I

    if-gt v0, v1, :cond_6

    .line 191
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->this$0:Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->access$000(Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;)[I

    move-result-object v1

    aget v1, v1, v0

    .line 192
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 193
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 194
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 195
    iget v4, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->maxRed:I

    if-le v2, v4, :cond_0

    .line 196
    iput v2, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->maxRed:I

    .line 198
    :cond_0
    iget v4, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->minRed:I

    if-ge v2, v4, :cond_1

    .line 199
    iput v2, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->minRed:I

    .line 201
    :cond_1
    iget v2, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->maxGreen:I

    if-le v3, v2, :cond_2

    .line 202
    iput v3, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->maxGreen:I

    .line 204
    :cond_2
    iget v2, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->minGreen:I

    if-ge v3, v2, :cond_3

    .line 205
    iput v3, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->minGreen:I

    .line 207
    :cond_3
    iget v2, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->maxBlue:I

    if-le v1, v2, :cond_4

    .line 208
    iput v1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->maxBlue:I

    .line 210
    :cond_4
    iget v2, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->minBlue:I

    if-ge v1, v2, :cond_5

    .line 211
    iput v1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->minBlue:I

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method getAverageColor()Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;
    .locals 8

    .line 297
    iget v0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->lowerIndex:I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    iget v5, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->upperIndex:I

    if-gt v0, v5, :cond_0

    .line 298
    iget-object v5, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->this$0:Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;

    invoke-static {v5}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->access$000(Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;)[I

    move-result-object v5

    aget v5, v5, v0

    .line 299
    iget-object v6, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->this$0:Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;

    invoke-static {v6}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->access$200(Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;)Landroid/util/SparseIntArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    add-int/2addr v2, v6

    .line 301
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v1, v7

    .line 302
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v3, v7

    .line 303
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    mul-int/2addr v6, v5

    add-int/2addr v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    int-to-float v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    .line 305
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 306
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v4, v4

    div-float/2addr v4, v1

    .line 307
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 308
    new-instance v4, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;

    invoke-direct {v4, v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;-><init>(IIII)V

    return-object v4
.end method

.method getColorCount()I
    .locals 2

    .line 181
    iget v0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->upperIndex:I

    iget v1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->lowerIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method getLongestColorDimension()I
    .locals 4

    .line 236
    iget v0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->maxRed:I

    iget v1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->minRed:I

    sub-int/2addr v0, v1

    .line 237
    iget v1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->maxGreen:I

    iget v2, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->minGreen:I

    sub-int/2addr v1, v2

    .line 238
    iget v2, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->maxBlue:I

    iget v3, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->minBlue:I

    sub-int/2addr v2, v3

    if-lt v0, v1, :cond_0

    if-lt v0, v2, :cond_0

    const/4 v0, -0x3

    return v0

    :cond_0
    if-lt v1, v0, :cond_1

    if-lt v1, v2, :cond_1

    const/4 v0, -0x2

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method getVolume()I
    .locals 3

    .line 175
    iget v0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->maxRed:I

    iget v1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->minRed:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->maxGreen:I

    iget v2, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->minGreen:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->maxBlue:I

    iget v2, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->minBlue:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    return v0
.end method

.method midPoint(I)I
    .locals 1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 317
    iget p1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->minRed:I

    iget v0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->maxRed:I

    add-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    return p1

    .line 321
    :cond_0
    iget p1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->minBlue:I

    iget v0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->maxBlue:I

    add-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    return p1

    .line 319
    :cond_1
    iget p1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->minGreen:I

    iget v0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->maxGreen:I

    add-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method splitBox()Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;
    .locals 5

    .line 221
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->findSplitPoint()I

    move-result v0

    .line 226
    new-instance v1, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->this$0:Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->upperIndex:I

    invoke-direct {v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;-><init>(Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;II)V

    .line 228
    iput v0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->upperIndex:I

    .line 229
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->fitBox()V

    return-object v1

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not split a box with only 1 color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
