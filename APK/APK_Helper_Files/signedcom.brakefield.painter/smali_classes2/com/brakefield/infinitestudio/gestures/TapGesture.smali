.class public abstract Lcom/brakefield/infinitestudio/gestures/TapGesture;
.super Lcom/brakefield/infinitestudio/gestures/Gesture;
.source "TapGesture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/gestures/TapGesture$Listener;,
        Lcom/brakefield/infinitestudio/gestures/TapGesture$FiveFingers;,
        Lcom/brakefield/infinitestudio/gestures/TapGesture$FourFingers;,
        Lcom/brakefield/infinitestudio/gestures/TapGesture$ThreeFingers;,
        Lcom/brakefield/infinitestudio/gestures/TapGesture$TwoFingers;,
        Lcom/brakefield/infinitestudio/gestures/TapGesture$Single;
    }
.end annotation


# instance fields
.field private final listener:Lcom/brakefield/infinitestudio/gestures/TapGesture$Listener;


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/TapGesture$Listener;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/gestures/Gesture;-><init>(Landroid/content/res/Resources;)V

    .line 20
    iput-object p2, p0, Lcom/brakefield/infinitestudio/gestures/TapGesture;->listener:Lcom/brakefield/infinitestudio/gestures/TapGesture$Listener;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/TapGesture$Listener;Lcom/brakefield/infinitestudio/gestures/TapGesture$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/gestures/TapGesture;-><init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/TapGesture$Listener;)V

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

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/TapGesture;->requiredPointers()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onCompleted()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/TapGesture;->listener:Lcom/brakefield/infinitestudio/gestures/TapGesture$Listener;

    invoke-interface {v0, p0}, Lcom/brakefield/infinitestudio/gestures/TapGesture$Listener;->onTap(Lcom/brakefield/infinitestudio/gestures/TapGesture;)V

    return-void
.end method

.method protected abstract requiredPointers()I
.end method

.method public update(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/TapGesture;->requiredPointers()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/TapGesture;->cancel()V

    return-void

    .line 34
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;

    .line 35
    iget-object v1, v0, Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;->downPointer:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    .line 36
    iget-object v0, v0, Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;->currentPointer:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    .line 37
    iget v2, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v1, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    iget v3, v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-static {v2, v1, v3, v0}, Lcom/brakefield/infinitestudio/geometry/Line;->dist(FFFF)F

    move-result v0

    iget v1, p0, Lcom/brakefield/infinitestudio/gestures/TapGesture;->moveDistance:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/TapGesture;->cancel()V

    :cond_2
    return-void
.end method
