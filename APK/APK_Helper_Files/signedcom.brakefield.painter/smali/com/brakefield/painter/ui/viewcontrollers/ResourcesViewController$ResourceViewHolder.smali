.class Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceViewHolder;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;
.source "ResourcesViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResourceViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder<",
        "Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;",
        ">;"
    }
.end annotation


# instance fields
.field public final binding:Lcom/brakefield/painter/databinding/ResourceItemBinding;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;",
            ">;)V"
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 160
    invoke-static {p1}, Lcom/brakefield/painter/databinding/ResourceItemBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ResourceItemBinding;

    move-result-object p2

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceViewHolder;->binding:Lcom/brakefield/painter/databinding/ResourceItemBinding;

    .line 161
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceViewHolder;->setItemClickListener()V

    .line 162
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceViewHolder;->setItemLongClickListener()V

    .line 163
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceViewHolder;->setItemContextClickListener()V

    const/high16 p2, 0x40800000    # 4.0f

    .line 164
    invoke-static {p2}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p2

    .line 165
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceViewHolder$1;

    invoke-direct {v0, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceViewHolder$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceViewHolder;F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p2, 0x1

    .line 171
    invoke-virtual {p1, p2}, Landroid/view/View;->setClipToOutline(Z)V

    const/4 p2, -0x1

    .line 172
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 173
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public update(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->item:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceViewHolder;->binding:Lcom/brakefield/painter/databinding/ResourceItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ResourceItemBinding;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 156
    check-cast p1, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceViewHolder;->update(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;)V

    return-void
.end method
