.class Lcom/brakefield/infinitestudio/activities/ClipboardActivity$ClipboardItemViewHolder;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;
.source "ClipboardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/ClipboardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClipboardItemViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder<",
        "Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;",
        ">;"
    }
.end annotation


# instance fields
.field public final imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;",
            ">;)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 90
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$ClipboardItemViewHolder;->setItemClickListener()V

    .line 91
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$ClipboardItemViewHolder;->setItemLongClickListener()V

    .line 92
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$ClipboardItemViewHolder;->setItemContextClickListener()V

    .line 93
    sget p2, Lcom/brakefield/infinitestudio/R$id;->image_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$ClipboardItemViewHolder;->imageView:Landroid/widget/ImageView;

    .line 94
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public update(Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$ClipboardItemViewHolder;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 99
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$ClipboardItemViewHolder;->imageView:Landroid/widget/ImageView;

    sget v1, Lcom/brakefield/infinitestudio/R$drawable;->loading:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$ClipboardItemViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 104
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;->getLocation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/bumptech/glide/signature/ObjectKey;

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->signatureOf(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$ClipboardItemViewHolder;->imageView:Landroid/widget/ImageView;

    .line 106
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 86
    check-cast p1, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$ClipboardItemViewHolder;->update(Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;)V

    return-void
.end method
