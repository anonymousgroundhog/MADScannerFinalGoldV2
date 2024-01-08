.class Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable$1;
.super Ljava/lang/Object;
.source "FloatingButtonDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->focus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;

.field final synthetic val$newColor:I


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable$1;->this$0:Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;

    iput p2, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable$1;->val$newColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 181
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 183
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable$1;->this$0:Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->access$002(Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;F)F

    const v0, -0x777778

    .line 185
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 186
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 187
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 189
    iget v3, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable$1;->val$newColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 190
    iget v4, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable$1;->val$newColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 191
    iget v5, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable$1;->val$newColor:I

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v6, v1

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v6, v1

    float-to-int v1, v6

    int-to-float v3, v2

    sub-int/2addr v4, v2

    int-to-float v2, v4

    mul-float/2addr v2, p1

    add-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v3, v0

    sub-int/2addr v5, v0

    int-to-float v0, v5

    mul-float/2addr v0, p1

    add-float/2addr v3, v0

    float-to-int p1, v3

    .line 197
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable$1;->this$0:Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;

    invoke-static {v1, v2, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->access$102(Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;I)I

    .line 199
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable$1;->this$0:Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->invalidateSelf()V

    return-void
.end method
