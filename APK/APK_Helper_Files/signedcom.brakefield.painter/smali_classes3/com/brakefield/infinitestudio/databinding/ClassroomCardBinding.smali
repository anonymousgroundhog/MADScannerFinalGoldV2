.class public final Lcom/brakefield/infinitestudio/databinding/ClassroomCardBinding;
.super Ljava/lang/Object;
.source "ClassroomCardBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final card:Landroidx/cardview/widget/CardView;

.field public final preview:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final title:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/brakefield/infinitestudio/databinding/ClassroomCardBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 36
    iput-object p2, p0, Lcom/brakefield/infinitestudio/databinding/ClassroomCardBinding;->card:Landroidx/cardview/widget/CardView;

    .line 37
    iput-object p3, p0, Lcom/brakefield/infinitestudio/databinding/ClassroomCardBinding;->preview:Landroid/widget/ImageView;

    .line 38
    iput-object p4, p0, Lcom/brakefield/infinitestudio/databinding/ClassroomCardBinding;->title:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/ClassroomCardBinding;
    .locals 4

    .line 68
    sget v0, Lcom/brakefield/infinitestudio/R$id;->card:I

    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/cardview/widget/CardView;

    if-eqz v1, :cond_0

    .line 74
    sget v0, Lcom/brakefield/infinitestudio/R$id;->preview:I

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 80
    sget v0, Lcom/brakefield/infinitestudio/R$id;->title:I

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v3, :cond_0

    .line 86
    new-instance v0, Lcom/brakefield/infinitestudio/databinding/ClassroomCardBinding;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/brakefield/infinitestudio/databinding/ClassroomCardBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V

    return-object v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/infinitestudio/databinding/ClassroomCardBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-static {p0, v0, v1}, Lcom/brakefield/infinitestudio/databinding/ClassroomCardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/ClassroomCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/ClassroomCardBinding;
    .locals 2

    .line 55
    sget v0, Lcom/brakefield/infinitestudio/R$layout;->classroom_card:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-static {p0}, Lcom/brakefield/infinitestudio/databinding/ClassroomCardBinding;->bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/ClassroomCardBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/databinding/ClassroomCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/brakefield/infinitestudio/databinding/ClassroomCardBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
