.class public abstract Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;
.super Lcom/brakefield/infinitestudio/gestures/Gesture;
.source "LongpressDragGesture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Listener;,
        Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$FiveFingers;,
        Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$FourFingers;,
        Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$ThreeFingers;,
        Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$TwoFingers;,
        Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Single;
    }
.end annotation


# static fields
.field private static final DELAY:I = 0x258


# instance fields
.field private downTime:J

.field private final listener:Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Listener;


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Listener;)V
    .locals 2

    .line 23
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/gestures/Gesture;-><init>(Landroid/content/res/Resources;)V

    const-wide/16 v0, -0x1

    .line 14
    iput-wide v0, p0, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;->downTime:J

    .line 24
    iput-object p2, p0, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;->listener:Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Listener;

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;->cancelsOtherGestures:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Listener;Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;-><init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Listener;)V

    return-void
.end method


# virtual methods
.method protected makeActive(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;",
            ">;)Z"
        }
    .end annotation

    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;->requiredPointers()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 36
    :cond_0
    iget-wide v0, p0, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;->downTime:J

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;->downTime:J

    .line 37
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;->downTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x258

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    .line 38
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;->listener:Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Listener;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;->getDownPointersCenter()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;->getDownPointersCenter()Landroid/graphics/PointF;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Listener;->onUpdate(Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;Landroid/graphics/PointF;Landroid/graphics/PointF;Z)V

    return v2

    .line 41
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;

    .line 42
    iget-object v1, v0, Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;->downPointer:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    .line 43
    iget-object v0, v0, Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;->currentPointer:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    .line 44
    iget v3, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v1, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    iget v4, v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-static {v3, v1, v4, v0}, Lcom/brakefield/infinitestudio/geometry/Line;->dist(FFFF)F

    move-result v0

    iget v1, p0, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;->moveDistance:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 45
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;->cancel()V

    :cond_4
    return v2
.end method

.method public prepare()V
    .locals 2

    .line 30
    invoke-super {p0}, Lcom/brakefield/infinitestudio/gestures/Gesture;->prepare()V

    const-wide/16 v0, -0x1

    .line 31
    iput-wide v0, p0, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;->downTime:J

    return-void
.end method

.method protected abstract requiredPointers()I
.end method

.method public update(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;->requiredPointers()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;->cancel()V

    return-void

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;->listener:Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Listener;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;->getDownPointersCenter()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;->getCurrentPointersCenter()Landroid/graphics/PointF;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Listener;->onUpdate(Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;Landroid/graphics/PointF;Landroid/graphics/PointF;Z)V

    return-void
.end method
