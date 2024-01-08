.class public Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsFooterViewHolder;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionViewHolder;
.source "CreateProjectViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PresetsFooterViewHolder"
.end annotation


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/DimensionPresetsFooterBinding;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;Ljava/lang/Runnable;)V
    .locals 1

    .line 874
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewHolder;-><init>(Landroid/view/View;)V

    .line 875
    invoke-static {p1}, Lcom/brakefield/painter/databinding/DimensionPresetsFooterBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/DimensionPresetsFooterBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsFooterViewHolder;->binding:Lcom/brakefield/painter/databinding/DimensionPresetsFooterBinding;

    .line 876
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsFooterViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsFooterViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsFooterViewHolder;Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 881
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$PresetsFooterViewHolder(Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p3, 0x1

    .line 877
    invoke-virtual {p1, p3}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;->setExpanded(Z)V

    .line 878
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsFooterViewHolder;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 879
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public update()V
    .locals 0

    return-void
.end method
