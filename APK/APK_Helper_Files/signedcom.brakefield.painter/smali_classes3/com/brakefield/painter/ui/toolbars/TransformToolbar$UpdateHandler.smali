.class Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;
.super Ljava/lang/Object;
.source "TransformToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/toolbars/TransformToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateHandler"
.end annotation


# instance fields
.field private final observeFullVersion:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeMasking:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeTransformMode:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observeUnlockFrame:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final transformTool:Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;Lcom/brakefield/painter/databinding/TransformToolbarBinding;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;->transformTool:Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;

    .line 104
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/databinding/TransformToolbarBinding;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;->observeTransformMode:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 111
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3}, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/databinding/TransformToolbarBinding;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;->observeUnlockFrame:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 112
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p3}, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/databinding/TransformToolbarBinding;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;->observeMasking:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 117
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p3, p1}, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;Lcom/brakefield/painter/databinding/TransformToolbarBinding;Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;->observeFullVersion:Lcom/brakefield/infinitestudio/ui/components/Observe;

    return-void
.end method

.method private getDropdownAdapter(Landroid/content/Context;Z)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;
    .locals 17

    move-object/from16 v0, p1

    const v3, 0x7f0804c8

    const v4, 0x7f120117

    const v5, 0x7f0804c7

    const v6, 0x7f120041

    const v7, 0x7f0804c9

    const v8, 0x7f120053

    const/4 v9, 0x4

    const/4 v10, 0x3

    .line 143
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    .line 142
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    .line 141
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    .line 140
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    if-nez p2, :cond_0

    .line 132
    new-instance v1, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    new-array v9, v9, [Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;

    .line 133
    invoke-static {v8}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8, v7, v10}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    aput-object v2, v9, v16

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelLockedItem;

    .line 134
    invoke-static {v6}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6, v5, v15}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelLockedItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    aput-object v2, v9, v14

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelLockedItem;

    .line 135
    invoke-static {v4}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v3, v13}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelLockedItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    aput-object v2, v9, v12

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelLockedItem;

    const v3, 0x7f120b36

    .line 136
    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0804cc

    invoke-direct {v2, v3, v4, v11}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelLockedItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v3, 0x3

    aput-object v2, v9, v3

    invoke-direct {v1, v0, v9}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;)V

    return-object v1

    .line 139
    :cond_0
    new-instance v1, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    new-array v2, v9, [Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    new-instance v9, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;

    .line 140
    invoke-static {v8}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8, v7, v10}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    aput-object v9, v2, v16

    new-instance v7, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;

    .line 141
    invoke-static {v6}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, v5, v15}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    aput-object v7, v2, v14

    new-instance v5, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;

    .line 142
    invoke-static {v4}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, v3, v13}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    aput-object v5, v2, v12

    new-instance v3, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;

    const v4, 0x7f120b36

    .line 143
    invoke-static {v4}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0804cc

    invoke-direct {v3, v4, v5, v11}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-direct {v1, v0, v2}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;)V

    return-object v1
.end method

.method static synthetic lambda$new$0(Lcom/brakefield/painter/databinding/TransformToolbarBinding;Ljava/lang/Integer;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/brakefield/painter/databinding/TransformToolbarBinding;->transformSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    .line 106
    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;->getItemPositionFromReturnObject(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 108
    iget-object p0, p0, Lcom/brakefield/painter/databinding/TransformToolbarBinding;->transformSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setSelection(I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$new$1(Lcom/brakefield/painter/databinding/TransformToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/brakefield/painter/databinding/TransformToolbarBinding;->unlockFrame:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$2(Lcom/brakefield/painter/databinding/TransformToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 113
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/brakefield/painter/databinding/TransformToolbarBinding;->stamp:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object p0, p0, Lcom/brakefield/painter/databinding/TransformToolbarBinding;->stamp:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$new$3$com-brakefield-painter-ui-toolbars-TransformToolbar$UpdateHandler(Lcom/brakefield/painter/databinding/TransformToolbarBinding;Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;->observeTransformMode:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;->reset()V

    .line 119
    iget-object p1, p1, Lcom/brakefield/painter/databinding/TransformToolbarBinding;->transformSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-direct {p0, p2, p3}, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;->getDropdownAdapter(Landroid/content/Context;Z)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method update()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;->observeFullVersion:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMasterWithoutTrial()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;->observeTransformMode:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;->transformTool:Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;->getTransformMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;->observeUnlockFrame:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;->transformTool:Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;->isTransformingFrame()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/TransformToolbar$UpdateHandler;->observeMasking:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isMasking()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    return-void
.end method
