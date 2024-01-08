.class public final Lcom/brakefield/painter/databinding/LayersPanelBinding;
.super Ljava/lang/Object;
.source "LayersPanelBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final backgroundColorButton:Lcom/brakefield/infinitestudio/ui/RoundButton;

.field public final backgroundLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final backgroundThumb:Landroid/widget/FrameLayout;

.field public final backgroundTrayVisibility:Landroid/widget/ImageView;

.field public final container:Landroidx/recyclerview/widget/RecyclerView;

.field public final layersAddAdjustmentButton:Landroid/widget/FrameLayout;

.field public final layersAddAdjustmentImage:Landroid/widget/ImageView;

.field public final layersAddButton:Landroid/widget/ImageView;

.field public final layersAddGroupButton:Landroid/widget/FrameLayout;

.field public final layersAddGroupButtonLock:Landroid/widget/ImageView;

.field public final layersAddGroupImage:Landroid/widget/ImageView;

.field public final layersExpandedOptions:Landroidx/constraintlayout/helper/widget/Layer;

.field public final layersRenderingButton:Landroid/widget/ImageView;

.field private final rootView:Lcom/brakefield/infinitestudio/gestures/GestureLayout;


# direct methods
.method private constructor <init>(Lcom/brakefield/infinitestudio/gestures/GestureLayout;Lcom/brakefield/infinitestudio/ui/RoundButton;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/helper/widget/Layer;Landroid/widget/ImageView;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/brakefield/painter/databinding/LayersPanelBinding;->rootView:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    .line 75
    iput-object p2, p0, Lcom/brakefield/painter/databinding/LayersPanelBinding;->backgroundColorButton:Lcom/brakefield/infinitestudio/ui/RoundButton;

    .line 76
    iput-object p3, p0, Lcom/brakefield/painter/databinding/LayersPanelBinding;->backgroundLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 77
    iput-object p4, p0, Lcom/brakefield/painter/databinding/LayersPanelBinding;->backgroundThumb:Landroid/widget/FrameLayout;

    .line 78
    iput-object p5, p0, Lcom/brakefield/painter/databinding/LayersPanelBinding;->backgroundTrayVisibility:Landroid/widget/ImageView;

    .line 79
    iput-object p6, p0, Lcom/brakefield/painter/databinding/LayersPanelBinding;->container:Landroidx/recyclerview/widget/RecyclerView;

    .line 80
    iput-object p7, p0, Lcom/brakefield/painter/databinding/LayersPanelBinding;->layersAddAdjustmentButton:Landroid/widget/FrameLayout;

    .line 81
    iput-object p8, p0, Lcom/brakefield/painter/databinding/LayersPanelBinding;->layersAddAdjustmentImage:Landroid/widget/ImageView;

    .line 82
    iput-object p9, p0, Lcom/brakefield/painter/databinding/LayersPanelBinding;->layersAddButton:Landroid/widget/ImageView;

    .line 83
    iput-object p10, p0, Lcom/brakefield/painter/databinding/LayersPanelBinding;->layersAddGroupButton:Landroid/widget/FrameLayout;

    .line 84
    iput-object p11, p0, Lcom/brakefield/painter/databinding/LayersPanelBinding;->layersAddGroupButtonLock:Landroid/widget/ImageView;

    .line 85
    iput-object p12, p0, Lcom/brakefield/painter/databinding/LayersPanelBinding;->layersAddGroupImage:Landroid/widget/ImageView;

    .line 86
    iput-object p13, p0, Lcom/brakefield/painter/databinding/LayersPanelBinding;->layersExpandedOptions:Landroidx/constraintlayout/helper/widget/Layer;

    .line 87
    iput-object p14, p0, Lcom/brakefield/painter/databinding/LayersPanelBinding;->layersRenderingButton:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/LayersPanelBinding;
    .locals 18

    move-object/from16 v0, p0

    const v1, 0x7f0a007d

    .line 118
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/brakefield/infinitestudio/ui/RoundButton;

    if-eqz v5, :cond_0

    const v1, 0x7f0a007f

    .line 124
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a0080

    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    const v1, 0x7f0a0082

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v1, 0x7f0a015c

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v9, :cond_0

    const v1, 0x7f0a0305

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_0

    const v1, 0x7f0a0306

    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v1, 0x7f0a0307

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    const v1, 0x7f0a0308

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/FrameLayout;

    if-eqz v13, :cond_0

    const v1, 0x7f0a0309

    .line 172
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    const v1, 0x7f0a030a

    .line 178
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a030c

    .line 184
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/constraintlayout/helper/widget/Layer;

    if-eqz v16, :cond_0

    const v1, 0x7f0a030e

    .line 190
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ImageView;

    if-eqz v17, :cond_0

    .line 195
    new-instance v1, Lcom/brakefield/painter/databinding/LayersPanelBinding;

    move-object v4, v0

    check-cast v4, Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lcom/brakefield/painter/databinding/LayersPanelBinding;-><init>(Lcom/brakefield/infinitestudio/gestures/GestureLayout;Lcom/brakefield/infinitestudio/ui/RoundButton;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/helper/widget/Layer;Landroid/widget/ImageView;)V

    return-object v1

    .line 201
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/LayersPanelBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/LayersPanelBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/LayersPanelBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/LayersPanelBinding;
    .locals 2

    const v0, 0x7f0d00b3

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 106
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/LayersPanelBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/LayersPanelBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/LayersPanelBinding;->getRoot()Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/brakefield/infinitestudio/gestures/GestureLayout;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/brakefield/painter/databinding/LayersPanelBinding;->rootView:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    return-object v0
.end method
