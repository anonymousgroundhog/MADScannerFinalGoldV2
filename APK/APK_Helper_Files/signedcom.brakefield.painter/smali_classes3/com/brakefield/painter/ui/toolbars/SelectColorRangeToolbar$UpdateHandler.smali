.class Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar$UpdateHandler;
.super Ljava/lang/Object;
.source "SelectColorRangeToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateHandler"
.end annotation


# instance fields
.field private filterTool:Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;

.field private final observeFilterStrength:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final observeFilterUsesMiddlePivot:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar$UpdateHandler;->filterTool:Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;

    .line 73
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar$UpdateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar$UpdateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar$UpdateHandler;->observeFilterUsesMiddlePivot:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 76
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar$UpdateHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar$UpdateHandler$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar$UpdateHandler;->observeFilterStrength:Lcom/brakefield/infinitestudio/ui/components/Observe;

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;->adjustmentSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setMiddlePivot(Z)V

    return-void
.end method

.method static synthetic lambda$new$1(Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;Ljava/lang/Float;)V
    .locals 1

    .line 77
    iget-object p0, p0, Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;->adjustmentSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setProgress(I)V

    return-void
.end method


# virtual methods
.method update()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar$UpdateHandler;->observeFilterUsesMiddlePivot:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar$UpdateHandler;->filterTool:Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;->isMiddlePivot()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar$UpdateHandler;->observeFilterStrength:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar$UpdateHandler;->filterTool:Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;->getValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    return-void
.end method
