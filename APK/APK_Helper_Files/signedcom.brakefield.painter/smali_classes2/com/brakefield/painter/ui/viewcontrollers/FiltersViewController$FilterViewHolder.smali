.class Lcom/brakefield/painter/ui/viewcontrollers/FiltersViewController$FilterViewHolder;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;
.source "FiltersViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/FiltersViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilterViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field binding:Lcom/brakefield/painter/databinding/FilterCardBinding;


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

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 126
    invoke-static {p1}, Lcom/brakefield/painter/databinding/FilterCardBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/FilterCardBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/FiltersViewController$FilterViewHolder;->binding:Lcom/brakefield/painter/databinding/FilterCardBinding;

    .line 127
    iget-object p1, p1, Lcom/brakefield/painter/databinding/FilterCardBinding;->preview:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/FiltersViewController$FilterViewHolder;->setItemClickListener(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/lang/Integer;)V
    .locals 3

    .line 132
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->getFilterPreviewName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpg"

    const-string v2, ""

    .line 133
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/FiltersViewController$FilterViewHolder;->binding:Lcom/brakefield/painter/databinding/FilterCardBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/FilterCardBinding;->preview:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/FiltersViewController$FilterViewHolder;->binding:Lcom/brakefield/painter/databinding/FilterCardBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/FilterCardBinding;->name:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->getFilterName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/FiltersViewController$FilterViewHolder;->itemView:Landroid/view/View;

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

    .line 120
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/FiltersViewController$FilterViewHolder;->update(Ljava/lang/Integer;)V

    return-void
.end method
