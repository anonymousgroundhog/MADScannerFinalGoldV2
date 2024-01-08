.class public final Lcom/brakefield/infinitestudio/databinding/SectionBinding;
.super Ljava/lang/Object;
.source "SectionBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final sectionText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;


# direct methods
.method private constructor <init>(Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/brakefield/infinitestudio/databinding/SectionBinding;->rootView:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 25
    iput-object p2, p0, Lcom/brakefield/infinitestudio/databinding/SectionBinding;->sectionText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/SectionBinding;
    .locals 1

    if-eqz p0, :cond_0

    .line 55
    check-cast p0, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 57
    new-instance v0, Lcom/brakefield/infinitestudio/databinding/SectionBinding;

    invoke-direct {v0, p0, p0}, Lcom/brakefield/infinitestudio/databinding/SectionBinding;-><init>(Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V

    return-object v0

    .line 52
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "rootView"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/infinitestudio/databinding/SectionBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-static {p0, v0, v1}, Lcom/brakefield/infinitestudio/databinding/SectionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/SectionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/SectionBinding;
    .locals 2

    .line 42
    sget v0, Lcom/brakefield/infinitestudio/R$layout;->section:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    :cond_0
    invoke-static {p0}, Lcom/brakefield/infinitestudio/databinding/SectionBinding;->bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/SectionBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/databinding/SectionBinding;->getRoot()Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/brakefield/infinitestudio/ui/AutosizeTextView;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/brakefield/infinitestudio/databinding/SectionBinding;->rootView:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    return-object v0
.end method
