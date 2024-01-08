.class public final Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Swatch"
.end annotation


# instance fields
.field final mBlue:I

.field final mGreen:I

.field private mHsl:[F

.field final mPopulation:I

.field final mRed:I

.field final mRgb:I


# direct methods
.method constructor <init>(II)V
    .locals 1

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;->mRed:I

    .line 404
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;->mGreen:I

    .line 405
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;->mBlue:I

    .line 406
    iput p1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;->mRgb:I

    .line 407
    iput p2, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;->mPopulation:I

    return-void
.end method

.method constructor <init>(IIII)V
    .locals 0

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput p1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;->mRed:I

    .line 411
    iput p2, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;->mGreen:I

    .line 412
    iput p3, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;->mBlue:I

    .line 413
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;->mRgb:I

    .line 414
    iput p4, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;->mPopulation:I

    return-void
.end method


# virtual methods
.method public getHsl()[F
    .locals 4

    .line 429
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;->mHsl:[F

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 431
    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;->mHsl:[F

    .line 432
    iget v1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;->mRed:I

    iget v2, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;->mGreen:I

    iget v3, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;->mBlue:I

    invoke-static {v1, v2, v3, v0}, Lcom/brakefield/infinitestudio/color/ColorUtils;->RGBtoHSL(III[F)V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;->mHsl:[F

    return-object v0
.end method

.method public getPopulation()I
    .locals 1

    .line 440
    iget v0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;->mPopulation:I

    return v0
.end method

.method public getRgb()I
    .locals 1

    .line 420
    iget v0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;->mRgb:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 445
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;->getRgb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v1, Landroidx/core/view/contentcapture/cO/WfeUtUoIBm;->VONuydolW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 446
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;->getHsl()[F

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "][Population: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 447
    iget v1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;->mPopulation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
