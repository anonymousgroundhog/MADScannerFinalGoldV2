.class Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$UpdateHandler;
.super Ljava/lang/Object;
.source "StraightenToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/toolbars/StraightenToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateHandler"
.end annotation


# instance fields
.field private final observeHorizontalPerspective:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeStraighten:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeVerticalPerspective:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final straightenTool:Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;Lcom/brakefield/painter/databinding/StraightenToolbarBinding;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$UpdateHandler;->straightenTool:Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;

    .line 69
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$UpdateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$UpdateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/databinding/StraightenToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$UpdateHandler;->observeStraighten:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 70
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$UpdateHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$UpdateHandler$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/databinding/StraightenToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$UpdateHandler;->observeHorizontalPerspective:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 71
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$UpdateHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$UpdateHandler$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/databinding/StraightenToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$UpdateHandler;->observeVerticalPerspective:Lcom/brakefield/infinitestudio/ui/components/Observe;

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/brakefield/painter/databinding/StraightenToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/brakefield/painter/databinding/StraightenToolbarBinding;->rotateButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$1(Lcom/brakefield/painter/databinding/StraightenToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/brakefield/painter/databinding/StraightenToolbarBinding;->horizontalButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$2(Lcom/brakefield/painter/databinding/StraightenToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/brakefield/painter/databinding/StraightenToolbarBinding;->verticalButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method


# virtual methods
.method update()V
    .locals 5

    .line 75
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$UpdateHandler;->straightenTool:Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;->getMode()I

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$UpdateHandler;->observeStraighten:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 77
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$UpdateHandler;->observeHorizontalPerspective:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 78
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$UpdateHandler;->observeVerticalPerspective:Lcom/brakefield/infinitestudio/ui/components/Observe;

    if-ne v0, v3, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    return-void
.end method
