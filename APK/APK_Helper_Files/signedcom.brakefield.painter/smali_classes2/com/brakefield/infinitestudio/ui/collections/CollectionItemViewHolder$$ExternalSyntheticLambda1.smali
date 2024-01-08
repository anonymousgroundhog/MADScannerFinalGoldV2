.class public final synthetic Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnContextClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;

    return-void
.end method


# virtual methods
.method public final onContextClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->lambda$setItemContextClickListener$2$com-brakefield-infinitestudio-ui-collections-CollectionItemViewHolder(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
