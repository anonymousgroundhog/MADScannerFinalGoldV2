.class Lcom/brakefield/painter/ui/toolbars/MaskingToolbar$UpdateHandler;
.super Ljava/lang/Object;
.source "MaskingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateHandler"
.end annotation


# instance fields
.field private final maskToolManager:Lcom/brakefield/painter/nativeobjs/MaskToolManagerNative;

.field private final observeToolType:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/brakefield/painter/nativeobjs/MaskToolManagerNative;Lcom/brakefield/painter/databinding/MaskingToolbarBinding;Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar$UpdateHandler;->maskToolManager:Lcom/brakefield/painter/nativeobjs/MaskToolManagerNative;

    .line 84
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar$UpdateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3, p2}, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar$UpdateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;Lcom/brakefield/painter/databinding/MaskingToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar$UpdateHandler;->observeToolType:Lcom/brakefield/infinitestudio/ui/components/Observe;

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;Lcom/brakefield/painter/databinding/MaskingToolbarBinding;Ljava/lang/Integer;)V
    .locals 0

    .line 85
    invoke-virtual {p0, p2}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;->getItemPositionFromReturnObject(Ljava/lang/Object;)I

    move-result p0

    const/4 p2, -0x1

    if-eq p0, p2, :cond_0

    .line 86
    iget-object p1, p1, Lcom/brakefield/painter/databinding/MaskingToolbarBinding;->maskToolsSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    invoke-virtual {p1, p0}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setSelection(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method update()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar$UpdateHandler;->observeToolType:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar$UpdateHandler;->maskToolManager:Lcom/brakefield/painter/nativeobjs/MaskToolManagerNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/MaskToolManagerNative;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    return-void
.end method
