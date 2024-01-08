.class Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectItemViewHolder;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;
.source "HomeMainViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CreateProjectItemViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field binding:Lcom/brakefield/painter/databinding/ButtonItemBinding;


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

    .line 410
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 411
    invoke-static {p1}, Lcom/brakefield/painter/databinding/ButtonItemBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ButtonItemBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ButtonItemBinding;

    .line 412
    iget-object p1, p1, Lcom/brakefield/painter/databinding/ButtonItemBinding;->button:Landroid/widget/Button;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 413
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ButtonItemBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ButtonItemBinding;->button:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectItemViewHolder;->setItemClickListener(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/lang/Object;)V
    .locals 3

    .line 418
    check-cast p1, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectOption;

    const/4 v0, 0x1

    new-array v0, v0, [[I

    const v1, 0x101009e

    .line 420
    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 421
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getLighterColor(I)I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v1

    .line 423
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 425
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectItemViewHolder;->binding:Lcom/brakefield/painter/databinding/ButtonItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ButtonItemBinding;->button:Landroid/widget/Button;

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 426
    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const/4 v1, 0x0

    .line 427
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 428
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectOption;->getIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 429
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 430
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectOption;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 431
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectOption;->getUIBindingKey()I

    move-result p1

    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f0a0663

    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/button/MaterialButton;->setTag(ILjava/lang/Object;)V

    return-void
.end method
