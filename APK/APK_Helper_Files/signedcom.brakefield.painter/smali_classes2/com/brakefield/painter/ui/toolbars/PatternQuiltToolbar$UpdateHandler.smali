.class Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar$UpdateHandler;
.super Ljava/lang/Object;
.source "PatternQuiltToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar;
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

.field private final patternQuiltTool:Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;Lcom/brakefield/painter/databinding/PatternQuiltToolbarBinding;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar$UpdateHandler;->patternQuiltTool:Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;

    .line 59
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar$UpdateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar$UpdateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/databinding/PatternQuiltToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar$UpdateHandler;->observeReflectX:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 60
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar$UpdateHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar$UpdateHandler$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/databinding/PatternQuiltToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar$UpdateHandler;->observeReflectY:Lcom/brakefield/infinitestudio/ui/components/Observe;

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/brakefield/painter/databinding/PatternQuiltToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/brakefield/painter/databinding/PatternQuiltToolbarBinding;->reflectX:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$1(Lcom/brakefield/painter/databinding/PatternQuiltToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/brakefield/painter/databinding/PatternQuiltToolbarBinding;->reflectY:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method


# virtual methods
.method update()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar$UpdateHandler;->observeReflectX:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar$UpdateHandler;->patternQuiltTool:Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;->getReflectX()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar$UpdateHandler;->observeReflectY:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/PatternQuiltToolbar$UpdateHandler;->patternQuiltTool:Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;->getReflectY()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    return-void
.end method
