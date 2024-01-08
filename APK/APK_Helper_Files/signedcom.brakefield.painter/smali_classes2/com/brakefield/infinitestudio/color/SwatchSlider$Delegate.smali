.class public interface abstract Lcom/brakefield/infinitestudio/color/SwatchSlider$Delegate;
.super Ljava/lang/Object;
.source "SwatchSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/color/SwatchSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract addColorView(FF)Landroid/view/View;
.end method

.method public abstract onColorChanged(I)V
.end method

.method public abstract removeColorView(Landroid/view/View;)V
.end method

.method public abstract updateColorView(Landroid/view/View;IFF)V
.end method
