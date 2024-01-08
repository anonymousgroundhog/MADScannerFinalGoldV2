.class Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;
.super Ljava/lang/Object;
.source "PainterTrial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/billing/PainterTrial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrialProperties"
.end annotation


# instance fields
.field private startTime:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 89
    iput-wide v0, p0, Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;->startTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/billing/PainterTrial$1;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;)J
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;->startTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;J)J
    .locals 0

    .line 87
    iput-wide p1, p0, Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;->startTime:J

    return-wide p1
.end method

.method private dayToMilliseconds()F
    .locals 1

    const v0, 0x4ca4cb80    # 8.64E7f

    return v0
.end method


# virtual methods
.method public getDaysSinceTrialStarted(J)I
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;->startTime:J

    sub-long/2addr p1, v0

    long-to-float p1, p1

    invoke-direct {p0}, Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;->dayToMilliseconds()F

    move-result p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method
