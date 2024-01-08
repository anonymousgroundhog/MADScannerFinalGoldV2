.class public Lcom/brakefield/painter/BoundsAnimator;
.super Ljava/lang/Object;
.source "BoundsAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/BoundsAnimator$AnimationListener;
    }
.end annotation


# instance fields
.field private final animationSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/dynamicanimation/animation/SpringAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private bounds:Landroid/graphics/Rect;

.field private heightSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private widthSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private xSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private ySpring:Landroidx/dynamicanimation/animation/SpringAnimation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/BoundsAnimator;->animationSet:Ljava/util/List;

    return-void
.end method

.method private removeSpringAndFinish(Landroidx/dynamicanimation/animation/SpringAnimation;Lcom/brakefield/painter/BoundsAnimator$AnimationListener;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/brakefield/painter/BoundsAnimator;->animationSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 80
    iget-object p1, p0, Lcom/brakefield/painter/BoundsAnimator;->animationSet:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/brakefield/painter/BoundsAnimator$AnimationListener;->onFinish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public animate(Landroid/view/View;Landroid/graphics/Rect;Lcom/brakefield/painter/BoundsAnimator$AnimationListener;)V
    .locals 2

    .line 29
    iput-object p2, p0, Lcom/brakefield/painter/BoundsAnimator;->bounds:Landroid/graphics/Rect;

    .line 31
    iget-object v0, p0, Lcom/brakefield/painter/BoundsAnimator;->animationSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/BoundsAnimator;->animationSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper;->changeWidth(Landroid/view/View;F)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/BoundsAnimator;->widthSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 35
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper;->changeHeight(Landroid/view/View;F)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/BoundsAnimator;->heightSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 36
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper;->toX(Landroid/view/View;F)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/BoundsAnimator;->xSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 37
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper;->toY(Landroid/view/View;F)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/BoundsAnimator;->ySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 39
    iget-object p1, p0, Lcom/brakefield/painter/BoundsAnimator;->widthSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_1

    .line 40
    iget-object p2, p0, Lcom/brakefield/painter/BoundsAnimator;->animationSet:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object p1, p0, Lcom/brakefield/painter/BoundsAnimator;->widthSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Lcom/brakefield/painter/BoundsAnimator$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lcom/brakefield/painter/BoundsAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/BoundsAnimator;Lcom/brakefield/painter/BoundsAnimator$AnimationListener;)V

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/BoundsAnimator;->heightSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_2

    .line 46
    iget-object p2, p0, Lcom/brakefield/painter/BoundsAnimator;->animationSet:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object p1, p0, Lcom/brakefield/painter/BoundsAnimator;->heightSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Lcom/brakefield/painter/BoundsAnimator$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p3}, Lcom/brakefield/painter/BoundsAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/BoundsAnimator;Lcom/brakefield/painter/BoundsAnimator$AnimationListener;)V

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 51
    :cond_2
    iget-object p1, p0, Lcom/brakefield/painter/BoundsAnimator;->xSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_3

    .line 52
    iget-object p2, p0, Lcom/brakefield/painter/BoundsAnimator;->animationSet:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object p1, p0, Lcom/brakefield/painter/BoundsAnimator;->xSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Lcom/brakefield/painter/BoundsAnimator$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p3}, Lcom/brakefield/painter/BoundsAnimator$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/BoundsAnimator;Lcom/brakefield/painter/BoundsAnimator$AnimationListener;)V

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 57
    :cond_3
    iget-object p1, p0, Lcom/brakefield/painter/BoundsAnimator;->ySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_4

    .line 58
    iget-object p2, p0, Lcom/brakefield/painter/BoundsAnimator;->animationSet:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p1, p0, Lcom/brakefield/painter/BoundsAnimator;->ySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Lcom/brakefield/painter/BoundsAnimator$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p3}, Lcom/brakefield/painter/BoundsAnimator$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/BoundsAnimator;Lcom/brakefield/painter/BoundsAnimator$AnimationListener;)V

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 64
    :cond_4
    iget-object p1, p0, Lcom/brakefield/painter/BoundsAnimator;->animationSet:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz p3, :cond_5

    invoke-interface {p3}, Lcom/brakefield/painter/BoundsAnimator$AnimationListener;->onStart()V

    .line 66
    :cond_5
    iget-object p1, p0, Lcom/brakefield/painter/BoundsAnimator;->animationSet:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto :goto_1

    :cond_6
    return-void
.end method

.method synthetic lambda$animate$0$com-brakefield-painter-BoundsAnimator(Lcom/brakefield/painter/BoundsAnimator$AnimationListener;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    if-nez p3, :cond_0

    .line 42
    iget-object p2, p0, Lcom/brakefield/painter/BoundsAnimator;->widthSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, p2, p1}, Lcom/brakefield/painter/BoundsAnimator;->removeSpringAndFinish(Landroidx/dynamicanimation/animation/SpringAnimation;Lcom/brakefield/painter/BoundsAnimator$AnimationListener;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$animate$1$com-brakefield-painter-BoundsAnimator(Lcom/brakefield/painter/BoundsAnimator$AnimationListener;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    if-nez p3, :cond_0

    .line 48
    iget-object p2, p0, Lcom/brakefield/painter/BoundsAnimator;->heightSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, p2, p1}, Lcom/brakefield/painter/BoundsAnimator;->removeSpringAndFinish(Landroidx/dynamicanimation/animation/SpringAnimation;Lcom/brakefield/painter/BoundsAnimator$AnimationListener;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$animate$2$com-brakefield-painter-BoundsAnimator(Lcom/brakefield/painter/BoundsAnimator$AnimationListener;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    if-nez p3, :cond_0

    .line 54
    iget-object p2, p0, Lcom/brakefield/painter/BoundsAnimator;->xSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, p2, p1}, Lcom/brakefield/painter/BoundsAnimator;->removeSpringAndFinish(Landroidx/dynamicanimation/animation/SpringAnimation;Lcom/brakefield/painter/BoundsAnimator$AnimationListener;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$animate$3$com-brakefield-painter-BoundsAnimator(Lcom/brakefield/painter/BoundsAnimator$AnimationListener;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    if-nez p3, :cond_0

    .line 60
    iget-object p2, p0, Lcom/brakefield/painter/BoundsAnimator;->ySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, p2, p1}, Lcom/brakefield/painter/BoundsAnimator;->removeSpringAndFinish(Landroidx/dynamicanimation/animation/SpringAnimation;Lcom/brakefield/painter/BoundsAnimator$AnimationListener;)V

    :cond_0
    return-void
.end method

.method public update(Landroid/graphics/Rect;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/brakefield/painter/BoundsAnimator;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/brakefield/painter/BoundsAnimator;->animationSet:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/BoundsAnimator;->widthSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/BoundsAnimator;->widthSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/BoundsAnimator;->animationSet:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/BoundsAnimator;->heightSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brakefield/painter/BoundsAnimator;->heightSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/BoundsAnimator;->animationSet:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/BoundsAnimator;->xSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/brakefield/painter/BoundsAnimator;->xSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/brakefield/painter/BoundsAnimator;->animationSet:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/BoundsAnimator;->ySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/brakefield/painter/BoundsAnimator;->ySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_3
    return-void
.end method
