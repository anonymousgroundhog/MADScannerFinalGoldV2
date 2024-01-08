.class Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler;
.super Ljava/lang/Object;
.source "ResizeToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateHandler"
.end annotation


# instance fields
.field private final observeResizeHeight:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observeResizeLockContent:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeResizeRatioLock:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeResizeWidth:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final resizeTool:Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;Lcom/brakefield/painter/databinding/ResizeToolbarBinding;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler;->resizeTool:Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;

    .line 75
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/databinding/ResizeToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler;->observeResizeRatioLock:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 76
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/databinding/ResizeToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler;->observeResizeLockContent:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 80
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/databinding/ResizeToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler;->observeResizeWidth:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 81
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/databinding/ResizeToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler;->observeResizeHeight:Lcom/brakefield/infinitestudio/ui/components/Observe;

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/brakefield/painter/databinding/ResizeToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/brakefield/painter/databinding/ResizeToolbarBinding;->resizeLinkButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$1(Lcom/brakefield/painter/databinding/ResizeToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 77
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/brakefield/painter/databinding/ResizeToolbarBinding;->resizeLockButton:Landroid/widget/ImageView;

    const p1, 0x7f080293

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object p0, p0, Lcom/brakefield/painter/databinding/ResizeToolbarBinding;->resizeLockButton:Landroid/widget/ImageView;

    const p1, 0x7f080294

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$new$2(Lcom/brakefield/painter/databinding/ResizeToolbarBinding;Ljava/lang/Integer;)V
    .locals 2

    .line 80
    iget-object p0, p0, Lcom/brakefield/painter/databinding/ResizeToolbarBinding;->resizeWidthText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$new$3(Lcom/brakefield/painter/databinding/ResizeToolbarBinding;Ljava/lang/Integer;)V
    .locals 2

    .line 81
    iget-object p0, p0, Lcom/brakefield/painter/databinding/ResizeToolbarBinding;->resizeHeightText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method update()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler;->observeResizeWidth:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler;->resizeTool:Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler;->observeResizeHeight:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler;->resizeTool:Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler;->observeResizeRatioLock:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler;->resizeTool:Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->getLockRatio()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler;->observeResizeLockContent:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$UpdateHandler;->resizeTool:Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->getScaleContent()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    return-void
.end method
