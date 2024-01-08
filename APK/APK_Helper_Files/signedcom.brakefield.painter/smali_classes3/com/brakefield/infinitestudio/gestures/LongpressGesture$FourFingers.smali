.class public Lcom/brakefield/infinitestudio/gestures/LongpressGesture$FourFingers;
.super Lcom/brakefield/infinitestudio/gestures/LongpressGesture;
.source "LongpressGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/gestures/LongpressGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FourFingers"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/LongpressGesture$Listener;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, v0}, Lcom/brakefield/infinitestudio/gestures/LongpressGesture;-><init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/LongpressGesture$Listener;Lcom/brakefield/infinitestudio/gestures/LongpressGesture$1;)V

    return-void
.end method


# virtual methods
.method protected requiredPointers()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
