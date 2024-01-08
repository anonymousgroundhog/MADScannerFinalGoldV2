.class public Lcom/brakefield/infinitestudio/gestures/SlideGesture$TwoFingers$Vertical;
.super Lcom/brakefield/infinitestudio/gestures/SlideGesture$TwoFingers;
.source "SlideGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/gestures/SlideGesture$TwoFingers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vertical"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/SlideGesture$Listener;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/gestures/SlideGesture$TwoFingers;-><init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/SlideGesture$Listener;)V

    return-void
.end method


# virtual methods
.method public getOppositeSlideDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 0

    .line 102
    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/gestures/SlideGesture;->access$100(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    return p1
.end method

.method public getSlideDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 0

    .line 99
    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/gestures/SlideGesture;->access$200(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    return p1
.end method
