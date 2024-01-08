.class public Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColorViewHolder;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;
.source "ColorWheelViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaletteColorViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder<",
        "Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;",
        ">;"
    }
.end annotation


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/ColorItemBinding;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;",
            ">;)V"
        }
    .end annotation

    .line 1509
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 1510
    invoke-static {p1}, Lcom/brakefield/painter/databinding/ColorItemBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ColorItemBinding;

    move-result-object p2

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColorViewHolder;->binding:Lcom/brakefield/painter/databinding/ColorItemBinding;

    .line 1511
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColorViewHolder;->setItemClickListener()V

    .line 1512
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public update(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;)V
    .locals 2

    .line 1516
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColorViewHolder;->delegate:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColorViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;->isDragging(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1517
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColorViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1519
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColorViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1521
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColorViewHolder;->binding:Lcom/brakefield/painter/databinding/ColorItemBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorItemBinding;->colorView:Landroid/view/View;

    iget v1, p1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;->rgba:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1523
    iget p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;->rgba:I

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getColor()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColorViewHolder;->itemView:Landroid/view/View;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1524
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColorViewHolder;->itemView:Landroid/view/View;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 1504
    check-cast p1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColorViewHolder;->update(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;)V

    return-void
.end method
