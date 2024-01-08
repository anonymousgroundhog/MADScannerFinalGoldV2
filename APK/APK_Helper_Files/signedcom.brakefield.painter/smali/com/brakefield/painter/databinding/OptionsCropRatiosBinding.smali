.class public final Lcom/brakefield/painter/databinding/OptionsCropRatiosBinding;
.super Ljava/lang/Object;
.source "OptionsCropRatiosBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ratio11Button:Landroid/widget/FrameLayout;

.field public final ratio11Image:Landroid/widget/ImageView;

.field public final ratio169Button:Landroid/widget/FrameLayout;

.field public final ratio169Image:Landroid/widget/ImageView;

.field public final ratio21Button:Landroid/widget/FrameLayout;

.field public final ratio21Image:Landroid/widget/ImageView;

.field public final ratio32Button:Landroid/widget/FrameLayout;

.field public final ratio32Image:Landroid/widget/ImageView;

.field public final ratio43Button:Landroid/widget/FrameLayout;

.field public final ratio43Image:Landroid/widget/ImageView;

.field public final ratioCustomButton:Landroid/widget/FrameLayout;

.field public final ratioCustomImage:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/brakefield/painter/databinding/OptionsCropRatiosBinding;->rootView:Landroid/widget/FrameLayout;

    .line 66
    iput-object p2, p0, Lcom/brakefield/painter/databinding/OptionsCropRatiosBinding;->ratio11Button:Landroid/widget/FrameLayout;

    .line 67
    iput-object p3, p0, Lcom/brakefield/painter/databinding/OptionsCropRatiosBinding;->ratio11Image:Landroid/widget/ImageView;

    .line 68
    iput-object p4, p0, Lcom/brakefield/painter/databinding/OptionsCropRatiosBinding;->ratio169Button:Landroid/widget/FrameLayout;

    .line 69
    iput-object p5, p0, Lcom/brakefield/painter/databinding/OptionsCropRatiosBinding;->ratio169Image:Landroid/widget/ImageView;

    .line 70
    iput-object p6, p0, Lcom/brakefield/painter/databinding/OptionsCropRatiosBinding;->ratio21Button:Landroid/widget/FrameLayout;

    .line 71
    iput-object p7, p0, Lcom/brakefield/painter/databinding/OptionsCropRatiosBinding;->ratio21Image:Landroid/widget/ImageView;

    .line 72
    iput-object p8, p0, Lcom/brakefield/painter/databinding/OptionsCropRatiosBinding;->ratio32Button:Landroid/widget/FrameLayout;

    .line 73
    iput-object p9, p0, Lcom/brakefield/painter/databinding/OptionsCropRatiosBinding;->ratio32Image:Landroid/widget/ImageView;

    .line 74
    iput-object p10, p0, Lcom/brakefield/painter/databinding/OptionsCropRatiosBinding;->ratio43Button:Landroid/widget/FrameLayout;

    .line 75
    iput-object p11, p0, Lcom/brakefield/painter/databinding/OptionsCropRatiosBinding;->ratio43Image:Landroid/widget/ImageView;

    .line 76
    iput-object p12, p0, Lcom/brakefield/painter/databinding/OptionsCropRatiosBinding;->ratioCustomButton:Landroid/widget/FrameLayout;

    .line 77
    iput-object p13, p0, Lcom/brakefield/painter/databinding/OptionsCropRatiosBinding;->ratioCustomImage:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/OptionsCropRatiosBinding;
    .locals 17

    move-object/from16 v0, p0

    const v1, 0x7f0a048a

    .line 108
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f0a048b

    .line 114
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a0488

    .line 120
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    const v1, 0x7f0a0489

    .line 126
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v1, 0x7f0a048c

    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_0

    const v1, 0x7f0a048d

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v1, 0x7f0a048e

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/FrameLayout;

    if-eqz v11, :cond_0

    const v1, 0x7f0a048f

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    const v1, 0x7f0a0490

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/FrameLayout;

    if-eqz v13, :cond_0

    const v1, 0x7f0a0491

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    const v1, 0x7f0a0492

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/FrameLayout;

    if-eqz v15, :cond_0

    const v1, 0x7f0a0493

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_0

    .line 179
    new-instance v1, Lcom/brakefield/painter/databinding/OptionsCropRatiosBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/brakefield/painter/databinding/OptionsCropRatiosBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V

    return-object v1

    .line 183
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/OptionsCropRatiosBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/OptionsCropRatiosBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/OptionsCropRatiosBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/OptionsCropRatiosBinding;
    .locals 2

    const v0, 0x7f0d00fe

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 96
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 98
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/OptionsCropRatiosBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/OptionsCropRatiosBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/OptionsCropRatiosBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/brakefield/painter/databinding/OptionsCropRatiosBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
