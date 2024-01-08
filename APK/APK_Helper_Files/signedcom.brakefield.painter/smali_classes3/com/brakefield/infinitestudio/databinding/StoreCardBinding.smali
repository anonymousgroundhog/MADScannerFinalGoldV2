.class public final Lcom/brakefield/infinitestudio/databinding/StoreCardBinding;
.super Ljava/lang/Object;
.source "StoreCardBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final card:Landroidx/cardview/widget/CardView;

.field public final content:Landroid/widget/LinearLayout;

.field public final description:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final imageThumb:Landroid/widget/ImageView;

.field public final price:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final priceAdjusted:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final requiresEssentialsText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final title:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/cardview/widget/CardView;Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/brakefield/infinitestudio/databinding/StoreCardBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 55
    iput-object p2, p0, Lcom/brakefield/infinitestudio/databinding/StoreCardBinding;->card:Landroidx/cardview/widget/CardView;

    .line 56
    iput-object p3, p0, Lcom/brakefield/infinitestudio/databinding/StoreCardBinding;->content:Landroid/widget/LinearLayout;

    .line 57
    iput-object p4, p0, Lcom/brakefield/infinitestudio/databinding/StoreCardBinding;->description:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 58
    iput-object p5, p0, Lcom/brakefield/infinitestudio/databinding/StoreCardBinding;->imageThumb:Landroid/widget/ImageView;

    .line 59
    iput-object p6, p0, Lcom/brakefield/infinitestudio/databinding/StoreCardBinding;->price:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 60
    iput-object p7, p0, Lcom/brakefield/infinitestudio/databinding/StoreCardBinding;->priceAdjusted:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 61
    iput-object p8, p0, Lcom/brakefield/infinitestudio/databinding/StoreCardBinding;->requiresEssentialsText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 62
    iput-object p9, p0, Lcom/brakefield/infinitestudio/databinding/StoreCardBinding;->title:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/StoreCardBinding;
    .locals 12

    .line 92
    sget v0, Lcom/brakefield/infinitestudio/R$id;->card:I

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/cardview/widget/CardView;

    if-eqz v4, :cond_0

    .line 98
    sget v0, Lcom/brakefield/infinitestudio/R$id;->content:I

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 104
    sget v0, Lcom/brakefield/infinitestudio/R$id;->description:I

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v6, :cond_0

    .line 110
    sget v0, Lcom/brakefield/infinitestudio/R$id;->image_thumb:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 116
    sget v0, Lcom/brakefield/infinitestudio/R$id;->price:I

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v8, :cond_0

    .line 122
    sget v0, Lcom/brakefield/infinitestudio/R$id;->price_adjusted:I

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v9, :cond_0

    .line 128
    sget v0, Lcom/brakefield/infinitestudio/R$id;->requires_essentials_text:I

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v10, :cond_0

    .line 134
    sget v0, Lcom/brakefield/infinitestudio/R$id;->title:I

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v11, :cond_0

    .line 140
    new-instance v0, Lcom/brakefield/infinitestudio/databinding/StoreCardBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/brakefield/infinitestudio/databinding/StoreCardBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/cardview/widget/CardView;Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V

    return-object v0

    .line 143
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 144
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/infinitestudio/databinding/StoreCardBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-static {p0, v0, v1}, Lcom/brakefield/infinitestudio/databinding/StoreCardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/StoreCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/StoreCardBinding;
    .locals 2

    .line 79
    sget v0, Lcom/brakefield/infinitestudio/R$layout;->store_card:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    :cond_0
    invoke-static {p0}, Lcom/brakefield/infinitestudio/databinding/StoreCardBinding;->bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/StoreCardBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/databinding/StoreCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/brakefield/infinitestudio/databinding/StoreCardBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
