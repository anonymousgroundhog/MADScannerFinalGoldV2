.class public Lcom/brakefield/painter/ui/toolbars/StraightenToolbar;
.super Lcom/brakefield/painter/ui/toolbars/Toolbar;
.source "StraightenToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$UpdateHandler;
    }
.end annotation


# instance fields
.field private straightenTool:Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;

.field private updateHandler:Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$UpdateHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/brakefield/painter/ui/toolbars/Toolbar;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 3

    .line 23
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getToolManager()Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getStraightenTool()Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar;->straightenTool:Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;

    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/StraightenToolbarBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/StraightenToolbarBinding;

    move-result-object v0

    .line 28
    new-instance v1, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$UpdateHandler;

    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar;->straightenTool:Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;

    invoke-direct {v1, v2, v0}, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$UpdateHandler;-><init>(Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;Lcom/brakefield/painter/databinding/StraightenToolbarBinding;)V

    iput-object v1, p0, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$UpdateHandler;

    .line 30
    iget-object v1, v0, Lcom/brakefield/painter/databinding/StraightenToolbarBinding;->rotateButton:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 31
    iget-object v1, v0, Lcom/brakefield/painter/databinding/StraightenToolbarBinding;->rotateButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/toolbars/StraightenToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v1, v0, Lcom/brakefield/painter/databinding/StraightenToolbarBinding;->verticalButton:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 37
    iget-object v1, v0, Lcom/brakefield/painter/databinding/StraightenToolbarBinding;->verticalButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/toolbars/StraightenToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v1, v0, Lcom/brakefield/painter/databinding/StraightenToolbarBinding;->horizontalButton:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 43
    iget-object v1, v0, Lcom/brakefield/painter/databinding/StraightenToolbarBinding;->horizontalButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/toolbars/StraightenToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object p1, v0, Lcom/brakefield/painter/databinding/StraightenToolbarBinding;->resetButton:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 49
    iget-object p1, v0, Lcom/brakefield/painter/databinding/StraightenToolbarBinding;->resetButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 50
    iget-object p1, v0, Lcom/brakefield/painter/databinding/StraightenToolbarBinding;->resetButton:Landroid/widget/ImageView;

    new-instance p2, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/toolbars/StraightenToolbar;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/StraightenToolbarBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$0$com-brakefield-painter-ui-toolbars-StraightenToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 32
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar;->straightenTool:Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;->setMode(I)V

    .line 33
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$1$com-brakefield-painter-ui-toolbars-StraightenToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 38
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar;->straightenTool:Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;->setMode(I)V

    .line 39
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$2$com-brakefield-painter-ui-toolbars-StraightenToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 44
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar;->straightenTool:Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;->setMode(I)V

    .line 45
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$3$com-brakefield-painter-ui-toolbars-StraightenToolbar(Landroid/view/View;)V
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar;->straightenTool:Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;

    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;->reset()V

    return-void
.end method

.method public update()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$UpdateHandler;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$UpdateHandler;->update()V

    return-void
.end method
