.class public final Lcom/brakefield/painter/databinding/DeviceSettingsBinding;
.super Ljava/lang/Object;
.source "DeviceSettingsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final deviceSettings:Landroid/widget/FrameLayout;

.field public final disableBackButtonToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final settingsHardwareCard:Landroidx/cardview/widget/CardView;

.field public final volumeKeysDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroidx/cardview/widget/CardView;Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/brakefield/painter/databinding/DeviceSettingsBinding;->rootView:Landroid/widget/FrameLayout;

    .line 40
    iput-object p2, p0, Lcom/brakefield/painter/databinding/DeviceSettingsBinding;->deviceSettings:Landroid/widget/FrameLayout;

    .line 41
    iput-object p3, p0, Lcom/brakefield/painter/databinding/DeviceSettingsBinding;->disableBackButtonToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    .line 42
    iput-object p4, p0, Lcom/brakefield/painter/databinding/DeviceSettingsBinding;->settingsHardwareCard:Landroidx/cardview/widget/CardView;

    .line 43
    iput-object p5, p0, Lcom/brakefield/painter/databinding/DeviceSettingsBinding;->volumeKeysDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/DeviceSettingsBinding;
    .locals 6

    .line 73
    move-object v2, p0

    check-cast v2, Landroid/widget/FrameLayout;

    const v0, 0x7f0a01ac

    .line 76
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    if-eqz v3, :cond_0

    const v0, 0x7f0a054d

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/cardview/widget/CardView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a06ab

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    if-eqz v5, :cond_0

    .line 93
    new-instance p0, Lcom/brakefield/painter/databinding/DeviceSettingsBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/databinding/DeviceSettingsBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroidx/cardview/widget/CardView;Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;)V

    return-object p0

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/DeviceSettingsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/DeviceSettingsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/DeviceSettingsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/DeviceSettingsBinding;
    .locals 2

    const v0, 0x7f0d0075

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/DeviceSettingsBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/DeviceSettingsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/DeviceSettingsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/brakefield/painter/databinding/DeviceSettingsBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
