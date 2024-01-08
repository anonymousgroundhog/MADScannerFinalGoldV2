.class public Lcom/brakefield/infinitestudio/ui/KeyCommandManager;
.super Ljava/lang/Object;
.source "KeyCommandManager.java"


# static fields
.field public static keyCommandGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/ui/KeyCommandManager;->keyCommandGroups:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getShortcutListView(Landroid/app/Activity;)Landroid/view/View;
    .locals 16

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/brakefield/infinitestudio/R$layout;->keycommand_list:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    sget v1, Lcom/brakefield/infinitestudio/R$id;->group_list_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 48
    sget v3, Lcom/brakefield/infinitestudio/R$id;->group_list_right:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 51
    sget-object v4, Lcom/brakefield/infinitestudio/ui/KeyCommandManager;->keyCommandGroups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;

    .line 52
    iget-object v8, v7, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->description:Ljava/lang/String;

    if-nez v8, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    iget-object v7, v7, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->keyCommandList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    .line 55
    iget-object v8, v8, Lcom/brakefield/infinitestudio/ui/KeyCommand;->description:Ljava/lang/String;

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    int-to-float v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    float-to-double v6, v4

    .line 60
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 66
    sget-object v6, Lcom/brakefield/infinitestudio/ui/KeyCommandManager;->keyCommandGroups:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v7, v1

    const/4 v8, 0x0

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;

    .line 68
    iget-object v10, v9, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->description:Ljava/lang/String;

    if-nez v10, :cond_5

    goto :goto_2

    .line 71
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    sget v11, Lcom/brakefield/infinitestudio/R$layout;->keycommand_group:I

    invoke-virtual {v10, v11, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 73
    sget v11, Lcom/brakefield/infinitestudio/R$id;->title_text:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 74
    iget-object v12, v9, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->description:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    sget v11, Lcom/brakefield/infinitestudio/R$id;->keycommand_list:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 80
    iget-object v9, v9, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->keyCommandList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v12, 0x0

    :cond_6
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    .line 82
    iget-object v14, v13, Lcom/brakefield/infinitestudio/ui/KeyCommand;->description:Ljava/lang/String;

    if-nez v14, :cond_7

    goto :goto_3

    .line 85
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v14

    sget v15, Lcom/brakefield/infinitestudio/R$layout;->keycommand_item:I

    invoke-virtual {v14, v15, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 86
    sget v15, Lcom/brakefield/infinitestudio/R$id;->description_text:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 87
    iget-object v5, v13, Lcom/brakefield/infinitestudio/ui/KeyCommand;->description:Ljava/lang/String;

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    sget v5, Lcom/brakefield/infinitestudio/R$id;->keycommand_text:I

    invoke-virtual {v14, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 89
    invoke-virtual {v13}, Lcom/brakefield/infinitestudio/ui/KeyCommand;->getKeyCommandString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v8, v8, 0x1

    if-le v8, v4, :cond_6

    if-ne v7, v1, :cond_6

    .line 107
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    sget v7, Lcom/brakefield/infinitestudio/R$layout;->keycommand_group:I

    invoke-virtual {v5, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 112
    sget v7, Lcom/brakefield/infinitestudio/R$id;->title_text:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/16 v10, 0x8

    .line 113
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    sget v7, Lcom/brakefield/infinitestudio/R$id;->keycommand_list:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object v10, v5

    move-object v11, v7

    const/4 v12, 0x0

    move-object v7, v3

    goto :goto_3

    :cond_8
    if-lez v12, :cond_4

    .line 119
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 122
    :cond_9
    new-instance v1, Lcom/brakefield/infinitestudio/ui/PanelDrawable;

    invoke-direct {v1}, Lcom/brakefield/infinitestudio/ui/PanelDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static init(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;",
            ">;)V"
        }
    .end annotation

    .line 32
    sput-object p0, Lcom/brakefield/infinitestudio/ui/KeyCommandManager;->keyCommandGroups:Ljava/util/List;

    return-void
.end method

.method public static load(Lcom/brakefield/infinitestudio/ui/UI;)V
    .locals 0

    return-void
.end method

.method public static save()V
    .locals 0

    return-void
.end method
