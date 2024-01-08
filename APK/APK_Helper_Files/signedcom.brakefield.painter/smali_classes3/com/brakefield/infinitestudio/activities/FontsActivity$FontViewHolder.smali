.class Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;
.source "FontsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/FontsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FontViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder<",
        "Lcom/brakefield/infinitestudio/FontFamily;",
        ">;"
    }
.end annotation


# instance fields
.field binding:Lcom/brakefield/infinitestudio/databinding/FontCardBinding;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/infinitestudio/FontFamily;",
            ">;)V"
        }
    .end annotation

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 121
    invoke-static {p1}, Lcom/brakefield/infinitestudio/databinding/FontCardBinding;->bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/FontCardBinding;

    move-result-object p2

    iput-object p2, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder;->binding:Lcom/brakefield/infinitestudio/databinding/FontCardBinding;

    .line 122
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder;->setItemClickListener(Landroid/view/View;)V

    .line 123
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$update$0$com-brakefield-infinitestudio-activities-FontsActivity$FontViewHolder(Lcom/brakefield/infinitestudio/FontFamily;Lcom/brakefield/infinitestudio/FontFamily$Font;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 140
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder;->binding:Lcom/brakefield/infinitestudio/databinding/FontCardBinding;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/databinding/FontCardBinding;->preview:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/FontFamily$Font;->toTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 141
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder;->binding:Lcom/brakefield/infinitestudio/databinding/FontCardBinding;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/databinding/FontCardBinding;->preview:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public update(Lcom/brakefield/infinitestudio/FontFamily;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder;->binding:Lcom/brakefield/infinitestudio/databinding/FontCardBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/FontCardBinding;->title:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    iget-object v1, p1, Lcom/brakefield/infinitestudio/FontFamily;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder;->binding:Lcom/brakefield/infinitestudio/databinding/FontCardBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/FontCardBinding;->preview:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    iget-object v1, p1, Lcom/brakefield/infinitestudio/FontFamily;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder;->binding:Lcom/brakefield/infinitestudio/databinding/FontCardBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/FontCardBinding;->preview:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 134
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder;->binding:Lcom/brakefield/infinitestudio/databinding/FontCardBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/FontCardBinding;->preview:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    const-string v0, "regular"

    .line 136
    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/FontFamily;->findFont(Ljava/lang/String;)Lcom/brakefield/infinitestudio/FontFamily$Font;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    new-instance v1, Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder;Lcom/brakefield/infinitestudio/FontFamily;Lcom/brakefield/infinitestudio/FontFamily$Font;)V

    .line 144
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/FontFamily$Font;->isDownloaded()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/brakefield/infinitestudio/activities/FontsActivity;->fontDownloader:Lcom/brakefield/infinitestudio/Tasks;

    invoke-virtual {v0, p1, v1}, Lcom/brakefield/infinitestudio/FontFamily$Font;->download(Lcom/brakefield/infinitestudio/Tasks;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 115
    check-cast p1, Lcom/brakefield/infinitestudio/FontFamily;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder;->update(Lcom/brakefield/infinitestudio/FontFamily;)V

    return-void
.end method
