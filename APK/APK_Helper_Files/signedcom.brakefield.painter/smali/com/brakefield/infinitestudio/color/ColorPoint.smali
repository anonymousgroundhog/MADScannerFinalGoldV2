.class public Lcom/brakefield/infinitestudio/color/ColorPoint;
.super Lcom/brakefield/infinitestudio/geometry/Point;
.source "ColorPoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/geometry/Point;",
        "Ljava/lang/Comparable<",
        "Lcom/brakefield/infinitestudio/color/ColorPoint;",
        ">;"
    }
.end annotation


# instance fields
.field public color:[F

.field public f:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 7
    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPoint;->color:[F

    return-void
.end method

.method public constructor <init>(FFF[F)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 22
    iput-object p4, p0, Lcom/brakefield/infinitestudio/color/ColorPoint;->color:[F

    .line 23
    iput p3, p0, Lcom/brakefield/infinitestudio/color/ColorPoint;->f:F

    return-void
.end method

.method public constructor <init>(F[F)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0, v0}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 16
    iput-object p2, p0, Lcom/brakefield/infinitestudio/color/ColorPoint;->color:[F

    .line 17
    iput p1, p0, Lcom/brakefield/infinitestudio/color/ColorPoint;->f:F

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/brakefield/infinitestudio/color/ColorPoint;)I
    .locals 2

    .line 34
    iget v0, p0, Lcom/brakefield/infinitestudio/color/ColorPoint;->f:F

    const v1, 0x49742400    # 1000000.0f

    mul-float/2addr v0, v1

    iget p1, p1, Lcom/brakefield/infinitestudio/color/ColorPoint;->f:F

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 5
    check-cast p1, Lcom/brakefield/infinitestudio/color/ColorPoint;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/color/ColorPoint;->compareTo(Lcom/brakefield/infinitestudio/color/ColorPoint;)I

    move-result p1

    return p1
.end method

.method public getVec4()Ljava/lang/String;
    .locals 5

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "vec4("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/ColorPoint;->color:[F

    const/4 v2, 0x1

    aget v2, v1, v2

    const/4 v3, 0x0

    aget v1, v1, v3

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/ColorPoint;->color:[F

    const/4 v4, 0x2

    aget v4, v2, v4

    aget v2, v2, v3

    mul-float/2addr v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/ColorPoint;->color:[F

    const/4 v4, 0x3

    aget v4, v2, v4

    aget v2, v2, v3

    mul-float/2addr v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/ColorPoint;->color:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
