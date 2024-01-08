.class Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;
.source "ReferencesViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReferenceImageViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder<",
        "Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;",
        ">;"
    }
.end annotation


# instance fields
.field binding:Lcom/brakefield/painter/databinding/ThumbRefBinding;

.field referenceImage:Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferencesCollectionViewControllerDelegate;)V
    .locals 2

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 130
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder;->setItemClickListener()V

    .line 131
    invoke-static {p1}, Lcom/brakefield/painter/databinding/ThumbRefBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ThumbRefBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbRefBinding;

    .line 133
    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbRefBinding;->visibilityButton:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbRefBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbRefBinding;->visibilityButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder;Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferencesCollectionViewControllerDelegate;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbRefBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbRefBinding;->deleteButton:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 137
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbRefBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbRefBinding;->deleteButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 138
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbRefBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbRefBinding;->deleteButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder;Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferencesCollectionViewControllerDelegate;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateLayerVisibility(Landroid/widget/ImageView;Z)V
    .locals 1

    .line 158
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    if-eqz p2, :cond_0

    const p2, 0x7f0804d7

    .line 160
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const p2, 0x7f1201f8

    .line 161
    invoke-static {p2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const p2, 0x7f0804d6

    .line 163
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const p2, 0x7f120a96

    .line 164
    invoke-static {p2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-brakefield-painter-ui-viewcontrollers-ReferencesViewController$ReferenceImageViewHolder(Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferencesCollectionViewControllerDelegate;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder;->referenceImage:Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;

    invoke-virtual {p1, p3, p2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferencesCollectionViewControllerDelegate;->onItemVisibilityClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;)V

    return-void
.end method

.method synthetic lambda$new$1$com-brakefield-painter-ui-viewcontrollers-ReferencesViewController$ReferenceImageViewHolder(Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferencesCollectionViewControllerDelegate;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder;->referenceImage:Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;

    invoke-virtual {p1, p3, p2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferencesCollectionViewControllerDelegate;->onItemDeleteClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;)V

    return-void
.end method

.method public update(Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;)V
    .locals 5

    .line 144
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder;->referenceImage:Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;

    .line 146
    iget-boolean v0, p1, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;->visible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbRefBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbRefBinding;->lockStripes:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbRefBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbRefBinding;->lockStripes:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbRefBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbRefBinding;->preview:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 151
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;->location:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/bumptech/glide/request/RequestOptions;->signatureOf(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbRefBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ThumbRefBinding;->preview:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 154
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbRefBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbRefBinding;->visibilityButton:Landroid/widget/ImageView;

    iget-boolean p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;->visible:Z

    invoke-direct {p0, v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder;->updateLayerVisibility(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 123
    check-cast p1, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder;->update(Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;)V

    return-void
.end method
