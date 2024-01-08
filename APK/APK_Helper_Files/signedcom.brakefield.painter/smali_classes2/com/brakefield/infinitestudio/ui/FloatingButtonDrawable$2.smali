.class Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable$2;
.super Ljava/lang/Object;
.source "FloatingButtonDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->unfocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;

.field final synthetic val$oldColor:I


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable$2;->this$0:Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;

    iput p2, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable$2;->val$oldColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 225
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 227
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable$2;->this$0:Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->access$002(Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;F)F

    .line 229
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable$2;->val$oldColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 230
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable$2;->val$oldColor:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 231
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable$2;->val$oldColor:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const v3, -0x777778

    .line 233
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 234
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 235
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v6, v0

    sub-int/2addr v4, v0

    int-to-float v0, v4

    mul-float/2addr v0, p1

    add-float/2addr v6, v0

    float-to-int v0, v6

    int-to-float v4, v1

    sub-int/2addr v5, v1

    int-to-float v1, v5

    mul-float/2addr v1, p1

    add-float/2addr v4, v1

    float-to-int v1, v4

    int-to-float v4, v2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v4, v2

    float-to-int p1, v4

    .line 241
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable$2;->this$0:Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;

    invoke-static {v0, v1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-static {v2, p1}, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->access$102(Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;I)I

    .line 243
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable$2;->this$0:Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->invalidateSelf()V

    return-void
.end method
