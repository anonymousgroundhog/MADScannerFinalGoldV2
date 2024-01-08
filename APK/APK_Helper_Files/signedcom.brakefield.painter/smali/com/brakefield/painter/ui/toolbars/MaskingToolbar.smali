.class public Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;
.super Lcom/brakefield/painter/ui/toolbars/Toolbar;
.source "MaskingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/toolbars/MaskingToolbar$UpdateHandler;
    }
.end annotation


# instance fields
.field private maskToolManager:Lcom/brakefield/painter/nativeobjs/MaskToolManagerNative;

.field private updateHandler:Lcom/brakefield/painter/ui/toolbars/MaskingToolbar$UpdateHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/brakefield/painter/ui/toolbars/Toolbar;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;)Lcom/brakefield/painter/nativeobjs/MaskToolManagerNative;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;->maskToolManager:Lcom/brakefield/painter/nativeobjs/MaskToolManagerNative;

    return-object p0
.end method

.method static synthetic lambda$setupView$0(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 66
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->filterMaskInvert()V

    .line 67
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 1

    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/MaskingToolbarBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/MaskingToolbarBinding;

    move-result-object v0

    .line 31
    invoke-virtual {p0, p1, p2, v0}, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;->setupView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/MaskingToolbarBinding;)V

    .line 32
    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/MaskingToolbarBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public setupView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/MaskingToolbarBinding;)V
    .locals 9

    .line 37
    new-instance v0, Lcom/brakefield/painter/nativeobjs/MaskToolManagerNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getMaskToolManager()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/MaskToolManagerNative;-><init>(J)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;->maskToolManager:Lcom/brakefield/painter/nativeobjs/MaskToolManagerNative;

    .line 39
    new-instance v0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;

    const v3, 0x7f1209aa

    .line 40
    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0802f3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v3, v4, v6}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;

    const v3, 0x7f1201c2

    .line 41
    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0801e0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v3, v4, v6}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;

    const v3, 0x7f120af4

    .line 42
    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0804bc

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v3, v4, v6}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;

    const v3, 0x7f1201fd

    .line 43
    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f0802b2

    invoke-direct {v2, v3, v6, v5}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;

    const v5, 0x7f120946

    .line 44
    invoke-static {v5}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f0802b3

    invoke-direct {v2, v5, v8, v7}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;

    const v4, 0x7f120a87

    .line 45
    invoke-static {v4}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f0802b7

    invoke-direct {v2, v4, v8, v7}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;

    const v4, 0x7f120a5f

    .line 46
    invoke-static {v4}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v4

    const v6, 0x7f080082

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v4, v6, v3}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    aput-object v2, v1, v5

    invoke-direct {v0, p1, v1}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;)V

    .line 49
    new-instance v1, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar$UpdateHandler;

    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;->maskToolManager:Lcom/brakefield/painter/nativeobjs/MaskToolManagerNative;

    invoke-direct {v1, v2, p3, v0}, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar$UpdateHandler;-><init>(Lcom/brakefield/painter/nativeobjs/MaskToolManagerNative;Lcom/brakefield/painter/databinding/MaskingToolbarBinding;Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;)V

    iput-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/MaskingToolbar$UpdateHandler;

    .line 51
    iget-object v1, p3, Lcom/brakefield/painter/databinding/MaskingToolbarBinding;->maskToolsSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 52
    iget-object v0, p3, Lcom/brakefield/painter/databinding/MaskingToolbarBinding;->maskToolsSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    new-instance v1, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar$1;-><init>(Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 63
    iget-object p1, p3, Lcom/brakefield/painter/databinding/MaskingToolbarBinding;->invertMask:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 64
    iget-object p1, p3, Lcom/brakefield/painter/databinding/MaskingToolbarBinding;->invertMask:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 65
    iget-object p1, p3, Lcom/brakefield/painter/databinding/MaskingToolbarBinding;->invertMask:Landroid/widget/ImageView;

    new-instance p3, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2}, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public update()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/MaskingToolbar$UpdateHandler;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar$UpdateHandler;->update()V

    return-void
.end method
