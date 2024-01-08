.class public final Lcom/brakefield/infinitestudio/databinding/PatternCardBinding;
.super Ljava/lang/Object;
.source "PatternCardBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final name:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final options:Landroid/widget/ImageView;

.field public final patternCard:Landroidx/cardview/widget/CardView;

.field public final preview:Landroid/widget/ImageView;

.field private final rootView:Landroidx/cardview/widget/CardView;


# direct methods
.method private constructor <init>(Landroidx/cardview/widget/CardView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/ImageView;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/brakefield/infinitestudio/databinding/PatternCardBinding;->rootView:Landroidx/cardview/widget/CardView;

    .line 38
    iput-object p2, p0, Lcom/brakefield/infinitestudio/databinding/PatternCardBinding;->name:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 39
    iput-object p3, p0, Lcom/brakefield/infinitestudio/databinding/PatternCardBinding;->options:Landroid/widget/ImageView;

    .line 40
    iput-object p4, p0, Lcom/brakefield/infinitestudio/databinding/PatternCardBinding;->patternCard:Landroidx/cardview/widget/CardView;

    .line 41
    iput-object p5, p0, Lcom/brakefield/infinitestudio/databinding/PatternCardBinding;->preview:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/PatternCardBinding;
    .locals 8

    .line 71
    sget v0, Lcom/brakefield/infinitestudio/R$id;->name:I

    .line 72
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v4, :cond_0

    .line 77
    sget v0, Lcom/brakefield/infinitestudio/R$id;->options:I

    .line 78
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 83
    move-object v6, p0

    check-cast v6, Landroidx/cardview/widget/CardView;

    .line 85
    sget v0, Lcom/brakefield/infinitestudio/R$id;->preview:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 91
    new-instance p0, Lcom/brakefield/infinitestudio/databinding/PatternCardBinding;

    move-object v2, p0

    move-object v3, v6

    invoke-direct/range {v2 .. v7}, Lcom/brakefield/infinitestudio/databinding/PatternCardBinding;-><init>(Landroidx/cardview/widget/CardView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/ImageView;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;)V

    return-object p0

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 94
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/infinitestudio/databinding/PatternCardBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-static {p0, v0, v1}, Lcom/brakefield/infinitestudio/databinding/PatternCardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/PatternCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/PatternCardBinding;
    .locals 2

    .line 58
    sget v0, Lcom/brakefield/infinitestudio/R$layout;->pattern_card:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    :cond_0
    invoke-static {p0}, Lcom/brakefield/infinitestudio/databinding/PatternCardBinding;->bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/PatternCardBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/databinding/PatternCardBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/cardview/widget/CardView;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/brakefield/infinitestudio/databinding/PatternCardBinding;->rootView:Landroidx/cardview/widget/CardView;

    return-object v0
.end method
