.class Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItemViewHolder;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;
.source "PatternsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/PatternsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PatternItemViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder<",
        "Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final cardView:Landroidx/cardview/widget/CardView;

.field private final label:Landroid/widget/TextView;

.field private final preview:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;",
            ">;)V"
        }
    .end annotation

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 158
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItemViewHolder;->setItemClickListener()V

    .line 159
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItemViewHolder;->setItemLongClickListener()V

    .line 160
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItemViewHolder;->setItemContextClickListener()V

    .line 161
    sget p2, Lcom/brakefield/infinitestudio/R$id;->pattern_card:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/cardview/widget/CardView;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItemViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    .line 162
    sget v0, Lcom/brakefield/infinitestudio/R$id;->preview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItemViewHolder;->preview:Landroid/widget/ImageView;

    .line 163
    sget v0, Lcom/brakefield/infinitestudio/R$id;->name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItemViewHolder;->label:Landroid/widget/TextView;

    .line 164
    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public update(Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItemViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 170
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItemViewHolder;->label:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItemViewHolder;->preview:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 172
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItemViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->getThumbUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItemViewHolder;->preview:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 150
    check-cast p1, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItemViewHolder;->update(Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;)V

    return-void
.end method
