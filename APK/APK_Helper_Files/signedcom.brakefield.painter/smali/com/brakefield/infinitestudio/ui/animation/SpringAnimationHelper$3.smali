.class Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper$3;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "SpringAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper;->getAdjustValueProperty(Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper$OnPropertyUpdateListener;)Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Landroidx/dynamicanimation/animation/FloatValueHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper$OnPropertyUpdateListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper$OnPropertyUpdateListener;)V
    .locals 0

    .line 94
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper$3;->val$listener:Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper$OnPropertyUpdateListener;

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Landroidx/dynamicanimation/animation/FloatValueHolder;)F
    .locals 0

    .line 97
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result p1

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 94
    check-cast p1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper$3;->getValue(Landroidx/dynamicanimation/animation/FloatValueHolder;)F

    move-result p1

    return p1
.end method

.method public setValue(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V
    .locals 0

    .line 102
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 103
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper$3;->val$listener:Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper$OnPropertyUpdateListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper$OnPropertyUpdateListener;->onPropertyUpdated(F)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 94
    check-cast p1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper$3;->setValue(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V

    return-void
.end method
