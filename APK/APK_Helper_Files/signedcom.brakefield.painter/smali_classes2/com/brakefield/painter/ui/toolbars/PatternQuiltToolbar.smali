.class public Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar;
.super Lcom/brakefield/painter/ui/toolbars/Toolbar;
.source "PatternQuiltToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar$UpdateHandler;
    }
.end annotation


# instance fields
.field private patternQuiltTool:Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;

.field private updateHandler:Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar$UpdateHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/brakefield/painter/ui/toolbars/Toolbar;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 3

    .line 24
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getToolManager()Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getPatternQuiltTool()Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar;->patternQuiltTool:Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/PatternQuiltToolbarBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/PatternQuiltToolbarBinding;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar$UpdateHandler;

    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar;->patternQuiltTool:Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;

    invoke-direct {v1, v2, v0}, Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar$UpdateHandler;-><init>(Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;Lcom/brakefield/painter/databinding/PatternQuiltToolbarBinding;)V

    iput-object v1, p0, Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar$UpdateHandler;

    .line 31
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternQuiltToolbarBinding;->reflectX:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 32
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternQuiltToolbarBinding;->reflectX:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternQuiltToolbarBinding;->reflectY:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 38
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternQuiltToolbarBinding;->reflectY:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/PatternQuiltToolbarBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$0$com-brakefield-painter-ui-toolbars-PatternQuiltToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 33
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar;->patternQuiltTool:Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;

    invoke-virtual {p3}, Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;->getReflectX()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;->setReflectX(Z)V

    .line 34
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$1$com-brakefield-painter-ui-toolbars-PatternQuiltToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 39
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar;->patternQuiltTool:Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;

    invoke-virtual {p3}, Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;->getReflectY()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;->setReflectY(Z)V

    .line 40
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method public update()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar$UpdateHandler;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar$UpdateHandler;->update()V

    return-void
.end method
