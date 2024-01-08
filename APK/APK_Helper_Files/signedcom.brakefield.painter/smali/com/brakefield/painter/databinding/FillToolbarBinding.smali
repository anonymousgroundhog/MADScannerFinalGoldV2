.class public final Lcom/brakefield/painter/databinding/FillToolbarBinding;
.super Ljava/lang/Object;
.source "FillToolbarBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final color:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

.field public final fillSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

.field public final mirror:Landroid/widget/ImageView;

.field public final patternSource:Lcom/brakefield/infinitestudio/ui/RoundButton;

.field public final repeat:Landroid/widget/ImageView;

.field public final reverse:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final sampleFrom:Landroid/widget/ImageView;

.field public final settings:Landroid/widget/ImageView;

.field public final sweepCycles:Lcom/brakefield/infinitestudio/ui/PullButton;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/ColorFillButton;Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/RoundButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/PullButton;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->rootView:Landroid/widget/LinearLayout;

    .line 58
    iput-object p2, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->color:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    .line 59
    iput-object p3, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->fillSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    .line 60
    iput-object p4, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->mirror:Landroid/widget/ImageView;

    .line 61
    iput-object p5, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->patternSource:Lcom/brakefield/infinitestudio/ui/RoundButton;

    .line 62
    iput-object p6, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->repeat:Landroid/widget/ImageView;

    .line 63
    iput-object p7, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->reverse:Landroid/widget/ImageView;

    .line 64
    iput-object p8, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->sampleFrom:Landroid/widget/ImageView;

    .line 65
    iput-object p9, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->settings:Landroid/widget/ImageView;

    .line 66
    iput-object p10, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->sweepCycles:Lcom/brakefield/infinitestudio/ui/PullButton;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/FillToolbarBinding;
    .locals 13

    const v0, 0x7f0a0127

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0238

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0396

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a042e

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/brakefield/infinitestudio/ui/RoundButton;

    if-eqz v7, :cond_0

    const v0, 0x7f0a04a8

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a04b6

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a04cd

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0549

    .line 139
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a05d0

    .line 145
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/brakefield/infinitestudio/ui/PullButton;

    if-eqz v12, :cond_0

    .line 150
    new-instance v0, Lcom/brakefield/painter/databinding/FillToolbarBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/brakefield/painter/databinding/FillToolbarBinding;-><init>(Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/ColorFillButton;Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/RoundButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/PullButton;)V

    return-object v0

    .line 153
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 154
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/FillToolbarBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/FillToolbarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/FillToolbarBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/FillToolbarBinding;
    .locals 2

    const v0, 0x7f0d008f

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/FillToolbarBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/FillToolbarBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/FillToolbarBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
