.class public final Lcom/brakefield/infinitestudio/databinding/UploaderBinding;
.super Ljava/lang/Object;
.source "UploaderBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/FrameLayout;

.field public final uploadImage:Landroid/widget/ImageView;

.field public final uploadRipple:Lcom/skyfishjy/library/RippleBackground;

.field public final uploadSuccess:Landroid/widget/RelativeLayout;

.field public final uploadText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/skyfishjy/library/RippleBackground;Landroid/widget/RelativeLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/brakefield/infinitestudio/databinding/UploaderBinding;->rootView:Landroid/widget/FrameLayout;

    .line 41
    iput-object p2, p0, Lcom/brakefield/infinitestudio/databinding/UploaderBinding;->uploadImage:Landroid/widget/ImageView;

    .line 42
    iput-object p3, p0, Lcom/brakefield/infinitestudio/databinding/UploaderBinding;->uploadRipple:Lcom/skyfishjy/library/RippleBackground;

    .line 43
    iput-object p4, p0, Lcom/brakefield/infinitestudio/databinding/UploaderBinding;->uploadSuccess:Landroid/widget/RelativeLayout;

    .line 44
    iput-object p5, p0, Lcom/brakefield/infinitestudio/databinding/UploaderBinding;->uploadText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/UploaderBinding;
    .locals 8

    .line 74
    sget v0, Lcom/brakefield/infinitestudio/R$id;->upload_image:I

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 80
    sget v0, Lcom/brakefield/infinitestudio/R$id;->upload_ripple:I

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/skyfishjy/library/RippleBackground;

    if-eqz v5, :cond_0

    .line 86
    sget v0, Lcom/brakefield/infinitestudio/R$id;->upload_success:I

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_0

    .line 92
    sget v0, Lcom/brakefield/infinitestudio/R$id;->upload_text:I

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v7, :cond_0

    .line 98
    new-instance v0, Lcom/brakefield/infinitestudio/databinding/UploaderBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/brakefield/infinitestudio/databinding/UploaderBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/skyfishjy/library/RippleBackground;Landroid/widget/RelativeLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V

    return-object v0

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x0

    sget-object v1, Landroidx/navigation/ui/zZ/NxTXUJn;->ksClckOQGsWceho:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/infinitestudio/databinding/UploaderBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-static {p0, v0, v1}, Lcom/brakefield/infinitestudio/databinding/UploaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/UploaderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/UploaderBinding;
    .locals 2

    .line 61
    sget v0, Lcom/brakefield/infinitestudio/R$layout;->uploader:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    :cond_0
    invoke-static {p0}, Lcom/brakefield/infinitestudio/databinding/UploaderBinding;->bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/UploaderBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/databinding/UploaderBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/brakefield/infinitestudio/databinding/UploaderBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
