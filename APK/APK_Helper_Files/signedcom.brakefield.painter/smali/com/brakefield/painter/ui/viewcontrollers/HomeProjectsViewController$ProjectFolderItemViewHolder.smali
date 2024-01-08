.class Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectFolderItemViewHolder;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;
.source "HomeProjectsViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProjectFolderItemViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field binding:Lcom/brakefield/painter/databinding/ProjectFolderItemBinding;


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

    .line 506
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 507
    invoke-static {p1}, Lcom/brakefield/painter/databinding/ProjectFolderItemBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ProjectFolderItemBinding;

    move-result-object p2

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectFolderItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ProjectFolderItemBinding;

    .line 508
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 509
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectFolderItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ProjectFolderItemBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProjectFolderItemBinding;->button:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectFolderItemViewHolder;->setItemClickListener(Landroid/view/View;)V

    .line 510
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectFolderItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ProjectFolderItemBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProjectFolderItemBinding;->button:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectFolderItemViewHolder;->setItemLongClickListener(Landroid/view/View;)V

    .line 511
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectFolderItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ProjectFolderItemBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProjectFolderItemBinding;->button:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectFolderItemViewHolder;->setItemContextClickListener(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/lang/Object;)V
    .locals 5

    .line 515
    check-cast p1, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    .line 517
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectFolderItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ProjectFolderItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ProjectFolderItemBinding;->button:Landroid/widget/Button;

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const v1, 0x7f0801e1

    .line 518
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 519
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getOverlayTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 520
    iget-object v1, p1, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 523
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->getProjectForFolderCover()Lcom/brakefield/infinitestudio/ProjectStore$Project;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 525
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectFolderItemViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f120a05

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 527
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectFolderItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ProjectFolderItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ProjectFolderItemBinding;->backgroundImage:Lcom/brakefield/infinitestudio/ui/BlurImageView;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v2, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ProjectStore$Project;->getPreviewModifiedDate()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/bumptech/glide/request/RequestOptions;->signatureOf(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectFolderItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ProjectFolderItemBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/ProjectFolderItemBinding;->backgroundImage:Lcom/brakefield/infinitestudio/ui/BlurImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 528
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectFolderItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 530
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectFolderItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ProjectFolderItemBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProjectFolderItemBinding;->backgroundImage:Lcom/brakefield/infinitestudio/ui/BlurImageView;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/BlurImageView;->setImageAlpha(I)V

    .line 531
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectFolderItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ProjectFolderItemBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProjectFolderItemBinding;->backgroundImage:Lcom/brakefield/infinitestudio/ui/BlurImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getClampedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/BlurImageView;->setBackgroundColor(I)V

    goto :goto_0

    .line 533
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectFolderItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ProjectFolderItemBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProjectFolderItemBinding;->backgroundImage:Lcom/brakefield/infinitestudio/ui/BlurImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/BlurImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 534
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectFolderItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ProjectFolderItemBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProjectFolderItemBinding;->backgroundImage:Lcom/brakefield/infinitestudio/ui/BlurImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getLighterColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/BlurImageView;->setBackgroundColor(I)V

    .line 538
    :goto_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectFolderItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ProjectFolderItemBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProjectFolderItemBinding;->backgroundImage:Lcom/brakefield/infinitestudio/ui/BlurImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/BlurImageView;->setClipToOutline(Z)V

    return-void
.end method
