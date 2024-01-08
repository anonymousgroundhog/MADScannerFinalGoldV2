.class public Lcom/brakefield/infinitestudio/gestures/SlideGesture$FourFingers$Horizontal;
.super Lcom/brakefield/infinitestudio/gestures/SlideGesture$FourFingers;
.source "SlideGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/gestures/SlideGesture$FourFingers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Horizontal"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/SlideGesture$Listener;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/gestures/SlideGesture$FourFingers;-><init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/SlideGesture$Listener;)V

    return-void
.end method


# virtual methods
.method public getOppositeSlideDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 0

    .line 145
    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/gestures/SlideGesture;->access$200(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    return p1
.end method

.method public getSlideDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 0

    .line 142
    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/gestures/SlideGesture;->access$100(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    return p1
.end method
