.class public final Lcom/brakefield/infinitestudio/databinding/ActivityWebViewBinding;
.super Ljava/lang/Object;
.source "ActivityWebViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final back:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

.field public final background:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final titleCover:Landroid/widget/FrameLayout;

.field public final webView:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/brakefield/infinitestudio/ui/ShadowImageView;Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Landroid/webkit/WebView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/brakefield/infinitestudio/databinding/ActivityWebViewBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 40
    iput-object p2, p0, Lcom/brakefield/infinitestudio/databinding/ActivityWebViewBinding;->back:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    .line 41
    iput-object p3, p0, Lcom/brakefield/infinitestudio/databinding/ActivityWebViewBinding;->background:Landroid/widget/RelativeLayout;

    .line 42
    iput-object p4, p0, Lcom/brakefield/infinitestudio/databinding/ActivityWebViewBinding;->titleCover:Landroid/widget/FrameLayout;

    .line 43
    iput-object p5, p0, Lcom/brakefield/infinitestudio/databinding/ActivityWebViewBinding;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/ActivityWebViewBinding;
    .locals 8

    .line 73
    sget v0, Lcom/brakefield/infinitestudio/R$id;->back:I

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    if-eqz v4, :cond_0

    .line 79
    move-object v5, p0

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 81
    sget v0, Lcom/brakefield/infinitestudio/R$id;->title_cover:I

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    .line 87
    sget v0, Lcom/brakefield/infinitestudio/R$id;->web_view:I

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/webkit/WebView;

    if-eqz v7, :cond_0

    .line 93
    new-instance p0, Lcom/brakefield/infinitestudio/databinding/ActivityWebViewBinding;

    move-object v2, p0

    move-object v3, v5

    invoke-direct/range {v2 .. v7}, Lcom/brakefield/infinitestudio/databinding/ActivityWebViewBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/brakefield/infinitestudio/ui/ShadowImageView;Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Landroid/webkit/WebView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/infinitestudio/databinding/ActivityWebViewBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-static {p0, v0, v1}, Lcom/brakefield/infinitestudio/databinding/ActivityWebViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/ActivityWebViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/ActivityWebViewBinding;
    .locals 2

    .line 60
    sget v0, Lcom/brakefield/infinitestudio/R$layout;->activity_web_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/brakefield/infinitestudio/databinding/ActivityWebViewBinding;->bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/ActivityWebViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/databinding/ActivityWebViewBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/brakefield/infinitestudio/databinding/ActivityWebViewBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
