.class Lcom/brakefield/painter/ui/toolbars/CropToolbar$UpdateHandler;
.super Ljava/lang/Object;
.source "CropToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/toolbars/CropToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateHandler"
.end annotation


# instance fields
.field private final cropTool:Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;

.field private final observeCropHeight:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observeCropRatioLock:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeCropWidth:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;Lcom/brakefield/painter/databinding/CropToolbarBinding;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/CropToolbar$UpdateHandler;->cropTool:Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;

    .line 73
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/CropToolbar$UpdateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/CropToolbar$UpdateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/databinding/CropToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/CropToolbar$UpdateHandler;->observeCropRatioLock:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 74
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/CropToolbar$UpdateHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/CropToolbar$UpdateHandler$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/databinding/CropToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/CropToolbar$UpdateHandler;->observeCropWidth:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 75
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/CropToolbar$UpdateHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/CropToolbar$UpdateHandler$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/databinding/CropToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/CropToolbar$UpdateHandler;->observeCropHeight:Lcom/brakefield/infinitestudio/ui/components/Observe;

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/brakefield/painter/databinding/CropToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/brakefield/painter/databinding/CropToolbarBinding;->cropLinkButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$1(Lcom/brakefield/painter/databinding/CropToolbarBinding;Ljava/lang/Integer;)V
    .locals 2

    .line 74
    iget-object p0, p0, Lcom/brakefield/painter/databinding/CropToolbarBinding;->cropSizeWidthText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

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

.method static synthetic lambda$new$2(Lcom/brakefield/painter/databinding/CropToolbarBinding;Ljava/lang/Integer;)V
    .locals 2

    .line 75
    iget-object p0, p0, Lcom/brakefield/painter/databinding/CropToolbarBinding;->cropSizeHeightText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

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

    .line 79
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/CropToolbar$UpdateHandler;->observeCropWidth:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/CropToolbar$UpdateHandler;->cropTool:Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/CropToolbar$UpdateHandler;->observeCropHeight:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/CropToolbar$UpdateHandler;->cropTool:Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/CropToolbar$UpdateHandler;->observeCropRatioLock:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/CropToolbar$UpdateHandler;->cropTool:Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;->getLockRatio()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    return-void
.end method
