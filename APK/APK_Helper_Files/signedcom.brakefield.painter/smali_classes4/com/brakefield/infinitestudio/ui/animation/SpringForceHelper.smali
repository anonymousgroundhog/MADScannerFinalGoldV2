.class public Lcom/brakefield/infinitestudio/ui/animation/SpringForceHelper;
.super Ljava/lang/Object;
.source "SpringForceHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSpringDampeningForScreenProperties(F)F
    .locals 2

    const/high16 v0, 0x42340000    # 45.0f

    .line 16
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v0, p0

    sub-float/2addr v1, v0

    const p0, 0x3f19999a    # 0.6f

    cmpg-float v0, v1, p0

    if-gez v0, :cond_0

    move v1, p0

    :cond_0
    const p0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, v1, p0

    if-lez v0, :cond_1

    move v1, p0

    :cond_1
    return v1
.end method

.method private static getSpringStiffnessForScreenProperties(F)F
    .locals 2

    const/high16 v0, 0x42c80000    # 100.0f

    .line 26
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v1

    div-float/2addr v1, p0

    const/high16 p0, 0x44160000    # 600.0f

    mul-float/2addr v1, p0

    cmpg-float p0, v1, v0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public static prepareSpringForceForScreenProperties(Landroidx/dynamicanimation/animation/SpringForce;FF)V
    .locals 0

    sub-float/2addr p1, p2

    .line 10
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 11
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/SpringForceHelper;->getSpringDampeningForScreenProperties(F)F

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 12
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/SpringForceHelper;->getSpringStiffnessForScreenProperties(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method
