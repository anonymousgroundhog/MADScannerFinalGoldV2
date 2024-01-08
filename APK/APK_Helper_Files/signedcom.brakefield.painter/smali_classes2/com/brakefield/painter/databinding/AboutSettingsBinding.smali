.class public final Lcom/brakefield/painter/databinding/AboutSettingsBinding;
.super Ljava/lang/Object;
.source "AboutSettingsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final aboutSettings:Landroid/widget/FrameLayout;

.field public final card:Landroidx/cardview/widget/CardView;

.field public final licensesButton:Landroid/widget/Button;

.field public final purchasesButton:Landroid/widget/Button;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final uploadPolicyButton:Landroid/widget/Button;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroidx/cardview/widget/CardView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/brakefield/painter/databinding/AboutSettingsBinding;->rootView:Landroid/widget/FrameLayout;

    .line 42
    iput-object p2, p0, Lcom/brakefield/painter/databinding/AboutSettingsBinding;->aboutSettings:Landroid/widget/FrameLayout;

    .line 43
    iput-object p3, p0, Lcom/brakefield/painter/databinding/AboutSettingsBinding;->card:Landroidx/cardview/widget/CardView;

    .line 44
    iput-object p4, p0, Lcom/brakefield/painter/databinding/AboutSettingsBinding;->licensesButton:Landroid/widget/Button;

    .line 45
    iput-object p5, p0, Lcom/brakefield/painter/databinding/AboutSettingsBinding;->purchasesButton:Landroid/widget/Button;

    .line 46
    iput-object p6, p0, Lcom/brakefield/painter/databinding/AboutSettingsBinding;->uploadPolicyButton:Landroid/widget/Button;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/AboutSettingsBinding;
    .locals 7

    .line 76
    move-object v2, p0

    check-cast v2, Landroid/widget/FrameLayout;

    const v0, 0x7f0a00fb

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/cardview/widget/CardView;

    if-eqz v3, :cond_0

    const v0, 0x7f0a0315

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    const v0, 0x7f0a047d

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    const v0, 0x7f0a067a

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    .line 102
    new-instance p0, Lcom/brakefield/painter/databinding/AboutSettingsBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v6}, Lcom/brakefield/painter/databinding/AboutSettingsBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroidx/cardview/widget/CardView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    return-object p0

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/AboutSettingsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/AboutSettingsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/AboutSettingsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/AboutSettingsBinding;
    .locals 2

    const v0, 0x7f0d001c

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/AboutSettingsBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/AboutSettingsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/AboutSettingsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/brakefield/painter/databinding/AboutSettingsBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
