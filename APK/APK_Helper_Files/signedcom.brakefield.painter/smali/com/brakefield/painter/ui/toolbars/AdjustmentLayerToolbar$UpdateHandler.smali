.class Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$UpdateHandler;
.super Ljava/lang/Object;
.source "AdjustmentLayerToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateHandler"
.end annotation


# instance fields
.field private final binding:Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;

.field private final observeAdjustmentName:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final observeAdjustmentStrength:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final observeAdjustmentUsesGradient:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeAdjustmentUsesMiddlePivot:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$UpdateHandler;->binding:Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;

    .line 84
    new-instance v0, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v1, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$UpdateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$UpdateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;)V

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$UpdateHandler;->observeAdjustmentName:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 85
    new-instance v0, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v1, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$UpdateHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$UpdateHandler$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;)V

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$UpdateHandler;->observeAdjustmentUsesGradient:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 94
    new-instance v0, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v1, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$UpdateHandler$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$UpdateHandler$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;)V

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$UpdateHandler;->observeAdjustmentUsesMiddlePivot:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 97
    new-instance v0, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v1, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$UpdateHandler$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$UpdateHandler$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;)V

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$UpdateHandler;->observeAdjustmentStrength:Lcom/brakefield/infinitestudio/ui/components/Observe;

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;Ljava/lang/String;)V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->adjustmentName:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$new$1(Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;Ljava/lang/Boolean;)V
    .locals 2

    .line 86
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->adjustmentSliderGroup:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 88
    iget-object p0, p0, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->gradientSlider:Lcom/brakefield/painter/ui/GradientSlider;

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/GradientSlider;->setVisibility(I)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->gradientSlider:Lcom/brakefield/painter/ui/GradientSlider;

    invoke-virtual {p1, v1}, Lcom/brakefield/painter/ui/GradientSlider;->setVisibility(I)V

    .line 91
    iget-object p0, p0, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->adjustmentSliderGroup:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$new$2(Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->adjustmentSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setMiddlePivot(Z)V

    return-void
.end method

.method static synthetic lambda$new$3(Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;Ljava/lang/Float;)V
    .locals 1

    .line 98
    iget-object p0, p0, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->adjustmentSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

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
    .locals 4

    .line 103
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->selectedLayerId()I

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$UpdateHandler;->observeAdjustmentName:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->selectedLayerId()I

    move-result v2

    invoke-static {v2}, Lcom/brakefield/painter/PainterLib;->getLayerName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 106
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->filterUsesGradient()Z

    move-result v1

    .line 107
    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$UpdateHandler;->observeAdjustmentUsesGradient:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    const-string v0, "Replace with Observe"

    .line 109
    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Todo;->fix(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$UpdateHandler;->binding:Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->gradientSlider:Lcom/brakefield/painter/ui/GradientSlider;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getFilterGradient()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/GradientSlider;->setGradient(J)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$UpdateHandler;->observeAdjustmentUsesMiddlePivot:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->getAdjustmentLayerMiddlePivot(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 113
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$UpdateHandler;->observeAdjustmentStrength:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->getAdjustmentLayerValue(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
