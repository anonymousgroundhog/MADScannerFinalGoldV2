.class Lcom/brakefield/infinitestudio/ui/PreviewView$1$1;
.super Ljava/lang/Object;
.source "PreviewView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/PreviewView$1;->onUp(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/brakefield/infinitestudio/ui/PreviewView$1;

.field final synthetic val$dst:[F

.field final synthetic val$m:Landroid/graphics/Matrix;

.field final synthetic val$parent:Lcom/brakefield/infinitestudio/ui/PreviewContainer;

.field final synthetic val$src:[F


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/PreviewView$1;[F[FLandroid/graphics/Matrix;Lcom/brakefield/infinitestudio/ui/PreviewContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1$1;->this$1:Lcom/brakefield/infinitestudio/ui/PreviewView$1;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1$1;->val$src:[F

    iput-object p3, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1$1;->val$dst:[F

    iput-object p4, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1$1;->val$m:Landroid/graphics/Matrix;

    iput-object p5, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1$1;->val$parent:Lcom/brakefield/infinitestudio/ui/PreviewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    .line 125
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 127
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 128
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1$1;->val$src:[F

    const/4 v2, 0x0

    const/4 v0, 0x4

    new-array v3, v0, [F

    const/4 v0, 0x0

    aget v4, v1, v0

    iget-object v5, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1$1;->val$dst:[F

    aget v7, v5, v0

    sub-float/2addr v7, v4

    mul-float/2addr v7, p1

    add-float/2addr v4, v7

    aput v4, v3, v0

    const/4 v0, 0x1

    aget v4, v1, v0

    aget v7, v5, v0

    sub-float/2addr v7, v4

    mul-float/2addr v7, p1

    add-float/2addr v4, v7

    aput v4, v3, v0

    const/4 v0, 0x2

    aget v4, v1, v0

    aget v7, v5, v0

    sub-float/2addr v7, v4

    mul-float/2addr v7, p1

    add-float/2addr v4, v7

    aput v4, v3, v0

    const/4 v0, 0x3

    aget v4, v1, v0

    aget v5, v5, v0

    sub-float/2addr v5, v4

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    aput v4, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 135
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1$1;->val$m:Landroid/graphics/Matrix;

    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 137
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1$1;->val$parent:Lcom/brakefield/infinitestudio/ui/PreviewContainer;

    invoke-virtual {p1, v6}, Lcom/brakefield/infinitestudio/ui/PreviewContainer;->setPreviewMatrix(Landroid/graphics/Matrix;)V

    .line 138
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1$1;->this$1:Lcom/brakefield/infinitestudio/ui/PreviewView$1;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/PreviewView;->invalidate()V

    return-void
.end method
