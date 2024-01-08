.class public Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper;
.super Ljava/lang/Object;
.source "SpringAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper$OnPropertyUpdateListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animate(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Landroid/view/View;",
            ">;FF)",
            "Landroidx/dynamicanimation/animation/SpringAnimation;"
        }
    .end annotation

    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 17
    :cond_0
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, p3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 18
    invoke-static {v0, p2, p3}, Lcom/brakefield/infinitestudio/ui/animation/SpringForceHelper;->prepareSpringForceForScreenProperties(Landroidx/dynamicanimation/animation/SpringForce;FF)V

    .line 19
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p2, p0, p1, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    return-object p0
.end method

.method public static changeHeight(Landroid/view/View;F)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 2

    .line 49
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper;->getAdjustViewHeightProperty()Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v0, v1, p1}, Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper;->animate(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    return-object p0
.end method

.method public static changeValue(Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/FloatValueHolder;FLcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper$OnPropertyUpdateListener;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 1

    .line 54
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {p3}, Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper;->getAdjustValueProperty(Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper$OnPropertyUpdateListener;)Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    move-result-object p3

    invoke-direct {v0, p1, p3, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    return-object p0
.end method

.method public static changeWidth(Landroid/view/View;F)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 2

    .line 44
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper;->getAdjustViewWidthProperty()Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v0, v1, p1}, Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper;->animate(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    return-object p0
.end method

.method public static getAdjustValueProperty(Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper$OnPropertyUpdateListener;)Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper$OnPropertyUpdateListener;",
            ")",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Landroidx/dynamicanimation/animation/FloatValueHolder;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper$3;

    const-string v1, "VALUE"

    invoke-direct {v0, v1, p0}, Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper$3;-><init>(Ljava/lang/String;Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper$OnPropertyUpdateListener;)V

    return-object v0
.end method

.method public static getAdjustViewHeightProperty()Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper$2;

    const-string v1, "VIEW_HEIGHT"

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper$2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAdjustViewWidthProperty()Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper$1;

    const-string v1, "VIEW_WIDTH"

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static toX(Landroid/view/View;F)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 2

    .line 34
    sget-object v0, Landroidx/dynamicanimation/animation/SpringAnimation;->X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper;->animate(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    return-object p0
.end method

.method public static toY(Landroid/view/View;F)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 2

    .line 39
    sget-object v0, Landroidx/dynamicanimation/animation/SpringAnimation;->Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper;->animate(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    return-object p0
.end method

.method public static translateX(Landroid/view/View;F)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 2

    .line 24
    sget-object v0, Landroidx/dynamicanimation/animation/SpringAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper;->animate(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    return-object p0
.end method

.method public static translateY(Landroid/view/View;F)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 2

    .line 29
    sget-object v0, Landroidx/dynamicanimation/animation/SpringAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper;->animate(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    return-object p0
.end method
