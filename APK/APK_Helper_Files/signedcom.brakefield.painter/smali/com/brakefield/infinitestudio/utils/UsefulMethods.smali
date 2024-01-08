.class public Lcom/brakefield/infinitestudio/utils/UsefulMethods;
.super Ljava/lang/Object;
.source "UsefulMethods.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dist(FFFF)F
    .locals 4

    sub-float/2addr p0, p2

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 14
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float/2addr p1, p3

    float-to-double p0, p1

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static getAdjustedValue(FFF)F
    .locals 0

    mul-float/2addr p1, p2

    div-float/2addr p1, p0

    return p1
.end method

.method public static rand(FF)D
    .locals 4

    float-to-double v0, p0

    .line 6
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    sub-float/2addr p1, p0

    float-to-double p0, p1

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    return-wide v0
.end method
