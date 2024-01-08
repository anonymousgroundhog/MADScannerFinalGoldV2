.class Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItemViewHolder;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;
.source "ExportedItemsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExportItemViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder<",
        "Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final imageView:Landroid/widget/ImageView;

.field private final label:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;",
            ">;)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 90
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItemViewHolder;->setItemClickListener()V

    .line 91
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItemViewHolder;->setItemLongClickListener()V

    .line 92
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItemViewHolder;->setItemContextClickListener()V

    .line 93
    sget p2, Lcom/brakefield/infinitestudio/R$id;->preview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItemViewHolder;->imageView:Landroid/widget/ImageView;

    .line 94
    sget p2, Lcom/brakefield/infinitestudio/R$id;->small_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItemViewHolder;->label:Landroid/widget/TextView;

    .line 95
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public update(Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;)V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItemViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    instance-of v1, v0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetThumbTask;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 102
    check-cast v0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetThumbTask;

    .line 103
    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetThumbTask;->cancel(Z)Z

    goto :goto_0

    .line 104
    :cond_0
    instance-of v1, v0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetProjectThumbTask;

    if-eqz v1, :cond_1

    .line 105
    check-cast v0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetProjectThumbTask;

    .line 106
    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetProjectThumbTask;->cancel(Z)Z

    .line 110
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;->type:Ljava/lang/String;

    const-string v1, "psd"

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItemViewHolder;->imageView:Landroid/widget/ImageView;

    sget v1, Lcom/brakefield/infinitestudio/R$drawable;->export_psd:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v1, "zip"

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItemViewHolder;->imageView:Landroid/widget/ImageView;

    sget v1, Lcom/brakefield/infinitestudio/R$drawable;->export_zip:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_3
    const-string v1, "prbr"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItemViewHolder;->imageView:Landroid/widget/ImageView;

    sget v1, Lcom/brakefield/infinitestudio/R$drawable;->export_prbr:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    const-string v1, "pntr"

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItemViewHolder;->imageView:Landroid/widget/ImageView;

    sget v1, Lcom/brakefield/infinitestudio/R$drawable;->export_pntr:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    const-string v1, "mp4"

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItemViewHolder;->imageView:Landroid/widget/ImageView;

    sget v1, Lcom/brakefield/infinitestudio/R$drawable;->export_mp4:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "svg"

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItemViewHolder;->imageView:Landroid/widget/ImageView;

    sget v1, Lcom/brakefield/infinitestudio/R$drawable;->export_svg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 117
    :cond_7
    invoke-static {p1}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;->access$100(Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 122
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItemViewHolder;->imageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetProjectThumbTask;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItemViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetProjectThumbTask;-><init>(Landroid/widget/ImageView;Ljava/lang/String;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetProjectThumbTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 123
    :cond_8
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItemViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItemViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 125
    :goto_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItemViewHolder;->label:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;->filename:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p1, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItemViewHolder;->update(Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;)V

    return-void
.end method
