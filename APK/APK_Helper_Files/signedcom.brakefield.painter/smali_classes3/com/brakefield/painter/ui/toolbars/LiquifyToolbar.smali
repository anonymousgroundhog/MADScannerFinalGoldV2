.class public Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;
.super Lcom/brakefield/painter/ui/toolbars/Toolbar;
.source "LiquifyToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;
    }
.end annotation


# instance fields
.field private liquifyTool:Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

.field private updateHandler:Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/brakefield/painter/ui/toolbars/Toolbar;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;)Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;->liquifyTool:Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

    return-object p0
.end method

.method static synthetic lambda$getView$0(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 36
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_0

    .line 37
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->setCompare(Z)V

    goto :goto_0

    :cond_0
    if-eq p2, p3, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    :cond_1
    const/4 p2, 0x0

    .line 38
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setCompare(Z)V

    .line 39
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return p3
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 5

    .line 26
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getToolManager()Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getLiquifyTool()Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;->liquifyTool:Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;

    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;->liquifyTool:Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

    invoke-direct {v1, v2, v0}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;-><init>(Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;)V

    iput-object v1, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;

    .line 33
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyCompare:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 34
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyCompare:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 35
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyCompare:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, p1}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 43
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyCursor:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 44
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyCursor:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 45
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyCursor:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p2}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifySlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$1;

    invoke-direct {v3, p0, p2}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$1;-><init>(Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;Lcom/brakefield/painter/ui/SimpleUI;)V

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v4, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 68
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyAccept:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 69
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyAccept:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 70
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyAccept:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, p2}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyCancel:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 73
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyCancel:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 74
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyCancel:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1, p2}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;->liquifyTool:Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->isRestorable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyCursor:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyRestoreButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 81
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyRewindButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 84
    :cond_0
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyPushButton:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyPushImage:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 85
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyPushButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyPinchButton:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyPinchImage:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 91
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyPinchButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyBloatButton:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyBloatImage:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 97
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyBloatButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyTwirlCcwButton:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyTwirlCcwImage:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 103
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyTwirlCcwButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyTwirlCwButton:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyTwirlCwImage:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 109
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyTwirlCwButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyRestoreButton:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyRestoreImage:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 115
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyRestoreButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyRewindButton:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyRewindImage:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 121
    iget-object v1, v0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyRewindButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$1$com-brakefield-painter-ui-toolbars-LiquifyToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 1

    .line 46
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;->liquifyTool:Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

    invoke-virtual {p2}, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->getDrawCursor()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->setDrawCursor(Z)V

    .line 47
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 48
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;->update()V

    return-void
.end method

.method synthetic lambda$getView$10$com-brakefield-painter-ui-toolbars-LiquifyToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 122
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;->liquifyTool:Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

    const/4 v0, 0x7

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->setTemplate(I)V

    .line 123
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$2$com-brakefield-painter-ui-toolbars-LiquifyToolbar(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;->applyTool(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-void
.end method

.method synthetic lambda$getView$3$com-brakefield-painter-ui-toolbars-LiquifyToolbar(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;->cancelTool(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-void
.end method

.method synthetic lambda$getView$4$com-brakefield-painter-ui-toolbars-LiquifyToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 86
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;->liquifyTool:Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->setTemplate(I)V

    .line 87
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$5$com-brakefield-painter-ui-toolbars-LiquifyToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 92
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;->liquifyTool:Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->setTemplate(I)V

    .line 93
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$6$com-brakefield-painter-ui-toolbars-LiquifyToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 98
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;->liquifyTool:Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->setTemplate(I)V

    .line 99
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$7$com-brakefield-painter-ui-toolbars-LiquifyToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 104
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;->liquifyTool:Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->setTemplate(I)V

    .line 105
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$8$com-brakefield-painter-ui-toolbars-LiquifyToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 110
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;->liquifyTool:Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

    const/16 v0, 0x9

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->setTemplate(I)V

    .line 111
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$9$com-brakefield-painter-ui-toolbars-LiquifyToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 116
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;->liquifyTool:Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

    const/4 v0, 0x6

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->setTemplate(I)V

    .line 117
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method public update()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;->update()V

    return-void
.end method
