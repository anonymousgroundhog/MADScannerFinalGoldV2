.class public Lcom/infinite/app/ui/Dropdown;
.super Lcom/infinite/app/ui/UIComponent;
.source "Dropdown.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infinite/app/ui/Dropdown$ItemAdapter;,
        Lcom/infinite/app/ui/Dropdown$Delegate;,
        Lcom/infinite/app/ui/Dropdown$DropdownItem;,
        Lcom/infinite/app/ui/Dropdown$DropdownIconLabelLockedItem;,
        Lcom/infinite/app/ui/Dropdown$DropdownIconLabelItem;,
        Lcom/infinite/app/ui/Dropdown$DropdownLabelItem;
    }
.end annotation


# instance fields
.field dropdown:Lcom/infinite/app/ui/views/BaseDropdown;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/infinite/app/ui/UIComponent;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/infinite/app/ui/UIComponent;-><init>(Lcom/infinite/app/ui/UIComponent;)V

    return-void
.end method

.method private bindValueChangeListener(Landroid/view/View;)V
    .locals 4

    .line 48
    iget-wide v0, p0, Lcom/infinite/app/ui/Dropdown;->nativePointer:J

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/infinite/app/ui/Dropdown;->getInteraction(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 50
    new-instance v2, Lcom/infinite/app/ui/interactions/SelectItemInteraction;

    invoke-direct {v2, v0, v1}, Lcom/infinite/app/ui/interactions/SelectItemInteraction;-><init>(J)V

    .line 51
    check-cast p1, Lcom/infinite/app/ui/views/BaseDropdown;

    .line 52
    new-instance v0, Lcom/infinite/app/ui/Dropdown$1;

    invoke-direct {v0, p0, v2}, Lcom/infinite/app/ui/Dropdown$1;-><init>(Lcom/infinite/app/ui/Dropdown;Lcom/infinite/app/ui/interactions/SelectItemInteraction;)V

    invoke-virtual {p1, v0}, Lcom/infinite/app/ui/views/BaseDropdown;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_0
    return-void
.end method

.method private getDropdownItems(Landroid/content/Context;JJLcom/infinite/app/ui/Dropdown$Delegate;)[Lcom/infinite/app/ui/Dropdown$DropdownItem;
    .locals 13

    move-object v6, p0

    .line 90
    iget-wide v0, v6, Lcom/infinite/app/ui/Dropdown;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/infinite/app/ui/Dropdown;->getItemCount(J)I

    move-result v7

    .line 91
    new-array v8, v7, [Lcom/infinite/app/ui/Dropdown$DropdownItem;

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v7, :cond_2

    .line 94
    iget-wide v1, v6, Lcom/infinite/app/ui/Dropdown;->nativePointer:J

    move-object v0, p0

    move v3, v10

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/infinite/app/ui/Dropdown;->getItemName(JIJ)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    move-object v2, p1

    .line 95
    invoke-static {p1, v0, v1}, Lcom/infinite/app/CoreAppStrings;->processString(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-wide v3, v6, Lcom/infinite/app/ui/Dropdown;->nativePointer:J

    invoke-direct {p0, v3, v4, v10}, Lcom/infinite/app/ui/Dropdown;->getItemIcon(JI)I

    move-result v1

    move-wide/from16 v3, p4

    .line 98
    invoke-direct {p0, v3, v4, v1}, Lcom/infinite/app/ui/Dropdown;->getIconName(JI)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v11, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v1, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 100
    iget-wide v11, v6, Lcom/infinite/app/ui/Dropdown;->nativePointer:J

    invoke-direct {p0, v11, v12, v10}, Lcom/infinite/app/ui/Dropdown;->getItemRequiresFullVersion(JI)Z

    move-result v5

    if-eqz v1, :cond_1

    .line 103
    invoke-interface/range {p6 .. p6}, Lcom/infinite/app/ui/Dropdown$Delegate;->isFullVersion()Z

    move-result v11

    if-nez v11, :cond_0

    if-eqz v5, :cond_0

    .line 104
    new-instance v5, Lcom/infinite/app/ui/Dropdown$DropdownIconLabelLockedItem;

    iget-wide v11, v6, Lcom/infinite/app/ui/Dropdown;->nativePointer:J

    invoke-direct {p0, v11, v12, v10}, Lcom/infinite/app/ui/Dropdown;->getItem(JI)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {v5, p0, v0, v1, v11}, Lcom/infinite/app/ui/Dropdown$DropdownIconLabelLockedItem;-><init>(Lcom/infinite/app/ui/Dropdown;Ljava/lang/String;ILjava/lang/Object;)V

    aput-object v5, v8, v10

    goto :goto_1

    .line 106
    :cond_0
    new-instance v5, Lcom/infinite/app/ui/Dropdown$DropdownIconLabelItem;

    iget-wide v11, v6, Lcom/infinite/app/ui/Dropdown;->nativePointer:J

    invoke-direct {p0, v11, v12, v10}, Lcom/infinite/app/ui/Dropdown;->getItem(JI)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {v5, p0, v0, v1, v11}, Lcom/infinite/app/ui/Dropdown$DropdownIconLabelItem;-><init>(Lcom/infinite/app/ui/Dropdown;Ljava/lang/String;ILjava/lang/Object;)V

    aput-object v5, v8, v10

    goto :goto_1

    .line 109
    :cond_1
    new-instance v1, Lcom/infinite/app/ui/Dropdown$DropdownLabelItem;

    iget-wide v11, v6, Lcom/infinite/app/ui/Dropdown;->nativePointer:J

    invoke-direct {p0, v11, v12, v10}, Lcom/infinite/app/ui/Dropdown;->getItem(JI)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v1, p0, v0, v5}, Lcom/infinite/app/ui/Dropdown$DropdownLabelItem;-><init>(Lcom/infinite/app/ui/Dropdown;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v8, v10

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    return-object v8
.end method

.method private native getIconName(JI)Ljava/lang/String;
.end method

.method private native getItem(JI)J
.end method

.method private native getItemCount(J)I
.end method

.method private native getItemIcon(JI)I
.end method

.method private native getItemName(JIJ)Ljava/lang/String;
.end method

.method private native getItemRequiresFullVersion(JI)Z
.end method

.method private native getSelectedItem(JJ)J
.end method


# virtual methods
.method public bind(Landroid/view/View;JJJLcom/infinite/app/ui/Dropdown$Delegate;)V
    .locals 11

    move-object v7, p0

    .line 41
    invoke-super {p0, p1, p2, p3}, Lcom/infinite/app/ui/UIComponent;->bind(Landroid/view/View;J)V

    .line 42
    invoke-direct {p0, p1}, Lcom/infinite/app/ui/Dropdown;->bindValueChangeListener(Landroid/view/View;)V

    .line 43
    move-object v8, p1

    check-cast v8, Lcom/infinite/app/ui/views/BaseDropdown;

    iput-object v8, v7, Lcom/infinite/app/ui/Dropdown;->dropdown:Lcom/infinite/app/ui/views/BaseDropdown;

    .line 44
    new-instance v9, Lcom/infinite/app/ui/Dropdown$ItemAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p4

    move-wide/from16 v4, p6

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/infinite/app/ui/Dropdown;->getDropdownItems(Landroid/content/Context;JJLcom/infinite/app/ui/Dropdown$Delegate;)[Lcom/infinite/app/ui/Dropdown$DropdownItem;

    move-result-object v0

    invoke-direct {v9, p0, v10, v0}, Lcom/infinite/app/ui/Dropdown$ItemAdapter;-><init>(Lcom/infinite/app/ui/Dropdown;Landroid/content/Context;[Lcom/infinite/app/ui/Dropdown$DropdownItem;)V

    invoke-virtual {v8, v9}, Lcom/infinite/app/ui/views/BaseDropdown;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public update()V
    .locals 8

    .line 70
    iget-object v0, p0, Lcom/infinite/app/ui/Dropdown;->dropdown:Lcom/infinite/app/ui/views/BaseDropdown;

    if-eqz v0, :cond_3

    .line 71
    iget-wide v0, p0, Lcom/infinite/app/ui/Dropdown;->nativePointer:J

    iget-wide v2, p0, Lcom/infinite/app/ui/Dropdown;->target:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/infinite/app/ui/Dropdown;->getSelectedItem(JJ)J

    move-result-wide v0

    .line 72
    iget-object v2, p0, Lcom/infinite/app/ui/Dropdown;->dropdown:Lcom/infinite/app/ui/views/BaseDropdown;

    invoke-virtual {v2}, Lcom/infinite/app/ui/views/BaseDropdown;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 73
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/infinite/app/ui/Dropdown;->dropdown:Lcom/infinite/app/ui/views/BaseDropdown;

    invoke-virtual {v2}, Lcom/infinite/app/ui/views/BaseDropdown;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    const/4 v3, 0x0

    .line 76
    :goto_0
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    const/4 v5, -0x1

    if-ge v3, v4, :cond_2

    .line 77
    invoke-interface {v2, v3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v6, v0

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v5

    :goto_1
    if-eq v3, v5, :cond_3

    .line 83
    iget-object v0, p0, Lcom/infinite/app/ui/Dropdown;->dropdown:Lcom/infinite/app/ui/views/BaseDropdown;

    invoke-virtual {v0, v3}, Lcom/infinite/app/ui/views/BaseDropdown;->setSelection(I)V

    :cond_3
    return-void
.end method
