.class public Lcom/brakefield/infinitestudio/ui/PreviewView;
.super Landroid/widget/ImageView;
.source "PreviewView.java"


# instance fields
.field animator:Landroid/animation/ValueAnimator;

.field controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

.field downMatrix:Landroid/graphics/Matrix;

.field downPointer1:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

.field downPointer2:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

.field public prevX:F

.field public prevY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/PreviewView;->downMatrix:Landroid/graphics/Matrix;

    .line 39
    new-instance p1, Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/PreviewView;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    .line 41
    new-instance p2, Lcom/brakefield/infinitestudio/ui/PreviewView$1;

    invoke-direct {p2, p0}, Lcom/brakefield/infinitestudio/ui/PreviewView$1;-><init>(Lcom/brakefield/infinitestudio/ui/PreviewView;)V

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setTwoFingerListener(Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;)V

    .line 181
    new-instance p1, Lcom/brakefield/infinitestudio/ui/PreviewView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/ui/PreviewView$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/ui/PreviewView;)V

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/PreviewView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-brakefield-infinitestudio-ui-PreviewView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 182
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PreviewView;->prevX:F

    .line 183
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PreviewView;->prevY:F

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PreviewView;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 191
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
