.class public Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar;
.super Lcom/brakefield/painter/ui/toolbars/Toolbar;
.source "SelectColorRangeToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar$UpdateHandler;
    }
.end annotation


# instance fields
.field private filterTool:Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;

.field private updateHandler:Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar$UpdateHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/brakefield/painter/ui/toolbars/Toolbar;-><init>()V

    return-void
.end method

.method static synthetic lambda$setupView$0(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 42
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 43
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setCompare(Z)V

    goto :goto_0

    :cond_0
    if-eq p1, p2, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 44
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setCompare(Z)V

    .line 45
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return p2
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 1

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;

    move-result-object v0

    .line 28
    invoke-virtual {p0, p1, p2, v0}, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar;->setupView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;)V

    .line 29
    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$setupView$1$com-brakefield-painter-ui-toolbars-SelectColorRangeToolbar(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;Landroid/widget/SeekBar;IZ)V
    .locals 4

    .line 53
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar;->filterTool:Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;

    int-to-float p5, p4

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p5, v0

    invoke-virtual {p3, p5}, Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;->setValue(F)V

    .line 54
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 55
    iget-object p1, p2, Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;->adjustmentSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->isMiddlePivot()Z

    move-result p1

    if-eqz p1, :cond_0

    int-to-double p3, p4

    iget-object p1, p2, Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;->adjustmentSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getMax()I

    move-result p1

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    sub-double/2addr p3, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr p3, v0

    double-to-int p4, p3

    .line 56
    :cond_0
    iget-object p1, p2, Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;->adjustmentSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "%"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setupView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;)V
    .locals 3

    .line 34
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getToolManager()Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getSelectColorRangeTool()Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar;->filterTool:Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;

    .line 37
    new-instance v0, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar$UpdateHandler;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar;->filterTool:Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;

    invoke-direct {v0, v1, p3}, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar$UpdateHandler;-><init>(Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar$UpdateHandler;

    .line 39
    iget-object v0, p3, Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;->compare:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 40
    iget-object v0, p3, Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;->compare:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 41
    iget-object v0, p3, Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;->compare:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 49
    iget-object v0, p3, Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;->adjustmentSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setTextColor(I)V

    .line 51
    iget-object v0, p3, Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;->adjustmentSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2, p3}, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;)V

    const/4 p2, 0x0

    invoke-static {p1, v0, v1, p2, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    return-void
.end method

.method public update()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar$UpdateHandler;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar$UpdateHandler;->update()V

    return-void
.end method
