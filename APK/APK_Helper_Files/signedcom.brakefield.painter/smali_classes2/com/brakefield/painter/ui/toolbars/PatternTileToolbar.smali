.class public Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar;
.super Lcom/brakefield/painter/ui/toolbars/Toolbar;
.source "PatternTileToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler;
    }
.end annotation


# instance fields
.field private patternTileTool:Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;

.field private updateHandler:Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/brakefield/painter/ui/toolbars/Toolbar;-><init>()V

    return-void
.end method

.method static synthetic lambda$getView$4(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 57
    sput-boolean p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveTilePattern:Z

    .line 58
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 3

    .line 24
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getToolManager()Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getPatternTileTool()Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar;->patternTileTool:Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler;

    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar;->patternTileTool:Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;

    invoke-direct {v1, v2, v0}, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler;-><init>(Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;)V

    iput-object v1, p0, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler;

    .line 31
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;->reflectX:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 32
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;->reflectX:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;->reflectY:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 38
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;->reflectY:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;->rotateX:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 44
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;->rotateX:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;->rotateY:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 50
    iget-object v1, v0, Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;->rotateY:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object p1, v0, Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;->save:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 56
    iget-object p1, v0, Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;->save:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2}, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object p1, v0, Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;->save:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 62
    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$0$com-brakefield-painter-ui-toolbars-PatternTileToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 33
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar;->patternTileTool:Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;

    invoke-virtual {p3}, Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;->toggleReflectX()V

    .line 34
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$1$com-brakefield-painter-ui-toolbars-PatternTileToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 39
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar;->patternTileTool:Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;

    invoke-virtual {p3}, Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;->toggleReflectY()V

    .line 40
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$2$com-brakefield-painter-ui-toolbars-PatternTileToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 45
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar;->patternTileTool:Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;

    invoke-virtual {p3}, Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;->toggleRotateX()V

    .line 46
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$3$com-brakefield-painter-ui-toolbars-PatternTileToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 51
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar;->patternTileTool:Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;

    invoke-virtual {p3}, Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;->toggleRotateY()V

    .line 52
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method public update()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler;->update()V

    return-void
.end method
