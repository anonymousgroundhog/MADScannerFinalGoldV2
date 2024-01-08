.class public Lcom/brakefield/painter/ui/toolbars/SelectionToolbar;
.super Lcom/brakefield/painter/ui/toolbars/Toolbar;
.source "SelectionToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$UpdateHandler;
    }
.end annotation


# instance fields
.field private selectColorRangeToolbar:Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar;

.field private spinnerAdapter:Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

.field private updateHandler:Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$UpdateHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/brakefield/painter/ui/toolbars/Toolbar;-><init>()V

    return-void
.end method

.method private bindUI(Lcom/brakefield/painter/databinding/SelectionToolbarBinding;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 1

    .line 155
    iget-object v0, p1, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectAllButton:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 156
    iget-object v0, p1, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectInvertButton:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 157
    iget-object v0, p1, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectClearButton:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 158
    iget-object v0, p1, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectTransformMaskButton:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 159
    iget-object v0, p1, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectExpandButton:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 160
    iget-object v0, p1, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectContractButton:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 161
    iget-object v0, p1, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectFeatherButton:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 163
    iget-object v0, p1, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectTransformButton:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 164
    iget-object v0, p1, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectDuplicateButton:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 165
    iget-object v0, p1, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectCopyMergedButton:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 166
    iget-object v0, p1, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectIsolateButton:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 167
    iget-object v0, p1, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectDeleteButton:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 168
    iget-object v0, p1, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectClipButton:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 169
    iget-object p1, p1, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectBrushButton:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$getView$0(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 85
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isErasing()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setErase(Z)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$getView$1(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 92
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getTargetLayerId()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->targetLayerWithId(I)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getSelectionWandSamplesAllLayers()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setSelectionWandSamplesAllLayers(Z)V

    .line 94
    :goto_0
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$getView$4(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 130
    sput-boolean p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->selectionClip:Z

    .line 131
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method static synthetic lambda$getView$5(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 137
    sput-boolean p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->selectionClipBrush:Z

    .line 138
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 35
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-static {v3}, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/SelectionToolbarBinding;

    move-result-object v3

    .line 37
    new-instance v4, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar;

    invoke-direct {v4}, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar;-><init>()V

    iput-object v4, v0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar;->selectColorRangeToolbar:Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar;

    .line 38
    iget-object v5, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectColorRangeSettings:Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;

    invoke-virtual {v4, v1, v2, v5}, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar;->setupView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;)V

    .line 40
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMasterWithoutTrial()Z

    move-result v4

    const/16 v6, 0x17

    .line 57
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v10, 0x16

    .line 56
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v14, 0x15

    .line 55
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v16, 0x7f12094e

    const/16 v17, 0x2

    const/16 v18, 0xc

    .line 54
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v9, 0x7f080459

    const v19, 0x7f120a81

    const/16 v20, 0x1

    const/16 v21, 0xb

    .line 53
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f080455

    const v22, 0x7f120a7e

    const/16 v13, 0x8

    const/16 v23, 0x0

    .line 59
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    if-nez v4, :cond_0

    .line 41
    new-instance v4, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    new-array v13, v13, [Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    new-instance v12, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;

    .line 42
    invoke-static/range {v22 .. v22}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v15, v8, v7}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    aput-object v12, v13, v23

    new-instance v7, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelLockedItem;

    .line 43
    invoke-static/range {v19 .. v19}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v9, v5}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelLockedItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    aput-object v7, v13, v20

    new-instance v5, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelLockedItem;

    .line 44
    invoke-static/range {v16 .. v16}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f080453

    invoke-direct {v5, v7, v8, v14}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelLockedItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    aput-object v5, v13, v17

    new-instance v5, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelLockedItem;

    const v7, 0x7f12094f

    .line 45
    invoke-static {v7}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f080458

    invoke-direct {v5, v7, v8, v10}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelLockedItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v7, 0x3

    aput-object v5, v13, v7

    new-instance v5, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelLockedItem;

    const v7, 0x7f1209d8

    .line 46
    invoke-static {v7}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f080457

    invoke-direct {v5, v7, v8, v6}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelLockedItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v6, 0x4

    aput-object v5, v13, v6

    new-instance v5, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelLockedItem;

    const v6, 0x7f120a82

    .line 47
    invoke-static {v6}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f0802af

    invoke-direct {v5, v6, v8, v7}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelLockedItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v6, 0x5

    aput-object v5, v13, v6

    new-instance v5, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelLockedItem;

    const v6, 0x7f12007a

    .line 48
    invoke-static {v6}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f080452

    invoke-direct {v5, v6, v7, v11}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelLockedItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v6, 0x6

    aput-object v5, v13, v6

    new-instance v5, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelLockedItem;

    const v6, 0x7f1200bc

    .line 49
    invoke-static {v6}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f080454

    invoke-direct {v5, v6, v8, v7}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelLockedItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v6, 0x7

    aput-object v5, v13, v6

    invoke-direct {v4, v1, v13}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;)V

    iput-object v4, v0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar;->spinnerAdapter:Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    goto/16 :goto_0

    .line 52
    :cond_0
    new-instance v4, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    new-array v12, v13, [Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    new-instance v13, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;

    .line 53
    invoke-static/range {v22 .. v22}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15, v8, v7}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    aput-object v13, v12, v23

    new-instance v7, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;

    .line 54
    invoke-static/range {v19 .. v19}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v9, v5}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    aput-object v7, v12, v20

    new-instance v5, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;

    .line 55
    invoke-static/range {v16 .. v16}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f080453

    invoke-direct {v5, v7, v8, v14}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    aput-object v5, v12, v17

    new-instance v5, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;

    const v7, 0x7f12094f

    .line 56
    invoke-static {v7}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f080458

    invoke-direct {v5, v7, v8, v10}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v7, 0x3

    aput-object v5, v12, v7

    new-instance v5, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;

    const v7, 0x7f1209d8

    .line 57
    invoke-static {v7}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f080457

    invoke-direct {v5, v7, v8, v6}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v6, 0x4

    aput-object v5, v12, v6

    new-instance v5, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;

    const v6, 0x7f120a82

    .line 58
    invoke-static {v6}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f0802af

    invoke-direct {v5, v6, v8, v7}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v6, 0x5

    aput-object v5, v12, v6

    new-instance v5, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;

    const v6, 0x7f12007a

    .line 59
    invoke-static {v6}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f080452

    invoke-direct {v5, v6, v7, v11}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v6, 0x6

    aput-object v5, v12, v6

    new-instance v5, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;

    const v6, 0x7f1200bc

    .line 60
    invoke-static {v6}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f080454

    invoke-direct {v5, v6, v8, v7}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v6, 0x7

    aput-object v5, v12, v6

    invoke-direct {v4, v1, v12}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;)V

    iput-object v4, v0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar;->spinnerAdapter:Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    .line 63
    :goto_0
    new-instance v4, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$UpdateHandler;

    iget-object v5, v0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar;->spinnerAdapter:Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    invoke-direct {v4, v3, v5}, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$UpdateHandler;-><init>(Lcom/brakefield/painter/databinding/SelectionToolbarBinding;Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;)V

    iput-object v4, v0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$UpdateHandler;

    .line 65
    iget-object v4, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectionToolSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    iget-object v5, v0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar;->spinnerAdapter:Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    invoke-virtual {v4, v5}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 66
    iget-object v4, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectionToolSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    new-instance v5, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$1;

    invoke-direct {v5, v0, v1, v3, v2}, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$1;-><init>(Lcom/brakefield/painter/ui/toolbars/SelectionToolbar;Landroid/app/Activity;Lcom/brakefield/painter/databinding/SelectionToolbarBinding;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v4, v5}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 82
    iget-object v4, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectionMode:Landroid/widget/ImageView;

    invoke-static {v4}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 83
    iget-object v4, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectionMode:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 84
    iget-object v4, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectionMode:Landroid/widget/ImageView;

    new-instance v5, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2, v1}, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v4, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->sampleFrom:Landroid/widget/ImageView;

    invoke-static {v4}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 90
    iget-object v4, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->sampleFrom:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 91
    iget-object v4, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->sampleFrom:Landroid/widget/ImageView;

    new-instance v5, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$$ExternalSyntheticLambda1;

    invoke-direct {v5, v2, v1}, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v4, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->apply:Landroid/widget/ImageView;

    invoke-static {v4}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 98
    iget-object v4, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->apply:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 99
    iget-object v4, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->apply:Landroid/widget/ImageView;

    new-instance v5, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0, v1, v2}, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/toolbars/SelectionToolbar;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v4, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->cancel:Landroid/widget/ImageView;

    invoke-static {v4}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 102
    iget-object v4, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->cancel:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 103
    iget-object v4, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->cancel:Landroid/widget/ImageView;

    new-instance v5, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0, v1, v2}, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/toolbars/SelectionToolbar;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v4, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectAllButton:Landroid/widget/FrameLayout;

    iget-object v5, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectAllImage:Landroid/widget/ImageView;

    const/16 v6, 0x12c

    invoke-static {v6}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v6

    invoke-virtual {v2, v1, v4, v5, v6}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 106
    iget-object v4, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectInvertButton:Landroid/widget/FrameLayout;

    iget-object v5, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectInvertImage:Landroid/widget/ImageView;

    const/16 v6, 0x12d

    invoke-static {v6}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v6

    invoke-virtual {v2, v1, v4, v5, v6}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 107
    iget-object v4, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectClearButton:Landroid/widget/FrameLayout;

    iget-object v5, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectClearImage:Landroid/widget/ImageView;

    const/16 v6, 0x12e

    invoke-static {v6}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v6

    invoke-virtual {v2, v1, v4, v5, v6}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 108
    iget-object v4, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectExpandButton:Landroid/widget/FrameLayout;

    iget-object v5, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectExpandImage:Landroid/widget/ImageView;

    const/16 v6, 0x12f

    invoke-static {v6}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v6

    invoke-virtual {v2, v1, v4, v5, v6}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 109
    iget-object v4, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectContractButton:Landroid/widget/FrameLayout;

    iget-object v5, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectContractImage:Landroid/widget/ImageView;

    const/16 v6, 0x130

    invoke-static {v6}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v6

    invoke-virtual {v2, v1, v4, v5, v6}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 110
    iget-object v4, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectFeatherButton:Landroid/widget/FrameLayout;

    iget-object v5, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectFeatherImage:Landroid/widget/ImageView;

    const/16 v6, 0x132

    invoke-static {v6}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v6

    invoke-virtual {v2, v1, v4, v5, v6}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 112
    iget-object v4, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectTransformMaskButton:Landroid/widget/FrameLayout;

    invoke-static {v4}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 113
    iget-object v4, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectTransformMaskImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 115
    iget-object v4, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectTransformButton:Landroid/widget/FrameLayout;

    iget-object v5, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectTransformImage:Landroid/widget/ImageView;

    const/16 v6, 0x64

    invoke-static {v6}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v6

    invoke-virtual {v2, v1, v4, v5, v6}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 117
    iget-object v1, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectDuplicateButton:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 118
    iget-object v1, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectDuplicateImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 120
    iget-object v1, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectCopyMergedButton:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 121
    iget-object v1, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectCopyMergedImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 123
    iget-object v1, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectIsolateButton:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 124
    iget-object v1, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectIsolateImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 126
    iget-object v1, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectDeleteButton:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 127
    iget-object v1, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectDeleteImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 129
    iget-object v1, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectClipButton:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$$ExternalSyntheticLambda4;

    invoke-direct {v4, v2}, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v1, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectClipButton:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 134
    iget-object v1, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectClipImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 136
    iget-object v1, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectBrushButton:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$$ExternalSyntheticLambda5;

    invoke-direct {v4, v2}, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v1, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectBrushButton:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 141
    iget-object v1, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectBrushImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 143
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    .line 144
    iget-object v4, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectionPagerHintLeft:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 145
    iget-object v4, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectionPagerHintRight:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 146
    iget-object v1, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectionPager:Lcom/brakefield/infinitestudio/ui/HorizontalPager;

    iget-object v4, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectionPagerHintLeft:Landroid/widget/ImageView;

    iget-object v5, v3, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectionPagerHintRight:Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v5}, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->setHintArrows(Landroid/view/View;Landroid/view/View;)V

    .line 148
    invoke-direct {v0, v3, v2}, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar;->bindUI(Lcom/brakefield/painter/databinding/SelectionToolbarBinding;Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 150
    invoke-virtual {v3}, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$getView$2$com-brakefield-painter-ui-toolbars-SelectionToolbar(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar;->applyTool(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-void
.end method

.method synthetic lambda$getView$3$com-brakefield-painter-ui-toolbars-SelectionToolbar(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar;->cancelTool(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-void
.end method

.method public update()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$UpdateHandler;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$UpdateHandler;->update()V

    .line 174
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar;->selectColorRangeToolbar:Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/toolbars/SelectColorRangeToolbar;->update()V

    return-void
.end method
