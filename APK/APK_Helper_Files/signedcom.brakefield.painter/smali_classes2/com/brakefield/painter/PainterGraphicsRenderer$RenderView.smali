.class public interface abstract Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;
.super Ljava/lang/Object;
.source "PainterGraphicsRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/PainterGraphicsRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RenderView"
.end annotation


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getResources()Landroid/content/res/Resources;
.end method

.method public abstract getSurfaceHeight()I
.end method

.method public abstract getSurfaceWidth()I
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract getWidth()I
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract post(Ljava/lang/Runnable;)Z
.end method

.method public abstract queueEvent(Ljava/lang/Runnable;)V
.end method

.method public abstract registerContentReceiver()V
.end method

.method public abstract requestRender()V
.end method

.method public abstract setOpacityControl(Lcom/brakefield/painter/OpacityControl;)V
.end method

.method public abstract setScreenRotation(I)V
.end method

.method public abstract setSharedMessageHandler(Lcom/brakefield/painter/SharedMessageHandler;)V
.end method

.method public abstract startAnimation()V
.end method

.method public abstract stopAnimation()V
.end method
