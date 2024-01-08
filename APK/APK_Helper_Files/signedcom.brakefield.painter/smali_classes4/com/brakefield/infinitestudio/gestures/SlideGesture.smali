.class public abstract Lcom/brakefield/infinitestudio/gestures/SlideGesture;
.super Lcom/brakefield/infinitestudio/gestures/Gesture;
.source "SlideGesture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/gestures/SlideGesture$Listener;,
        Lcom/brakefield/infinitestudio/gestures/SlideGesture$FiveFingers;,
        Lcom/brakefield/infinitestudio/gestures/SlideGesture$FourFingers;,
        Lcom/brakefield/infinitestudio/gestures/SlideGesture$ThreeFingers;,
        Lcom/brakefield/infinitestudio/gestures/SlideGesture$TwoFingers;,
        Lcom/brakefield/infinitestudio/gestures/SlideGesture$Single;
    }
.end annotation


# instance fields
.field private final listener:Lcom/brakefield/infinitestudio/gestures/SlideGesture$Listener;


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/SlideGesture$Listener;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/gestures/Gesture;-><init>(Landroid/content/res/Resources;)V

    .line 18
    iput-object p2, p0, Lcom/brakefield/infinitestudio/gestures/SlideGesture;->listener:Lcom/brakefield/infinitestudio/gestures/SlideGesture$Listener;

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/gestures/SlideGesture;->cancelsOtherGestures:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/SlideGesture$Listener;Lcom/brakefield/infinitestudio/gestures/SlideGesture$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/gestures/SlideGesture;-><init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/SlideGesture$Listener;)V

    return-void
.end method

.method static synthetic access$100(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/gestures/SlideGesture;->getHorizontalDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/gestures/SlideGesture;->getVerticalDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    return p0
.end method

.method private static getHorizontalDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 0

    .line 48
    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p0

    return p1
.end method

.method private static getVerticalDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 0

    .line 52
    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method protected abstract getOppositeSlideDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
.end method

.method protected abstract getSlideDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
.end method

.method protected makeActive(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;",
            ">;)Z"
        }
    .end annotation

    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/SlideGesture;->requiredPointers()I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/SlideGesture;->getCurrentPointers()[Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/gestures/SlideGesture;->getCenter([Lcom/brakefield/infinitestudio/sketchbook/Pointer;)Landroid/graphics/PointF;

    move-result-object p1

    .line 26
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/SlideGesture;->getDownPointers()[Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/gestures/SlideGesture;->getCenter([Lcom/brakefield/infinitestudio/sketchbook/Pointer;)Landroid/graphics/PointF;

    move-result-object v0

    .line 27
    invoke-virtual {p0, v0, p1}, Lcom/brakefield/infinitestudio/gestures/SlideGesture;->getSlideDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/brakefield/infinitestudio/gestures/SlideGesture;->moveDistance:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/4 p1, 0x1

    return p1

    .line 28
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/brakefield/infinitestudio/gestures/SlideGesture;->getOppositeSlideDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/brakefield/infinitestudio/gestures/SlideGesture;->moveDistance:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/SlideGesture;->cancel()V

    :cond_2
    return v1
.end method

.method protected abstract requiredPointers()I
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

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/SlideGesture;->requiredPointers()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/SlideGesture;->cancel()V

    return-void

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/SlideGesture;->getCurrentPointers()[Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/gestures/SlideGesture;->getCenter([Lcom/brakefield/infinitestudio/sketchbook/Pointer;)Landroid/graphics/PointF;

    move-result-object p1

    .line 39
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/SlideGesture;->getDownPointers()[Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/gestures/SlideGesture;->getCenter([Lcom/brakefield/infinitestudio/sketchbook/Pointer;)Landroid/graphics/PointF;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/brakefield/infinitestudio/gestures/SlideGesture;->listener:Lcom/brakefield/infinitestudio/gestures/SlideGesture$Listener;

    invoke-virtual {p0, v0, p1}, Lcom/brakefield/infinitestudio/gestures/SlideGesture;->getSlideDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    invoke-interface {v1, p0, v0, p1}, Lcom/brakefield/infinitestudio/gestures/SlideGesture$Listener;->onSlide(Lcom/brakefield/infinitestudio/gestures/SlideGesture;Landroid/graphics/PointF;F)V

    return-void
.end method
