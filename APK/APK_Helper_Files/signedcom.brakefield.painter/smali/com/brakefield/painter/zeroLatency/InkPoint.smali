.class public Lcom/brakefield/painter/zeroLatency/InkPoint;
.super Ljava/lang/Object;
.source "InkPoint.java"


# instance fields
.field public mEventTime:J

.field public mPressure:F

.field public mReceivedTime:J

.field public mTag:Ljava/lang/Object;

.field public mX:F

.field public mY:F


# direct methods
.method public constructor <init>(JFFFLjava/lang/Object;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/brakefield/painter/zeroLatency/InkPoint;->mEventTime:J

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/brakefield/painter/zeroLatency/InkPoint;->mReceivedTime:J

    .line 21
    iput p3, p0, Lcom/brakefield/painter/zeroLatency/InkPoint;->mX:F

    .line 22
    iput p4, p0, Lcom/brakefield/painter/zeroLatency/InkPoint;->mY:F

    .line 23
    iput p5, p0, Lcom/brakefield/painter/zeroLatency/InkPoint;->mPressure:F

    .line 24
    iput-object p6, p0, Lcom/brakefield/painter/zeroLatency/InkPoint;->mTag:Ljava/lang/Object;

    return-void
.end method
