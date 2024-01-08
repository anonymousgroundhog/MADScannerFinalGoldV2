.class public Lcom/brakefield/painter/ui/toolbars/CropToolbar;
.super Lcom/brakefield/painter/ui/toolbars/Toolbar;
.source "CropToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/toolbars/CropToolbar$UpdateHandler;
    }
.end annotation


# instance fields
.field private cropTool:Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;

.field private updateHandler:Lcom/brakefield/painter/ui/toolbars/CropToolbar$UpdateHandler;


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
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getCropTool()Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/CropToolbar;->cropTool:Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;

    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/CropToolbarBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/CropToolbarBinding;

    move-result-object v0

    .line 30
    new-instance v1, Lcom/brakefield/painter/ui/toolbars/CropToolbar$UpdateHandler;

    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/CropToolbar;->cropTool:Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;

    invoke-direct {v1, v2, v0}, Lcom/brakefield/painter/ui/toolbars/CropToolbar$UpdateHandler;-><init>(Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;Lcom/brakefield/painter/databinding/CropToolbarBinding;)V

    iput-object v1, p0, Lcom/brakefield/painter/ui/toolbars/CropToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/CropToolbar$UpdateHandler;

    .line 32
    iget-object v1, v0, Lcom/brakefield/painter/databinding/CropToolbarBinding;->cropLinkButton:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 33
    iget-object v1, v0, Lcom/brakefield/painter/databinding/CropToolbarBinding;->cropLinkButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/CropToolbar$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/CropToolbar$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/toolbars/CropToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v1, v0, Lcom/brakefield/painter/databinding/CropToolbarBinding;->cropRotateButton:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 39
    iget-object v1, v0, Lcom/brakefield/painter/databinding/CropToolbarBinding;->cropRotateButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 40
    iget-object v1, v0, Lcom/brakefield/painter/databinding/CropToolbarBinding;->cropRotateButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/CropToolbar$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/CropToolbar$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/toolbars/CropToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v1, v0, Lcom/brakefield/painter/databinding/CropToolbarBinding;->cropSizeWidthText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 46
    iget-object v1, v0, Lcom/brakefield/painter/databinding/CropToolbarBinding;->cropSizeWidthText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/CropToolbar$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, p2}, Lcom/brakefield/painter/ui/toolbars/CropToolbar$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/toolbars/CropToolbar;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v1, v0, Lcom/brakefield/painter/databinding/CropToolbarBinding;->cropSizeHeightText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 52
    iget-object v1, v0, Lcom/brakefield/painter/databinding/CropToolbarBinding;->cropSizeHeightText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/CropToolbar$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1, p2}, Lcom/brakefield/painter/ui/toolbars/CropToolbar$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/toolbars/CropToolbar;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/CropToolbarBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$0$com-brakefield-painter-ui-toolbars-CropToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 34
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/CropToolbar;->cropTool:Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;

    invoke-virtual {p3}, Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;->getLockRatio()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;->setLockRatio(Z)V

    .line 35
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$1$com-brakefield-painter-ui-toolbars-CropToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 41
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/CropToolbar;->cropTool:Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;

    invoke-virtual {p3}, Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;->rotate()V

    .line 42
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$2$com-brakefield-painter-ui-toolbars-CropToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Ljava/lang/Integer;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/CropToolbar;->cropTool:Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;->setWidth(I)V

    .line 48
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$3$com-brakefield-painter-ui-toolbars-CropToolbar(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 1

    .line 46
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/CropToolbar;->cropTool:Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;

    invoke-virtual {p3}, Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;->getWidth()I

    move-result p3

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/CropToolbar$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/CropToolbar$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/toolbars/CropToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    const p2, 0x7f120b3b

    invoke-static {p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/Dialogs;->showNumberInputDialog(Landroid/content/Context;IILcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method synthetic lambda$getView$4$com-brakefield-painter-ui-toolbars-CropToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Ljava/lang/Integer;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/CropToolbar;->cropTool:Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;->setHeight(I)V

    .line 54
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$5$com-brakefield-painter-ui-toolbars-CropToolbar(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 1

    .line 52
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/CropToolbar;->cropTool:Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;

    invoke-virtual {p3}, Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;->getHeight()I

    move-result p3

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/CropToolbar$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/CropToolbar$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/toolbars/CropToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    const p2, 0x7f1201ef

    invoke-static {p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/Dialogs;->showNumberInputDialog(Landroid/content/Context;IILcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method public update()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/CropToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/CropToolbar$UpdateHandler;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/toolbars/CropToolbar$UpdateHandler;->update()V

    return-void
.end method
