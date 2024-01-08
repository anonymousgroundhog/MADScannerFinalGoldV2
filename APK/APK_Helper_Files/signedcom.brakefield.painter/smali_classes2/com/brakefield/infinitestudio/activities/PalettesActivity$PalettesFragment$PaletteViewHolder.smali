.class Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$PaletteViewHolder;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;
.source "PalettesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PaletteViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder<",
        "Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;",
        ">;"
    }
.end annotation


# instance fields
.field private binding:Lcom/brakefield/infinitestudio/databinding/PaletteCardBinding;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;",
            ">;)V"
        }
    .end annotation

    .line 285
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 286
    invoke-static {p1}, Lcom/brakefield/infinitestudio/databinding/PaletteCardBinding;->bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/PaletteCardBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$PaletteViewHolder;->binding:Lcom/brakefield/infinitestudio/databinding/PaletteCardBinding;

    .line 287
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$PaletteViewHolder;->setItemClickListener()V

    .line 288
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$PaletteViewHolder;->setItemLongClickListener()V

    .line 289
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$PaletteViewHolder;->setItemContextClickListener()V

    .line 290
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$PaletteViewHolder;->binding:Lcom/brakefield/infinitestudio/databinding/PaletteCardBinding;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/databinding/PaletteCardBinding;->paletteView:Lcom/brakefield/infinitestudio/color/PaletteView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public update(Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;)V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$PaletteViewHolder;->binding:Lcom/brakefield/infinitestudio/databinding/PaletteCardBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/PaletteCardBinding;->card:Landroidx/cardview/widget/CardView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 295
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$PaletteViewHolder;->binding:Lcom/brakefield/infinitestudio/databinding/PaletteCardBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/PaletteCardBinding;->paletteView:Lcom/brakefield/infinitestudio/color/PaletteView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/color/PaletteView;->setPalette(Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;)V

    .line 296
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$PaletteViewHolder;->binding:Lcom/brakefield/infinitestudio/databinding/PaletteCardBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/PaletteCardBinding;->title:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->title:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 280
    check-cast p1, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$PaletteViewHolder;->update(Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;)V

    return-void
.end method
