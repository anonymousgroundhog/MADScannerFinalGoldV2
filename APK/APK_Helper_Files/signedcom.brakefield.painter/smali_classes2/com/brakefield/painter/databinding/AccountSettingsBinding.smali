.class public final Lcom/brakefield/painter/databinding/AccountSettingsBinding;
.super Ljava/lang/Object;
.source "AccountSettingsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final accountSettings:Landroid/widget/FrameLayout;

.field public final card:Landroidx/cardview/widget/CardView;

.field public final loginButton:Landroid/widget/Button;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final userEmailText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final userNameText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final verifyButton:Landroid/widget/Button;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroidx/cardview/widget/CardView;Landroid/widget/Button;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/Button;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/brakefield/painter/databinding/AccountSettingsBinding;->rootView:Landroid/widget/FrameLayout;

    .line 47
    iput-object p2, p0, Lcom/brakefield/painter/databinding/AccountSettingsBinding;->accountSettings:Landroid/widget/FrameLayout;

    .line 48
    iput-object p3, p0, Lcom/brakefield/painter/databinding/AccountSettingsBinding;->card:Landroidx/cardview/widget/CardView;

    .line 49
    iput-object p4, p0, Lcom/brakefield/painter/databinding/AccountSettingsBinding;->loginButton:Landroid/widget/Button;

    .line 50
    iput-object p5, p0, Lcom/brakefield/painter/databinding/AccountSettingsBinding;->userEmailText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 51
    iput-object p6, p0, Lcom/brakefield/painter/databinding/AccountSettingsBinding;->userNameText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 52
    iput-object p7, p0, Lcom/brakefield/painter/databinding/AccountSettingsBinding;->verifyButton:Landroid/widget/Button;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/AccountSettingsBinding;
    .locals 8

    .line 82
    move-object v2, p0

    check-cast v2, Landroid/widget/FrameLayout;

    const v0, 0x7f0a00fb

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/cardview/widget/CardView;

    if-eqz v3, :cond_0

    const v0, 0x7f0a0344

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0680

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0681

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0689

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_0

    .line 114
    new-instance p0, Lcom/brakefield/painter/databinding/AccountSettingsBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v7}, Lcom/brakefield/painter/databinding/AccountSettingsBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroidx/cardview/widget/CardView;Landroid/widget/Button;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/Button;)V

    return-object p0

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/AccountSettingsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/AccountSettingsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/AccountSettingsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/AccountSettingsBinding;
    .locals 2

    const v0, 0x7f0d001f

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/AccountSettingsBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/AccountSettingsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/AccountSettingsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/brakefield/painter/databinding/AccountSettingsBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
