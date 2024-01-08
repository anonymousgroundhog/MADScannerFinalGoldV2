.class public Lcom/brakefield/infinitestudio/ui/BlurViewHelper;
.super Ljava/lang/Object;
.source "BlurViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/renderscript/ScriptIntrinsicColorMatrix;Landroid/graphics/ColorMatrix;)V
    .locals 0

    .line 26
    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/BlurViewHelper;->applyColorMatrix(Landroid/renderscript/ScriptIntrinsicColorMatrix;Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method private static applyColorMatrix(Landroid/renderscript/ScriptIntrinsicColorMatrix;Landroid/graphics/ColorMatrix;)V
    .locals 9

    .line 141
    invoke-virtual {p1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object p1

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v2, v4, :cond_1

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_0

    add-int/lit8 v6, v3, 0x1

    mul-int/lit8 v7, v5, 0x5

    add-int/2addr v7, v2

    .line 146
    aget v7, p1, v7

    aput v7, v0, v3

    add-int/lit8 v5, v5, 0x1

    move v3, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array v2, v4, [F

    move v3, v1

    move v5, v3

    :goto_2
    if-ge v3, v4, :cond_2

    add-int/lit8 v6, v5, 0x1

    mul-int/lit8 v7, v3, 0x5

    add-int/2addr v7, v4

    .line 152
    aget v7, p1, v7

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v7, v8

    aput v7, v2, v5

    add-int/lit8 v3, v3, 0x1

    move v5, v6

    goto :goto_2

    .line 154
    :cond_2
    new-instance p1, Landroid/renderscript/Matrix4f;

    invoke-direct {p1, v0}, Landroid/renderscript/Matrix4f;-><init>([F)V

    .line 155
    invoke-virtual {p0, p1}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setColorMatrix(Landroid/renderscript/Matrix4f;)V

    aget p1, v2, v1

    const/4 v0, 0x1

    aget v0, v2, v0

    const/4 v1, 0x2

    aget v1, v2, v1

    const/4 v3, 0x3

    aget v2, v2, v3

    .line 156
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setAdd(FFFF)V

    return-void
.end method

.method public static setupBlurView(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;Lcom/brakefield/infinitestudio/ui/blurview/BlurView;)V
    .locals 2

    const/4 p1, 0x1

    .line 46
    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;->setBlurEnabled(Z)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;

    .line 47
    invoke-virtual {p2, p0}, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;

    move-result-object p0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 48
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-interface {p0, v0}, Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;->setFrameClearDrawable(Landroid/graphics/drawable/Drawable;)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;

    move-result-object p0

    new-instance v0, Lcom/brakefield/infinitestudio/ui/blurview/RenderScriptBlur;

    .line 50
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/brakefield/infinitestudio/ui/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;->setBlurAlgorithm(Lcom/brakefield/infinitestudio/ui/blurview/BlurAlgorithm;)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;

    move-result-object p0

    .line 51
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getOverlayColor()I

    move-result p2

    const/16 v0, 0x8c

    invoke-static {p2, v0}, Lcom/brakefield/infinitestudio/color/ColorUtils;->getTransparentColor(II)I

    move-result p2

    invoke-interface {p0, p2}, Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;->setOverlayColor(I)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;

    move-result-object p0

    const/high16 p2, 0x41800000    # 16.0f

    .line 52
    invoke-interface {p0, p2}, Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;->setBlurRadius(F)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;

    move-result-object p0

    .line 53
    invoke-interface {p0, p1}, Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;->setBlurAutoUpdate(Z)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;

    move-result-object p0

    .line 54
    invoke-interface {p0, p1}, Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;->setHasFixedTransformationMatrix(Z)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;

    return-void
.end method

.method public static setupBlurView(Landroid/view/Window;Lcom/brakefield/infinitestudio/ui/blurview/BlurView;)V
    .locals 1

    .line 29
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 31
    invoke-static {p0, v0, p1}, Lcom/brakefield/infinitestudio/ui/BlurViewHelper;->setupBlurView(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;Lcom/brakefield/infinitestudio/ui/blurview/BlurView;)V

    return-void
.end method
