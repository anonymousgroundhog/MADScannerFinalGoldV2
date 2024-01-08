.class public Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar;
.super Lcom/brakefield/painter/ui/toolbars/Toolbar;
.source "ColorCurvesToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler;
    }
.end annotation


# instance fields
.field private curvesTool:Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;

.field private updateHandler:Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/brakefield/painter/ui/toolbars/Toolbar;-><init>()V

    return-void
.end method

.method static synthetic lambda$getView$5(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 69
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 70
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setCompare(Z)V

    goto :goto_0

    :cond_0
    if-eq p1, p2, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 71
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setCompare(Z)V

    .line 72
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return p2
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 3

    .line 25
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getToolManager()Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->selectedLayerId()I

    move-result v1

    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->isCurvesAdjustmentLayer(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    new-instance v0, Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCurvesAdjustmentLayerTool()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;-><init>(J)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar;->curvesTool:Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getColorCurvesTool()Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar;->curvesTool:Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;

    .line 32
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler;

    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar;->curvesTool:Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;

    invoke-direct {v1, v2, v0}, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler;-><init>(Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;)V

    iput-object v1, p0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler;

    .line 36
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;->editCurvesGamma:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 37
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;->editCurvesGamma:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;->editCurvesRed:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 43
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;->editCurvesRed:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;->editCurvesGreen:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 49
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;->editCurvesGreen:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;->editCurvesBlue:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 55
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;->editCurvesBlue:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;->editCurvesAlpha:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 61
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;->editCurvesAlpha:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object p1, v0, Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;->editCurvesCompare:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 67
    iget-object p1, v0, Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;->editCurvesCompare:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 68
    iget-object p1, v0, Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;->editCurvesCompare:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2}, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 76
    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/ColorCurvesToolbarBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$0$com-brakefield-painter-ui-toolbars-ColorCurvesToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 38
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar;->curvesTool:Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;->setEditChannel(I)V

    .line 39
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$1$com-brakefield-painter-ui-toolbars-ColorCurvesToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 44
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar;->curvesTool:Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;->setEditChannel(I)V

    .line 45
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$2$com-brakefield-painter-ui-toolbars-ColorCurvesToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 50
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar;->curvesTool:Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;->setEditChannel(I)V

    .line 51
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$3$com-brakefield-painter-ui-toolbars-ColorCurvesToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 56
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar;->curvesTool:Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;->setEditChannel(I)V

    .line 57
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$4$com-brakefield-painter-ui-toolbars-ColorCurvesToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 62
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar;->curvesTool:Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;->setEditChannel(I)V

    .line 63
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method public update()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$UpdateHandler;->update()V

    return-void
.end method
