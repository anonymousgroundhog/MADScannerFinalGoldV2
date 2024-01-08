.class public Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;
.super Lcom/brakefield/painter/ui/toolbars/Toolbar;
.source "ResizeToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler;
    }
.end annotation


# instance fields
.field private resizeTool:Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;

.field private updateHandler:Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/brakefield/painter/ui/toolbars/Toolbar;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 3

    .line 25
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getToolManager()Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getResizeTool()Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;->resizeTool:Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;

    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/ResizeToolbarBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/ResizeToolbarBinding;

    move-result-object v0

    .line 30
    new-instance v1, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler;

    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;->resizeTool:Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;

    invoke-direct {v1, v2, v0}, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler;-><init>(Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;Lcom/brakefield/painter/databinding/ResizeToolbarBinding;)V

    iput-object v1, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler;

    .line 32
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ResizeToolbarBinding;->resizeLinkButton:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 33
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ResizeToolbarBinding;->resizeLinkButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ResizeToolbarBinding;->resizeLockButton:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 39
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ResizeToolbarBinding;->resizeLockButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 40
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ResizeToolbarBinding;->resizeLockButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ResizeToolbarBinding;->resizeWidthText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 46
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ResizeToolbarBinding;->resizeWidthText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, p2}, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ResizeToolbarBinding;->resizeHeightText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 52
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ResizeToolbarBinding;->resizeHeightText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, p2}, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/ResizeToolbarBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$0$com-brakefield-painter-ui-toolbars-ResizeToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 34
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;->resizeTool:Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;

    invoke-virtual {p3}, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->getLockRatio()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->setLockRatio(Z)V

    .line 35
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$1$com-brakefield-painter-ui-toolbars-ResizeToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 41
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;->resizeTool:Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;

    invoke-virtual {p3}, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->getScaleContent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->setScaleContent(Z)V

    .line 42
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$2$com-brakefield-painter-ui-toolbars-ResizeToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Ljava/lang/Integer;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;->resizeTool:Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->setWidth(I)V

    .line 48
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$3$com-brakefield-painter-ui-toolbars-ResizeToolbar(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 1

    .line 46
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;->resizeTool:Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;

    invoke-virtual {p3}, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->getWidth()I

    move-result p3

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    const p2, 0x7f120b3b

    invoke-static {p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/Dialogs;->showNumberInputDialog(Landroid/content/Context;IILcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method synthetic lambda$getView$4$com-brakefield-painter-ui-toolbars-ResizeToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Ljava/lang/Integer;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;->resizeTool:Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->setHeight(I)V

    .line 54
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$5$com-brakefield-painter-ui-toolbars-ResizeToolbar(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 1

    .line 52
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;->resizeTool:Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;

    invoke-virtual {p3}, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->getHeight()I

    move-result p3

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    const p2, 0x7f1201ef

    invoke-static {p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/Dialogs;->showNumberInputDialog(Landroid/content/Context;IILcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method public update()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler;->update()V

    return-void
.end method
