.class public Lcom/brakefield/painter/video/Dimensions;
.super Ljava/lang/Object;
.source "Dimensions.java"


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/brakefield/painter/video/Dimensions;->width:I

    .line 10
    iput p2, p0, Lcom/brakefield/painter/video/Dimensions;->height:I

    return-void
.end method


# virtual methods
.method public getCropScale(II)F
    .locals 1

    .line 20
    iget v0, p0, Lcom/brakefield/painter/video/Dimensions;->width:I

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 21
    iget p1, p0, Lcom/brakefield/painter/video/Dimensions;->height:I

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 22
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public getFitScale(II)F
    .locals 1

    .line 14
    iget v0, p0, Lcom/brakefield/painter/video/Dimensions;->width:I

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 15
    iget p1, p0, Lcom/brakefield/painter/video/Dimensions;->height:I

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 16
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method
