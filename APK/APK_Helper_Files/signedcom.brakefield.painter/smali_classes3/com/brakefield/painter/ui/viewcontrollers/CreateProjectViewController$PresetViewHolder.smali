.class Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetViewHolder;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;
.source "CreateProjectViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PresetViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder<",
        "Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;",
        ">;"
    }
.end annotation


# instance fields
.field binding:Lcom/brakefield/painter/databinding/DimensionPresetItemBinding;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;",
            ">;)V"
        }
    .end annotation

    .line 857
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 858
    invoke-static {p1}, Lcom/brakefield/painter/databinding/DimensionPresetItemBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/DimensionPresetItemBinding;

    move-result-object p2

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetViewHolder;->binding:Lcom/brakefield/painter/databinding/DimensionPresetItemBinding;

    .line 859
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetViewHolder;->setItemClickListener(Landroid/view/View;)V

    .line 860
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetViewHolder;->setItemLongClickListener(Landroid/view/View;)V

    .line 861
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetViewHolder;->setItemContextClickListener(Landroid/view/View;)V

    .line 862
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public update(Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)V
    .locals 2

    .line 866
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetViewHolder;->binding:Lcom/brakefield/painter/databinding/DimensionPresetItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/DimensionPresetItemBinding;->nameText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 867
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetViewHolder;->binding:Lcom/brakefield/painter/databinding/DimensionPresetItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/DimensionPresetItemBinding;->sizeText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;->getSizeText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 854
    check-cast p1, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetViewHolder;->update(Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)V

    return-void
.end method
