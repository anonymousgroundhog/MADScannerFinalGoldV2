.class Lcom/brakefield/infinitestudio/ui/PreviewView$1;
.super Ljava/lang/Object;
.source "PreviewView.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/PreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/PreviewView;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onClick(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/sketchbook/Pointer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onDown(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/sketchbook/Pointer;",
            ">;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ui/PreviewView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ui/PreviewView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 47
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/brakefield/infinitestudio/ui/PreviewView;->animator:Landroid/animation/ValueAnimator;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/PreviewView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/ui/PreviewContainer;

    .line 51
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/ui/PreviewView;->downMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/PreviewContainer;->getPreviewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 52
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object v1

    iput-object v1, v0, Lcom/brakefield/infinitestudio/ui/PreviewView;->downPointer1:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    .line 53
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object p1

    iput-object p1, v0, Lcom/brakefield/infinitestudio/ui/PreviewView;->downPointer2:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    return-void
.end method

.method public onMove(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/sketchbook/Pointer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 58
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    const/4 v2, 0x1

    .line 59
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    const/4 v3, 0x4

    new-array v5, v3, [F

    .line 62
    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    iget-object v4, v4, Lcom/brakefield/infinitestudio/ui/PreviewView;->downPointer1:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    iget v4, v4, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    aput v4, v5, v0

    .line 63
    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    iget-object v4, v4, Lcom/brakefield/infinitestudio/ui/PreviewView;->downPointer1:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    iget v4, v4, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    aput v4, v5, v2

    .line 64
    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    iget-object v4, v4, Lcom/brakefield/infinitestudio/ui/PreviewView;->downPointer2:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    iget v4, v4, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    const/4 v6, 0x2

    aput v4, v5, v6

    .line 65
    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    iget-object v4, v4, Lcom/brakefield/infinitestudio/ui/PreviewView;->downPointer2:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    iget v4, v4, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    const/4 v7, 0x3

    aput v4, v5, v7

    new-array v3, v3, [F

    .line 68
    iget v4, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    aput v4, v3, v0

    .line 69
    iget v0, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    aput v0, v3, v2

    .line 70
    iget v0, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    aput v0, v3, v6

    .line 71
    iget p1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    aput p1, v3, v7

    .line 73
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object v4, p1

    move-object v7, v3

    .line 74
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 76
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/PreviewView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/ui/PreviewContainer;

    .line 77
    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/PreviewContainer;->setPreviewMatrix(Landroid/graphics/Matrix;)V

    .line 78
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/PreviewView;->invalidate()V

    return-void
.end method

.method public onUp(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/sketchbook/Pointer;",
            ">;)V"
        }
    .end annotation

    .line 84
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/ui/PreviewView;->animator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x4

    new-array v2, p1, [F

    .line 88
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ui/PreviewView;->downPointer1:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    iget v0, v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    const/4 v1, 0x0

    aput v0, v2, v1

    .line 89
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ui/PreviewView;->downPointer1:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    iget v0, v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    const/4 v3, 0x1

    aput v0, v2, v3

    .line 90
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ui/PreviewView;->downPointer2:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    iget v0, v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    const/4 v4, 0x2

    aput v0, v2, v4

    .line 91
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ui/PreviewView;->downPointer2:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    iget v0, v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    const/4 v5, 0x3

    aput v0, v2, v5

    .line 93
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/PreviewView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/brakefield/infinitestudio/ui/PreviewContainer;

    .line 94
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 95
    invoke-virtual {v6}, Lcom/brakefield/infinitestudio/ui/PreviewContainer;->getPreviewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 97
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 98
    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 100
    iget-object v8, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    iget-object v8, v8, Lcom/brakefield/infinitestudio/ui/PreviewView;->downPointer1:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-virtual {v8}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object v8

    .line 101
    iget-object v9, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    iget-object v9, v9, Lcom/brakefield/infinitestudio/ui/PreviewView;->downPointer2:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-virtual {v9}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object v9

    .line 103
    invoke-virtual {v8, v0}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->transform(Landroid/graphics/Matrix;)V

    .line 104
    invoke-virtual {v9, v0}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->transform(Landroid/graphics/Matrix;)V

    new-array p1, p1, [F

    .line 107
    iget v0, v8, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    aput v0, p1, v1

    .line 108
    iget v0, v8, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    aput v0, p1, v3

    .line 109
    iget v0, v9, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    aput v0, p1, v4

    .line 110
    iget v0, v9, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    aput v0, p1, v5

    .line 116
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    new-instance v4, Landroid/animation/FloatEvaluator;

    invoke-direct {v4}, Landroid/animation/FloatEvaluator;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/brakefield/infinitestudio/ui/PreviewView;->animator:Landroid/animation/ValueAnimator;

    .line 117
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ui/PreviewView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x190

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 118
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ui/PreviewView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 119
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ui/PreviewView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 120
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    iget-object v8, v0, Lcom/brakefield/infinitestudio/ui/PreviewView;->animator:Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/brakefield/infinitestudio/ui/PreviewView$1$1;

    move-object v0, v9

    move-object v1, p0

    move-object v3, p1

    move-object v4, v7

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/infinitestudio/ui/PreviewView$1$1;-><init>(Lcom/brakefield/infinitestudio/ui/PreviewView$1;[F[FLandroid/graphics/Matrix;Lcom/brakefield/infinitestudio/ui/PreviewContainer;)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 143
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/ui/PreviewView;->animator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/brakefield/infinitestudio/ui/PreviewView$1$2;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/ui/PreviewView$1$2;-><init>(Lcom/brakefield/infinitestudio/ui/PreviewView$1;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 167
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/ui/PreviewView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
