.class Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler;
.super Ljava/lang/Object;
.source "PatternSymmetryToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateHandler"
.end annotation


# instance fields
.field private final observeFan:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observePlanes:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observeReflect:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeRotate:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final patternSymTool:Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;)V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler;->patternSymTool:Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;

    .line 122
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler;->observePlanes:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 123
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler;->observeFan:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 124
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler;->observeRotate:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 128
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler;->observeReflect:Lcom/brakefield/infinitestudio/ui/components/Observe;

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;Ljava/lang/Integer;)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->planesSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/PullButton;->setProgress(I)V

    return-void
.end method

.method static synthetic lambda$new$1(Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;Ljava/lang/Integer;)V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->fanSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/PullButton;->setProgress(I)V

    return-void
.end method

.method static synthetic lambda$new$2(Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;Ljava/lang/Integer;)V
    .locals 1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit16 p1, p1, 0x168

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 126
    :cond_0
    iget-object p0, p0, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->rotateSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/PullButton;->setProgress(I)V

    return-void
.end method

.method static synthetic lambda$new$3(Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;Ljava/lang/Boolean;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->reflectImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    .line 130
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->rotateTile:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object p0, p0, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->rotateTile:Landroid/widget/FrameLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method update()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler;->observeReflect:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler;->patternSymTool:Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;->getReflect()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler;->observePlanes:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler;->patternSymTool:Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;->getPlanes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler;->observeFan:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler;->patternSymTool:Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;->getFan()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler;->observeRotate:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$UpdateHandler;->patternSymTool:Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;->getRotate()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    return-void
.end method
