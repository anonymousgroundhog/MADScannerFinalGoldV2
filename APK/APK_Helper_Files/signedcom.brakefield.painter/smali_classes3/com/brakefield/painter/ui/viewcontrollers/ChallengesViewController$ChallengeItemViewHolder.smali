.class Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItemViewHolder;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;
.source "ChallengesViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChallengeItemViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder<",
        "Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;",
        ">;"
    }
.end annotation


# instance fields
.field binding:Lcom/brakefield/painter/databinding/ChallengeItemBinding;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;",
            ">;)V"
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 166
    invoke-static {p1}, Lcom/brakefield/painter/databinding/ChallengeItemBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ChallengeItemBinding;

    move-result-object p2

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ChallengeItemBinding;

    .line 167
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 168
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItemViewHolder;->setItemClickListener()V

    return-void
.end method


# virtual methods
.method public update(Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ChallengeItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ChallengeItemBinding;->title:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    iget v1, p1, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->type:I

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->access$200(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ChallengeItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ChallengeItemBinding;->description:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    iget v1, p1, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->type:I

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->access$300(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->challengeId:Ljava/lang/String;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 178
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ChallengeItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ChallengeItemBinding;->preview:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ChallengeItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ChallengeItemBinding;->preview:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 160
    check-cast p1, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItemViewHolder;->update(Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;)V

    return-void
.end method
