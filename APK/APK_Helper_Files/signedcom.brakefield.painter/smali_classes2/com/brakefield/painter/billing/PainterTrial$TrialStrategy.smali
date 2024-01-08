.class interface abstract Lcom/brakefield/painter/billing/PainterTrial$TrialStrategy;
.super Ljava/lang/Object;
.source "PainterTrial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/billing/PainterTrial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "TrialStrategy"
.end annotation


# virtual methods
.method public abstract getRemainingDays(Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;)I
.end method

.method public abstract getState(Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;)Lcom/brakefield/painter/billing/PainterTrial$TrialState;
.end method
