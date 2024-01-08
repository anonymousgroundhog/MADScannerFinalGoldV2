.class public interface abstract Lcom/brakefield/painter/ui/GradientSlider$OnGradientChangedListener;
.super Ljava/lang/Object;
.source "GradientSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/GradientSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnGradientChangedListener"
.end annotation


# virtual methods
.method public abstract onColorStopTapped(Lcom/brakefield/painter/nativeobjs/color/GradientNative;I)V
.end method

.method public abstract onColorStopUpdated()V
.end method

.method public abstract onNumberOfColorStopsChanged()V
.end method
