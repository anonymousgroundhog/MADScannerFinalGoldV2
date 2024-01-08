.class public Landroidx/input/motionprediction/kalman/matrix/DVector2;
.super Ljava/lang/Object;
.source "DVector2.java"


# instance fields
.field public a1:D

.field public a2:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public magnitude()D
    .locals 4

    .line 38
    iget-wide v0, p0, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    iget-wide v2, p0, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public set(Landroidx/input/motionprediction/kalman/matrix/DVector2;)V
    .locals 2

    .line 43
    iget-wide v0, p1, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    iput-wide v0, p0, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    .line 44
    iget-wide v0, p1, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    iput-wide v0, p0, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    return-void
.end method
