.class Lcom/brakefield/painter/billing/PainterTrial$TimeTrialStrategy;
.super Ljava/lang/Object;
.source "PainterTrial.java"

# interfaces
.implements Lcom/brakefield/painter/billing/PainterTrial$TrialStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/billing/PainterTrial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeTrialStrategy"
.end annotation


# instance fields
.field private final trialPeriodInDays:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/brakefield/painter/billing/PainterTrial$TimeTrialStrategy;->trialPeriodInDays:I

    return-void
.end method


# virtual methods
.method public getRemainingDays(Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;)I
    .locals 2

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;->getDaysSinceTrialStarted(J)I

    move-result p1

    .line 82
    iget v0, p0, Lcom/brakefield/painter/billing/PainterTrial$TimeTrialStrategy;->trialPeriodInDays:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public getState(Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;)Lcom/brakefield/painter/billing/PainterTrial$TrialState;
    .locals 4

    .line 68
    invoke-static {p1}, Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;->access$000(Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 69
    sget-object p1, Lcom/brakefield/painter/billing/PainterTrial$TrialState;->AVAILABLE:Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    return-object p1

    .line 71
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;->getDaysSinceTrialStarted(J)I

    move-result p1

    .line 72
    iget v0, p0, Lcom/brakefield/painter/billing/PainterTrial$TimeTrialStrategy;->trialPeriodInDays:I

    if-le p1, v0, :cond_1

    .line 73
    sget-object p1, Lcom/brakefield/painter/billing/PainterTrial$TrialState;->ENDED:Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    return-object p1

    .line 75
    :cond_1
    sget-object p1, Lcom/brakefield/painter/billing/PainterTrial$TrialState;->RUNNING:Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    return-object p1
.end method
