.class Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler;
.super Ljava/lang/Object;
.source "PanelsToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateHandler"
.end annotation


# instance fields
.field private final observeColor:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observeGutter:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observeHeight:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observeWidth:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final panelTool:Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;Lcom/brakefield/painter/databinding/PanelsToolbarBinding;)V
    .locals 1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler;->panelTool:Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;

    .line 206
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/databinding/PanelsToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler;->observeWidth:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 207
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/databinding/PanelsToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler;->observeHeight:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 208
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/databinding/PanelsToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler;->observeGutter:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 209
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/databinding/PanelsToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler;->observeColor:Lcom/brakefield/infinitestudio/ui/components/Observe;

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/brakefield/painter/databinding/PanelsToolbarBinding;Ljava/lang/Integer;)V
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->widthSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/PullButton;->setProgress(I)V

    return-void
.end method

.method static synthetic lambda$new$1(Lcom/brakefield/painter/databinding/PanelsToolbarBinding;Ljava/lang/Integer;)V
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->widthSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/PullButton;->setProgress(I)V

    return-void
.end method

.method static synthetic lambda$new$2(Lcom/brakefield/painter/databinding/PanelsToolbarBinding;Ljava/lang/Integer;)V
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->widthSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/PullButton;->setProgress(I)V

    return-void
.end method

.method static synthetic lambda$new$3(Lcom/brakefield/painter/databinding/PanelsToolbarBinding;Ljava/lang/Integer;)V
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->panelsColor:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method update()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler;->observeWidth:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler;->panelTool:Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;->getWidthMargin()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler;->observeHeight:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler;->panelTool:Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;->getHeightMargin()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler;->observeGutter:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler;->panelTool:Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;->getGutterSize()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler;->observeColor:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler;->panelTool:Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;->getColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    return-void
.end method
