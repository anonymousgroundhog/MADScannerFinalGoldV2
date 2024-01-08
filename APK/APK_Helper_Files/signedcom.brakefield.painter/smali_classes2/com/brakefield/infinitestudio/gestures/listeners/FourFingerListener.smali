.class public interface abstract Lcom/brakefield/infinitestudio/gestures/listeners/FourFingerListener;
.super Ljava/lang/Object;
.source "FourFingerListener.java"


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onDown(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/sketchbook/Pointer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMove(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/sketchbook/Pointer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUp(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/sketchbook/Pointer;",
            ">;Z)V"
        }
    .end annotation
.end method
