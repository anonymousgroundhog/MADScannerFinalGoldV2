.class public final Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;
.super Ljava/lang/Object;
.source "BrushSettingsDynamicsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final pressureCurve:Lcom/brakefield/painter/databinding/ProfileCurveBinding;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final strokeDynamicsSection:Landroid/widget/LinearLayout;

.field public final tiltCurve:Lcom/brakefield/painter/databinding/ProfileCurveBinding;

.field public final titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final velocityCurve:Lcom/brakefield/painter/databinding/ProfileCurveBinding;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/brakefield/painter/databinding/ProfileCurveBinding;Landroid/widget/LinearLayout;Lcom/brakefield/painter/databinding/ProfileCurveBinding;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/painter/databinding/ProfileCurveBinding;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;->rootView:Landroid/widget/LinearLayout;

    .line 42
    iput-object p2, p0, Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;->pressureCurve:Lcom/brakefield/painter/databinding/ProfileCurveBinding;

    .line 43
    iput-object p3, p0, Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;->strokeDynamicsSection:Landroid/widget/LinearLayout;

    .line 44
    iput-object p4, p0, Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;->tiltCurve:Lcom/brakefield/painter/databinding/ProfileCurveBinding;

    .line 45
    iput-object p5, p0, Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 46
    iput-object p6, p0, Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;->velocityCurve:Lcom/brakefield/painter/databinding/ProfileCurveBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;
    .locals 9

    const v0, 0x7f0a0458

    .line 77
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    invoke-static {v1}, Lcom/brakefield/painter/databinding/ProfileCurveBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ProfileCurveBinding;

    move-result-object v4

    .line 83
    move-object v5, p0

    check-cast v5, Landroid/widget/LinearLayout;

    const v0, 0x7f0a0624

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    invoke-static {v1}, Lcom/brakefield/painter/databinding/ProfileCurveBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ProfileCurveBinding;

    move-result-object v6

    const v0, 0x7f0a0635

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0688

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    invoke-static {v1}, Lcom/brakefield/painter/databinding/ProfileCurveBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ProfileCurveBinding;

    move-result-object v8

    .line 105
    new-instance p0, Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;

    move-object v2, p0

    move-object v3, v5

    invoke-direct/range {v2 .. v8}, Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;-><init>(Landroid/widget/LinearLayout;Lcom/brakefield/painter/databinding/ProfileCurveBinding;Landroid/widget/LinearLayout;Lcom/brakefield/painter/databinding/ProfileCurveBinding;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/painter/databinding/ProfileCurveBinding;)V

    return-object p0

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;
    .locals 2

    const v0, 0x7f0d0039

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
