.class public final Lcom/brakefield/painter/databinding/DialogTrialBinding;
.super Ljava/lang/Object;
.source "DialogTrialBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final purchasableContent:Landroid/widget/ScrollView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final trialCard:Landroid/widget/ImageView;

.field public final trialDescription:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final trialStoreText:Landroid/widget/Button;

.field public final trialSuperTitle:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final trialTitle:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ScrollView;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/Button;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/brakefield/painter/databinding/DialogTrialBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 48
    iput-object p2, p0, Lcom/brakefield/painter/databinding/DialogTrialBinding;->purchasableContent:Landroid/widget/ScrollView;

    .line 49
    iput-object p3, p0, Lcom/brakefield/painter/databinding/DialogTrialBinding;->trialCard:Landroid/widget/ImageView;

    .line 50
    iput-object p4, p0, Lcom/brakefield/painter/databinding/DialogTrialBinding;->trialDescription:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 51
    iput-object p5, p0, Lcom/brakefield/painter/databinding/DialogTrialBinding;->trialStoreText:Landroid/widget/Button;

    .line 52
    iput-object p6, p0, Lcom/brakefield/painter/databinding/DialogTrialBinding;->trialSuperTitle:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 53
    iput-object p7, p0, Lcom/brakefield/painter/databinding/DialogTrialBinding;->trialTitle:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/DialogTrialBinding;
    .locals 10

    const v0, 0x7f0a0478

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ScrollView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a065d

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a065e

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a065f

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0660

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0661

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v9, :cond_0

    .line 119
    new-instance v0, Lcom/brakefield/painter/databinding/DialogTrialBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/brakefield/painter/databinding/DialogTrialBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ScrollView;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/Button;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V

    return-object v0

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 123
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/DialogTrialBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/DialogTrialBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/DialogTrialBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/DialogTrialBinding;
    .locals 2

    const v0, 0x7f0d0076

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/DialogTrialBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/DialogTrialBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/DialogTrialBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/brakefield/painter/databinding/DialogTrialBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
