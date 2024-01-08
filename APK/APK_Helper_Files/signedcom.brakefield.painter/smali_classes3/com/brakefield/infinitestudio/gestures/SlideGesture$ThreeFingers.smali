.class public abstract Lcom/brakefield/infinitestudio/gestures/SlideGesture$ThreeFingers;
.super Lcom/brakefield/infinitestudio/gestures/SlideGesture;
.source "SlideGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/gestures/SlideGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ThreeFingers"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/gestures/SlideGesture$ThreeFingers$Vertical;,
        Lcom/brakefield/infinitestudio/gestures/SlideGesture$ThreeFingers$Horizontal;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/SlideGesture$Listener;)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, p2, v0}, Lcom/brakefield/infinitestudio/gestures/SlideGesture;-><init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/SlideGesture$Listener;Lcom/brakefield/infinitestudio/gestures/SlideGesture$1;)V

    return-void
.end method


# virtual methods
.method protected requiredPointers()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
