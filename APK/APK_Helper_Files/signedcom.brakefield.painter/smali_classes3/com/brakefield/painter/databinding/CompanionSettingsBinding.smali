.class public final Lcom/brakefield/painter/databinding/CompanionSettingsBinding;
.super Ljava/lang/Object;
.source "CompanionSettingsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final card:Landroidx/cardview/widget/CardView;

.field public final companionSettings:Landroid/widget/FrameLayout;

.field public final instapickService:Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroidx/cardview/widget/CardView;Landroid/widget/FrameLayout;Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/brakefield/painter/databinding/CompanionSettingsBinding;->rootView:Landroid/widget/FrameLayout;

    .line 35
    iput-object p2, p0, Lcom/brakefield/painter/databinding/CompanionSettingsBinding;->card:Landroidx/cardview/widget/CardView;

    .line 36
    iput-object p3, p0, Lcom/brakefield/painter/databinding/CompanionSettingsBinding;->companionSettings:Landroid/widget/FrameLayout;

    .line 37
    iput-object p4, p0, Lcom/brakefield/painter/databinding/CompanionSettingsBinding;->instapickService:Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/CompanionSettingsBinding;
    .locals 4

    const v0, 0x7f0a00fb

    .line 68
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/cardview/widget/CardView;

    if-eqz v1, :cond_1

    .line 73
    move-object v0, p0

    check-cast v0, Landroid/widget/FrameLayout;

    const v2, 0x7f0a02d2

    .line 76
    invoke-static {p0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 80
    invoke-static {v3}, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;

    move-result-object p0

    .line 82
    new-instance v2, Lcom/brakefield/painter/databinding/CompanionSettingsBinding;

    invoke-direct {v2, v0, v1, v0, p0}, Lcom/brakefield/painter/databinding/CompanionSettingsBinding;-><init>(Landroid/widget/FrameLayout;Landroidx/cardview/widget/CardView;Landroid/widget/FrameLayout;Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;)V

    return-object v2

    :cond_0
    move v0, v2

    .line 85
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/CompanionSettingsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/CompanionSettingsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/CompanionSettingsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/CompanionSettingsBinding;
    .locals 2

    const v0, 0x7f0d0055

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/CompanionSettingsBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/CompanionSettingsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/CompanionSettingsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/brakefield/painter/databinding/CompanionSettingsBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
