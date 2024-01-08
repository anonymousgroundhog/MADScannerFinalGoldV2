.class public Lcom/brakefield/infinitestudio/gestures/TwoFingerGesture;
.super Lcom/brakefield/infinitestudio/gestures/Gesture;
.source "TwoFingerGesture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/gestures/TwoFingerGesture$Listener;
    }
.end annotation


# instance fields
.field private final listener:Lcom/brakefield/infinitestudio/gestures/TwoFingerGesture$Listener;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/TwoFingerGesture$Listener;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/gestures/Gesture;-><init>(Landroid/content/res/Resources;)V

    .line 20
    iput-object p2, p0, Lcom/brakefield/infinitestudio/gestures/TwoFingerGesture;->listener:Lcom/brakefield/infinitestudio/gestures/TwoFingerGesture$Listener;

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/gestures/TwoFingerGesture;->cancelsOtherGestures:Z

    return-void
.end method


# virtual methods
.method protected makeActive(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;",
            ">;)Z"
        }
    .end annotation

    .line 26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public update(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/TwoFingerGesture;->cancel()V

    return-void

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/TwoFingerGesture;->listener:Lcom/brakefield/infinitestudio/gestures/TwoFingerGesture$Listener;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/TwoFingerGesture;->getDownPointers()[Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/TwoFingerGesture;->getCurrentPointers()[Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object v1

    invoke-interface {p1, p0, v0, v1}, Lcom/brakefield/infinitestudio/gestures/TwoFingerGesture$Listener;->onUpdate(Lcom/brakefield/infinitestudio/gestures/TwoFingerGesture;[Lcom/brakefield/infinitestudio/sketchbook/Pointer;[Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    return-void
.end method
