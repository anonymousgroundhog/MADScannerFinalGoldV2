.class Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;
.source "BrushesViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BrushFolderViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder<",
        "Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;",
        ">;"
    }
.end annotation


# instance fields
.field binding:Lcom/brakefield/painter/databinding/BrushFolderItemBinding;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;",
            ">;)V"
        }
    .end annotation

    .line 478
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 479
    invoke-static {p1}, Lcom/brakefield/painter/databinding/BrushFolderItemBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/BrushFolderItemBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;->binding:Lcom/brakefield/painter/databinding/BrushFolderItemBinding;

    .line 480
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;->setItemClickListener()V

    .line 481
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;->setItemLongClickListener()V

    .line 482
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;->setItemContextClickListener()V

    .line 483
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public update(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V
    .locals 6

    .line 489
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;->delegate:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;

    check-cast v0, Lcom/brakefield/painter/brushes/BrushPackManager$BrushPackCollectionViewDelegate;

    invoke-virtual {v0}, Lcom/brakefield/painter/brushes/BrushPackManager$BrushPackCollectionViewDelegate;->getCurrentBrushFolder()Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 492
    :goto_0
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v2

    .line 493
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v3

    .line 494
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v4

    .line 496
    iget-object v5, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 497
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;->binding:Lcom/brakefield/painter/databinding/BrushFolderItemBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushFolderItemBinding;->brushFolderText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setTextColor(I)V

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;->binding:Lcom/brakefield/painter/databinding/BrushFolderItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushFolderItemBinding;->brushFolderIcon:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/infinitestudio/ui/CircleDrawable;

    invoke-direct {v2, v3}, Lcom/brakefield/infinitestudio/ui/CircleDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 501
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;->binding:Lcom/brakefield/painter/databinding/BrushFolderItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushFolderItemBinding;->brushFolderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 502
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;->binding:Lcom/brakefield/painter/databinding/BrushFolderItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushFolderItemBinding;->brushFolderCustomIcon:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v2, Lcom/brakefield/infinitestudio/ui/CircleDrawable;

    invoke-direct {v2, v3}, Lcom/brakefield/infinitestudio/ui/CircleDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 503
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;->binding:Lcom/brakefield/painter/databinding/BrushFolderItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushFolderItemBinding;->brushFolderCustomIcon:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, v4}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setTextColor(I)V

    goto :goto_1

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;->binding:Lcom/brakefield/painter/databinding/BrushFolderItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushFolderItemBinding;->brushFolderIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 506
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;->binding:Lcom/brakefield/painter/databinding/BrushFolderItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushFolderItemBinding;->brushFolderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 507
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;->binding:Lcom/brakefield/painter/databinding/BrushFolderItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushFolderItemBinding;->brushFolderCustomIcon:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 508
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;->binding:Lcom/brakefield/painter/databinding/BrushFolderItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushFolderItemBinding;->brushFolderCustomIcon:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setTextColor(I)V

    .line 511
    :goto_1
    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->isCustom()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 512
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;->binding:Lcom/brakefield/painter/databinding/BrushFolderItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushFolderItemBinding;->brushFolderCustomIcon:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    iget-object v3, p1, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->displayName:Ljava/lang/String;

    iget-object v4, p1, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->displayName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;->binding:Lcom/brakefield/painter/databinding/BrushFolderItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushFolderItemBinding;->brushFolderCustomIcon:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;->binding:Lcom/brakefield/painter/databinding/BrushFolderItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushFolderItemBinding;->brushFolderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 516
    :cond_2
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget v3, p1, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->iconId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;->binding:Lcom/brakefield/painter/databinding/BrushFolderItemBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/BrushFolderItemBinding;->brushFolderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 517
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;->binding:Lcom/brakefield/painter/databinding/BrushFolderItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushFolderItemBinding;->brushFolderCustomIcon:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;->binding:Lcom/brakefield/painter/databinding/BrushFolderItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushFolderItemBinding;->brushFolderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 520
    :goto_2
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;->binding:Lcom/brakefield/painter/databinding/BrushFolderItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushFolderItemBinding;->brushFolderText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->displayName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 473
    check-cast p1, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;->update(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V

    return-void
.end method
