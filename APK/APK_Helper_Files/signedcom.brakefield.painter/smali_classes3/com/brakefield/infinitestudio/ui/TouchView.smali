.class public Lcom/brakefield/infinitestudio/ui/TouchView;
.super Landroid/view/View;
.source "TouchView.java"


# instance fields
.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getX()F
    .locals 1

    .line 26
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/TouchView;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 30
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/TouchView;->y:F

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/TouchView;->x:F

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/TouchView;->y:F

    const/4 p1, 0x0

    return p1
.end method
