.class Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler;
.super Ljava/lang/Object;
.source "PatternTileToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateHandler"
.end annotation


# instance fields
.field private final observeReflectX:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeReflectY:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeRotateX:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeRotateY:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final patternTileTool:Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler;->patternTileTool:Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;

    .line 80
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler;->observeReflectX:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 81
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler;->observeReflectY:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 82
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler;->observeRotateX:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 83
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler;->observeRotateY:Lcom/brakefield/infinitestudio/ui/components/Observe;

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;->reflectX:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$1(Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;->reflectY:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$2(Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;->rotateX:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$3(Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/brakefield/painter/databinding/PatternTileToolbarBinding;->rotateY:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method


# virtual methods
.method update()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler;->observeReflectX:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler;->patternTileTool:Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;->getReflectX()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler;->observeReflectY:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler;->patternTileTool:Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;->getReflectY()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler;->observeRotateX:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler;->patternTileTool:Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;->getRotateX()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler;->observeRotateY:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/PatternTileToolbar$UpdateHandler;->patternTileTool:Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;->getRotateY()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    return-void
.end method
