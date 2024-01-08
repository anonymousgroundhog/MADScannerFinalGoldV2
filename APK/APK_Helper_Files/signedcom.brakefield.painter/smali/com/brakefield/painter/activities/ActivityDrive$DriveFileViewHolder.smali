.class Lcom/brakefield/painter/activities/ActivityDrive$DriveFileViewHolder;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;
.source "ActivityDrive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/activities/ActivityDrive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DriveFileViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder<",
        "Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;",
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
            "Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 88
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityDrive$DriveFileViewHolder;->setItemClickListener()V

    .line 89
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityDrive$DriveFileViewHolder;->setItemLongClickListener()V

    .line 90
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityDrive$DriveFileViewHolder;->setItemContextClickListener()V

    const p2, 0x7f0a0459

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/brakefield/painter/activities/ActivityDrive$DriveFileViewHolder;->imageView:Landroid/widget/ImageView;

    const p2, 0x7f0a057b

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityDrive$DriveFileViewHolder;->label:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public update(Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityDrive$DriveFileViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->getThumbnailLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityDrive$DriveFileViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 97
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityDrive$DriveFileViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 81
    check-cast p1, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/activities/ActivityDrive$DriveFileViewHolder;->update(Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;)V

    return-void
.end method
