.class public Lcom/brakefield/painter/ui/toolbars/TransformToolbar;
.super Lcom/brakefield/painter/ui/toolbars/Toolbar;
.source "TransformToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;
    }
.end annotation


# instance fields
.field private transformTool:Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;

.field private updateHandler:Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/brakefield/painter/ui/toolbars/Toolbar;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/toolbars/TransformToolbar;)Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar;->transformTool:Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;

    return-object p0
.end method

.method static synthetic lambda$getView$2(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 71
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->transformDuplicate()V

    .line 72
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$getView$3(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 3

    .line 32
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getToolManager()Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getTransformTool()Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar;->transformTool:Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/TransformToolbarBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/TransformToolbarBinding;

    move-result-object v0

    .line 37
    new-instance v1, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;

    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar;->transformTool:Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;

    invoke-direct {v1, p1, v2, v0}, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;-><init>(Landroid/content/Context;Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;Lcom/brakefield/painter/databinding/TransformToolbarBinding;)V

    iput-object v1, p0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;

    .line 38
    iget-object v1, v0, Lcom/brakefield/painter/databinding/TransformToolbarBinding;->transformSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$1;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$1;-><init>(Lcom/brakefield/painter/ui/toolbars/TransformToolbar;Landroid/app/Activity;Lcom/brakefield/painter/databinding/TransformToolbarBinding;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 54
    iget-object v1, v0, Lcom/brakefield/painter/databinding/TransformToolbarBinding;->rotate:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 55
    iget-object v1, v0, Lcom/brakefield/painter/databinding/TransformToolbarBinding;->rotate:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 56
    iget-object v1, v0, Lcom/brakefield/painter/databinding/TransformToolbarBinding;->rotate:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/toolbars/TransformToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v1, v0, Lcom/brakefield/painter/databinding/TransformToolbarBinding;->flipHorizontal:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 62
    iget-object v1, v0, Lcom/brakefield/painter/databinding/TransformToolbarBinding;->flipHorizontal:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 63
    iget-object v1, v0, Lcom/brakefield/painter/databinding/TransformToolbarBinding;->flipHorizontal:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/toolbars/TransformToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v1, v0, Lcom/brakefield/painter/databinding/TransformToolbarBinding;->stamp:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 69
    iget-object v1, v0, Lcom/brakefield/painter/databinding/TransformToolbarBinding;->stamp:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 70
    iget-object v1, v0, Lcom/brakefield/painter/databinding/TransformToolbarBinding;->stamp:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2, p1}, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v1, v0, Lcom/brakefield/painter/databinding/TransformToolbarBinding;->options:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 76
    iget-object v1, v0, Lcom/brakefield/painter/databinding/TransformToolbarBinding;->options:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 77
    iget-object v1, v0, Lcom/brakefield/painter/databinding/TransformToolbarBinding;->options:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v1, v0, Lcom/brakefield/painter/databinding/TransformToolbarBinding;->unlockFrame:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 80
    iget-object v1, v0, Lcom/brakefield/painter/databinding/TransformToolbarBinding;->unlockFrame:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 81
    iget-object v1, v0, Lcom/brakefield/painter/databinding/TransformToolbarBinding;->unlockFrame:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/toolbars/TransformToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/TransformToolbarBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$0$com-brakefield-painter-ui-toolbars-TransformToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 57
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar;->transformTool:Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;

    invoke-virtual {p3}, Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;->transformRotateCW()V

    .line 58
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$1$com-brakefield-painter-ui-toolbars-TransformToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 64
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar;->transformTool:Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;

    invoke-virtual {p3}, Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;->transformFlip()V

    .line 65
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$4$com-brakefield-painter-ui-toolbars-TransformToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 82
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar;->transformTool:Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;

    invoke-virtual {p3}, Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;->toggleTransformingFrame()V

    .line 83
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method public update()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;->update()V

    return-void
.end method
