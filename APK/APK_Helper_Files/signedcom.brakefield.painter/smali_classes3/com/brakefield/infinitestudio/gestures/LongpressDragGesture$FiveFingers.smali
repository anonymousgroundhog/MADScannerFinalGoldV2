.class public Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$FiveFingers;
.super Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;
.source "LongpressDragGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FiveFingers"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Listener;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2, v0}, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;-><init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Listener;Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$1;)V

    return-void
.end method


# virtual methods
.method protected requiredPointers()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
