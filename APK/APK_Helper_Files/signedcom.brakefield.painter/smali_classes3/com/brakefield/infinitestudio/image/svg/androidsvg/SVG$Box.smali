.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;
.super Ljava/lang/Object;
.source "SVG.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Box"
.end annotation


# instance fields
.field height:F

.field minX:F

.field minY:F

.field width:F


# direct methods
.method constructor <init>(FFFF)V
    .locals 0

    .line 972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 973
    iput p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    .line 974
    iput p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    .line 975
    iput p3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    .line 976
    iput p4, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    return-void
.end method

.method constructor <init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;)V
    .locals 1

    .line 980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 981
    iget v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    .line 982
    iget v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    .line 983
    iget v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    .line 984
    iget p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    iput p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    return-void
.end method

.method static fromLimits(FFFF)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;
    .locals 1

    .line 989
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object v0
.end method


# virtual methods
.method maxX()F
    .locals 2

    .line 997
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    add-float/2addr v0, v1

    return v0
.end method

.method maxY()F
    .locals 2

    .line 998
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    add-float/2addr v0, v1

    return v0
.end method

.method toRectF()Landroid/graphics/RectF;
    .locals 5

    .line 994
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->maxX()F

    move-result v3

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->maxY()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method union(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;)V
    .locals 2

    .line 1002
    iget v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    .line 1003
    :cond_0
    iget v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    .line 1004
    :cond_1
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->maxX()F

    move-result v0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->maxX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->maxX()F

    move-result v0

    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    .line 1005
    :cond_2
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->maxY()F

    move-result v0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->maxY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->maxY()F

    move-result p1

    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->minY:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    :cond_3
    return-void
.end method
