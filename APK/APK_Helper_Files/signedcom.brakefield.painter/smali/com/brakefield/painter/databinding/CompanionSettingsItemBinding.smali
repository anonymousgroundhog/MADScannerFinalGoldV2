.class public final Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;
.super Ljava/lang/Object;
.source "CompanionSettingsItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final activeToggle:Lcom/brakefield/infinitestudio/ui/CustomSwitch;

.field public final companionSettingsItem:Landroid/widget/FrameLayout;

.field public final description:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final installButton:Landroid/widget/Button;

.field public final launchButton:Landroid/widget/Button;

.field public final name:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final settings:Landroid/widget/TableLayout;

.field public final uninstallButton:Landroid/widget/Button;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/brakefield/infinitestudio/ui/CustomSwitch;Landroid/widget/FrameLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/Button;Landroid/widget/Button;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/TableLayout;Landroid/widget/Button;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->rootView:Landroid/widget/FrameLayout;

    .line 55
    iput-object p2, p0, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->activeToggle:Lcom/brakefield/infinitestudio/ui/CustomSwitch;

    .line 56
    iput-object p3, p0, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->companionSettingsItem:Landroid/widget/FrameLayout;

    .line 57
    iput-object p4, p0, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->description:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 58
    iput-object p5, p0, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->installButton:Landroid/widget/Button;

    .line 59
    iput-object p6, p0, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->launchButton:Landroid/widget/Button;

    .line 60
    iput-object p7, p0, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->name:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 61
    iput-object p8, p0, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->settings:Landroid/widget/TableLayout;

    .line 62
    iput-object p9, p0, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->uninstallButton:Landroid/widget/Button;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;
    .locals 12

    const v0, 0x7f0a004a

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/brakefield/infinitestudio/ui/CustomSwitch;

    if-eqz v4, :cond_0

    .line 98
    move-object v5, p0

    check-cast v5, Landroid/widget/FrameLayout;

    const v0, 0x7f0a019a

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a02d1

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_0

    const v0, 0x7f0a02fe

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_0

    const v0, 0x7f0a03c6

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a0549

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TableLayout;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0671

    .line 131
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/Button;

    if-eqz v11, :cond_0

    .line 136
    new-instance p0, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;

    move-object v2, p0

    move-object v3, v5

    invoke-direct/range {v2 .. v11}, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;-><init>(Landroid/widget/FrameLayout;Lcom/brakefield/infinitestudio/ui/CustomSwitch;Landroid/widget/FrameLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/Button;Landroid/widget/Button;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/TableLayout;Landroid/widget/Button;)V

    return-object p0

    .line 140
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 141
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;
    .locals 2

    const v0, 0x7f0d0056

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
