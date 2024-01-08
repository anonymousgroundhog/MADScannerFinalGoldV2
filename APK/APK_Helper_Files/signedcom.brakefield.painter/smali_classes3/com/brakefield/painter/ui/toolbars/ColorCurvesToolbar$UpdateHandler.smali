.class Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler;
.super Ljava/lang/Object;
.source "ColorCurvesToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateHandler"
.end annotation


# instance fields
.field private final curvesTool:Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;

.field private final observeEditAlphaSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeEditBlueSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeEditGammaSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeEditGreenSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeEditRedSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler;->curvesTool:Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;

    .line 95
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler;->observeEditGammaSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 96
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler;->observeEditRedSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 97
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler;->observeEditGreenSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 98
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler;->observeEditBlueSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 99
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler;->observeEditAlphaSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;->editCurvesGamma:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$1(Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;->editCurvesRed:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$2(Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;->editCurvesGreen:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$3(Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;->editCurvesBlue:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$4(Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;->editCurvesAlpha:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method


# virtual methods
.method update()V
    .locals 5

    .line 103
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler;->curvesTool:Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;->getEditChannel()I

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler;->observeEditGammaSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 105
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler;->observeEditRedSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    if-nez v0, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 106
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler;->observeEditGreenSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    if-ne v0, v4, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 107
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler;->observeEditBlueSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    move v2, v4

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 108
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler;->observeEditAlphaSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    move v3, v4

    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    return-void
.end method
