.class public Lcom/brakefield/painter/PainterProjectStore$ProjectItemViewHolder;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;
.source "PainterProjectStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/PainterProjectStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProjectItemViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/ProjectItemBinding;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 146
    invoke-static {p1}, Lcom/brakefield/painter/databinding/ProjectItemBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ProjectItemBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/PainterProjectStore$ProjectItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ProjectItemBinding;

    .line 147
    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProjectItemBinding;->previewImage:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 148
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterProjectStore$ProjectItemViewHolder;->setItemClickListener()V

    .line 149
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterProjectStore$ProjectItemViewHolder;->setItemLongClickListener()V

    .line 150
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterProjectStore$ProjectItemViewHolder;->setItemContextClickListener()V

    return-void
.end method


# virtual methods
.method public update(Ljava/lang/Object;)V
    .locals 4

    .line 156
    check-cast p1, Lcom/brakefield/painter/PainterProjectStore$Project;

    .line 158
    iget-object v0, p0, Lcom/brakefield/painter/PainterProjectStore$ProjectItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ProjectItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ProjectItemBinding;->nameLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p1}, Lcom/brakefield/painter/PainterProjectStore$Project;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/brakefield/painter/PainterProjectStore$ProjectItemViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-virtual {p1}, Lcom/brakefield/painter/PainterProjectStore$Project;->getPreviewModifiedDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/bumptech/glide/request/RequestOptions;->signatureOf(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/PainterProjectStore$ProjectItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ProjectItemBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ProjectItemBinding;->previewImage:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 162
    invoke-virtual {p1}, Lcom/brakefield/painter/PainterProjectStore$Project;->isTemplate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object p1, p0, Lcom/brakefield/painter/PainterProjectStore$ProjectItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ProjectItemBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProjectItemBinding;->modificationDateLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v0, 0x7f120ae6

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(I)V

    .line 164
    iget-object p1, p0, Lcom/brakefield/painter/PainterProjectStore$ProjectItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ProjectItemBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProjectItemBinding;->templateIcon:Landroid/widget/ImageView;

    sget v0, Lcom/brakefield/infinitestudio/color/Colors;->BLUE:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 165
    iget-object p1, p0, Lcom/brakefield/painter/PainterProjectStore$ProjectItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ProjectItemBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProjectItemBinding;->templateIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p1}, Lcom/brakefield/painter/PainterProjectStore$Project;->getModifiedDate()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/utils/TextFormatter;->formatDate(J)Ljava/lang/String;

    move-result-object p1

    .line 168
    iget-object v0, p0, Lcom/brakefield/painter/PainterProjectStore$ProjectItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ProjectItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ProjectItemBinding;->modificationDateLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object p1, p0, Lcom/brakefield/painter/PainterProjectStore$ProjectItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ProjectItemBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProjectItemBinding;->templateIcon:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
