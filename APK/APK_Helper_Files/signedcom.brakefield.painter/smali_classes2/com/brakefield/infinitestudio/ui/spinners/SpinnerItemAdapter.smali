.class public Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "SpinnerItemAdapter.java"


# instance fields
.field final inflater:Landroid/view/LayoutInflater;

.field final items:[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 24
    array-length p2, p1

    new-array p2, p2, [Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;->items:[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    const/4 p2, 0x0

    .line 25
    :goto_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;->items:[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    array-length v1, v0

    if-ge p2, v1, :cond_0

    .line 26
    new-instance v1, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    aget-object v2, p1, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 32
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;->items:[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;->items:[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;->items:[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;->returnObject:Ljava/lang/Object;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;->items:[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;->getLayoutId()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemPositionFromReturnObject(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    .line 68
    :goto_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 69
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;->items:[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;->getLayoutId()I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 52
    iget-object p3, p0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;->items:[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    aget-object p1, p3, p1

    .line 53
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;->getLayoutId()I

    move-result p3

    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p3, :cond_1

    .line 55
    :cond_0
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;->getLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 56
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    :cond_1
    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;->updateView(Landroid/view/View;)V

    return-object p2
.end method
