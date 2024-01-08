.class public Lcom/infinite/app/ui/Dropdown$ItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "Dropdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infinite/app/ui/Dropdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemAdapter"
.end annotation


# instance fields
.field final inflater:Landroid/view/LayoutInflater;

.field final items:[Lcom/infinite/app/ui/Dropdown$DropdownItem;

.field final synthetic this$0:Lcom/infinite/app/ui/Dropdown;


# direct methods
.method public constructor <init>(Lcom/infinite/app/ui/Dropdown;Landroid/content/Context;I)V
    .locals 3

    .line 130
    iput-object p1, p0, Lcom/infinite/app/ui/Dropdown$ItemAdapter;->this$0:Lcom/infinite/app/ui/Dropdown;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 131
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/infinite/app/ui/Dropdown$ItemAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 132
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 133
    array-length p3, p2

    new-array p3, p3, [Lcom/infinite/app/ui/Dropdown$DropdownItem;

    iput-object p3, p0, Lcom/infinite/app/ui/Dropdown$ItemAdapter;->items:[Lcom/infinite/app/ui/Dropdown$DropdownItem;

    const/4 p3, 0x0

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/infinite/app/ui/Dropdown$ItemAdapter;->items:[Lcom/infinite/app/ui/Dropdown$DropdownItem;

    array-length v1, v0

    if-ge p3, v1, :cond_0

    .line 135
    new-instance v1, Lcom/infinite/app/ui/Dropdown$DropdownLabelItem;

    aget-object v2, p2, p3

    invoke-direct {v1, p1, v2}, Lcom/infinite/app/ui/Dropdown$DropdownLabelItem;-><init>(Lcom/infinite/app/ui/Dropdown;Ljava/lang/String;)V

    aput-object v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/infinite/app/ui/Dropdown;Landroid/content/Context;[Lcom/infinite/app/ui/Dropdown$DropdownItem;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/infinite/app/ui/Dropdown$ItemAdapter;->this$0:Lcom/infinite/app/ui/Dropdown;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 140
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/infinite/app/ui/Dropdown$ItemAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 141
    iput-object p3, p0, Lcom/infinite/app/ui/Dropdown$ItemAdapter;->items:[Lcom/infinite/app/ui/Dropdown$DropdownItem;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/infinite/app/ui/Dropdown$ItemAdapter;->items:[Lcom/infinite/app/ui/Dropdown$DropdownItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/infinite/app/ui/Dropdown$ItemAdapter;->items:[Lcom/infinite/app/ui/Dropdown$DropdownItem;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/infinite/app/ui/Dropdown$DropdownItem;->returnObject:Ljava/lang/Object;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/infinite/app/ui/Dropdown$ItemAdapter;->items:[Lcom/infinite/app/ui/Dropdown$DropdownItem;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/infinite/app/ui/Dropdown$DropdownItem;->getLayoutId()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemPositionFromReturnObject(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, 0x0

    .line 177
    :goto_0
    iget-object v1, p0, Lcom/infinite/app/ui/Dropdown$ItemAdapter;->items:[Lcom/infinite/app/ui/Dropdown$DropdownItem;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 178
    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/infinite/app/ui/Dropdown$DropdownItem;->returnObject:Ljava/lang/Object;

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

    .line 173
    iget-object v0, p0, Lcom/infinite/app/ui/Dropdown$ItemAdapter;->items:[Lcom/infinite/app/ui/Dropdown$DropdownItem;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/infinite/app/ui/Dropdown$DropdownItem;->getLayoutId()I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 161
    iget-object p3, p0, Lcom/infinite/app/ui/Dropdown$ItemAdapter;->items:[Lcom/infinite/app/ui/Dropdown$DropdownItem;

    aget-object p1, p3, p1

    .line 162
    invoke-virtual {p1}, Lcom/infinite/app/ui/Dropdown$DropdownItem;->getLayoutId()I

    move-result p3

    if-eqz p2, :cond_0

    .line 163
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p3, :cond_1

    .line 164
    :cond_0
    iget-object p2, p0, Lcom/infinite/app/ui/Dropdown$ItemAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Lcom/infinite/app/ui/Dropdown$DropdownItem;->getLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 165
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 167
    :cond_1
    invoke-virtual {p1, p2}, Lcom/infinite/app/ui/Dropdown$DropdownItem;->updateView(Landroid/view/View;)V

    return-object p2
.end method
