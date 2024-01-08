.class public final Lcom/brakefield/infinitestudio/databinding/CreateProjectOptionsBinding;
.super Ljava/lang/Object;
.source "CreateProjectOptionsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/brakefield/infinitestudio/databinding/CreateProjectOptionsBinding;->rootView:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/CreateProjectOptionsBinding;
    .locals 1

    if-eqz p0, :cond_0

    .line 43
    new-instance v0, Lcom/brakefield/infinitestudio/databinding/CreateProjectOptionsBinding;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/databinding/CreateProjectOptionsBinding;-><init>(Landroid/view/View;)V

    return-object v0

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "rootView"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/brakefield/infinitestudio/databinding/CreateProjectOptionsBinding;
    .locals 1

    if-eqz p1, :cond_0

    .line 33
    sget v0, Lcom/brakefield/infinitestudio/R$layout;->create_project_options:I

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    invoke-static {p1}, Lcom/brakefield/infinitestudio/databinding/CreateProjectOptionsBinding;->bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/CreateProjectOptionsBinding;

    move-result-object p0

    return-object p0

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "parent"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/brakefield/infinitestudio/databinding/CreateProjectOptionsBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
