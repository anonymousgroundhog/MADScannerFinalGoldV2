.class Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentsViewController$ColorAdjustmentViewHolder;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;
.source "LayerAdjustmentsViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentsViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ColorAdjustmentViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field binding:Lcom/brakefield/painter/databinding/AdjustmentCardBinding;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 120
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentsViewController$ColorAdjustmentViewHolder;->setItemClickListener()V

    .line 121
    invoke-static {p1}, Lcom/brakefield/painter/databinding/AdjustmentCardBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/AdjustmentCardBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentsViewController$ColorAdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/AdjustmentCardBinding;

    return-void
.end method


# virtual methods
.method public update(Ljava/lang/Integer;)V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentsViewController$ColorAdjustmentViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 132
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const-string v0, "curves"

    const-string v1, "curve"

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x50

    if-ne v0, v1, :cond_1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->getFilterName(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "gradient_map"

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->getFilterPreviewName(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->getFilterName(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, ".png"

    const-string v3, ""

    .line 142
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentsViewController$ColorAdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/AdjustmentCardBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/AdjustmentCardBinding;->preview:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentsViewController$ColorAdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/AdjustmentCardBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/AdjustmentCardBinding;->preview:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 147
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentsViewController$ColorAdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/AdjustmentCardBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/AdjustmentCardBinding;->name:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentsViewController$ColorAdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/AdjustmentCardBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/AdjustmentCardBinding;->dragHandle:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 150
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentsViewController$ColorAdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/AdjustmentCardBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/AdjustmentCardBinding;->dragHandle:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 152
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentsViewController$ColorAdjustmentViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->getFilterUIBindingKey(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f0a0663

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 114
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentsViewController$ColorAdjustmentViewHolder;->update(Ljava/lang/Integer;)V

    return-void
.end method
