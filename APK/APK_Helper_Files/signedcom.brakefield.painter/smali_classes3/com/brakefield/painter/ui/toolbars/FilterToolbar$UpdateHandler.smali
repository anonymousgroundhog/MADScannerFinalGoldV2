.class Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;
.super Ljava/lang/Object;
.source "FilterToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/toolbars/FilterToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateHandler"
.end annotation


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/FilterToolbarBinding;

.field private filterTool:Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;

.field private final observeFilterHasTypes:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeFilterStrength:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final observeFilterType:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observeFilterUsesGradient:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
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

.field private toolManager:Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;Lcom/brakefield/painter/databinding/FilterToolbarBinding;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;->toolManager:Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    .line 130
    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;->filterTool:Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;

    .line 131
    iput-object p3, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;->binding:Lcom/brakefield/painter/databinding/FilterToolbarBinding;

    .line 132
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance p2, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3}, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/databinding/FilterToolbarBinding;)V

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;->observeFilterUsesGradient:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 141
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance p2, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler$$ExternalSyntheticLambda1;

    invoke-direct {p2, p3}, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/databinding/FilterToolbarBinding;)V

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;->observeFilterUsesMiddlePivot:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 144
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance p2, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler$$ExternalSyntheticLambda2;

    invoke-direct {p2, p3}, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/databinding/FilterToolbarBinding;)V

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;->observeFilterStrength:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 147
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance p2, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;->observeFilterHasTypes:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 148
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance p2, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler$$ExternalSyntheticLambda4;

    invoke-direct {p2, p3}, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/databinding/FilterToolbarBinding;)V

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;->observeFilterType:Lcom/brakefield/infinitestudio/ui/components/Observe;

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/brakefield/painter/databinding/FilterToolbarBinding;Ljava/lang/Boolean;)V
    .locals 2

    .line 133
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->adjustmentSliderGroup:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 135
    iget-object p0, p0, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->gradientSlider:Lcom/brakefield/painter/ui/GradientSlider;

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/GradientSlider;->setVisibility(I)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->gradientSlider:Lcom/brakefield/painter/ui/GradientSlider;

    invoke-virtual {p1, v1}, Lcom/brakefield/painter/ui/GradientSlider;->setVisibility(I)V

    .line 138
    iget-object p0, p0, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->adjustmentSliderGroup:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$new$1(Lcom/brakefield/painter/databinding/FilterToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->adjustmentSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setMiddlePivot(Z)V

    return-void
.end method

.method static synthetic lambda$new$2(Lcom/brakefield/painter/databinding/FilterToolbarBinding;Ljava/lang/Float;)V
    .locals 1

    .line 145
    iget-object p0, p0, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->adjustmentSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setProgress(I)V

    return-void
.end method

.method static synthetic lambda$new$3(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$new$4(Lcom/brakefield/painter/databinding/FilterToolbarBinding;Ljava/lang/Integer;)V
    .locals 1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, "i"

    goto :goto_0

    :cond_0
    const-string p1, "iv"

    goto :goto_0

    :cond_1
    const-string p1, "iii"

    goto :goto_0

    :cond_2
    const-string p1, "ii"

    .line 156
    :goto_0
    iget-object p0, p0, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->filterType:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method update()V
    .locals 3

    .line 161
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->filterUsesGradient()Z

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;->observeFilterUsesGradient:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;->binding:Lcom/brakefield/painter/databinding/FilterToolbarBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->gradientSlider:Lcom/brakefield/painter/ui/GradientSlider;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getFilterGradient()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/GradientSlider;->setGradient(J)V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;->observeFilterUsesMiddlePivot:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;->filterTool:Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;->isMiddlePivot()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;->observeFilterStrength:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;->filterTool:Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;->getValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;->toolManager:Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->filterHasTypes()Z

    move-result v0

    .line 170
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;->observeFilterHasTypes:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;->observeFilterType:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;->filterTool:Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
