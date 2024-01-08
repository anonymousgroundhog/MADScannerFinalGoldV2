.class Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverItemViewHolder;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;
.source "HomeDiscoverViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DiscoverItemViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder<",
        "Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;",
        ">;"
    }
.end annotation


# instance fields
.field binding:Lcom/brakefield/painter/databinding/DiscoverCardBinding;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;",
            ">;)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 125
    invoke-static {p1}, Lcom/brakefield/painter/databinding/DiscoverCardBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/DiscoverCardBinding;

    move-result-object p2

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverItemViewHolder;->binding:Lcom/brakefield/painter/databinding/DiscoverCardBinding;

    .line 126
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 127
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverItemViewHolder;->setItemClickListener()V

    return-void
.end method


# virtual methods
.method public update(Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverItemViewHolder;->binding:Lcom/brakefield/painter/databinding/DiscoverCardBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/DiscoverCardBinding;->superTitle:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    iget-object v1, p1, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;->superTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverItemViewHolder;->binding:Lcom/brakefield/painter/databinding/DiscoverCardBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/DiscoverCardBinding;->title:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    iget-object v1, p1, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverItemViewHolder;->binding:Lcom/brakefield/painter/databinding/DiscoverCardBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/DiscoverCardBinding;->preview:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverItemViewHolder;->binding:Lcom/brakefield/painter/databinding/DiscoverCardBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/DiscoverCardBinding;->preview:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 119
    check-cast p1, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverItemViewHolder;->update(Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;)V

    return-void
.end method
