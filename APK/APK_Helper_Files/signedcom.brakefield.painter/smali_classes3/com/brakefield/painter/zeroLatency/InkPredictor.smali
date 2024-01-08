.class public interface abstract Lcom/brakefield/painter/zeroLatency/InkPredictor;
.super Ljava/lang/Object;
.source "InkPredictor.java"


# virtual methods
.method public abstract addPoints(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/painter/zeroLatency/InkPoint;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract calculatePrediction()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/painter/zeroLatency/InkPoint;",
            ">;"
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public abstract setPredictionTarget(I)V
.end method
