.class Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.source "PalettesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
        "Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;

.field final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;Landroid/content/res/Resources;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1;->this$0:Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1;->val$res:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public addSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V
    .locals 3

    .line 242
    new-instance v0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$PaletteSection;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1;->val$res:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1;->this$0:Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;

    iget-object v2, v2, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;->palettes:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$PaletteSection;-><init>(Landroid/content/res/Resources;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    return-void
.end method

.method synthetic lambda$onItemLongClick$0$com-brakefield-infinitestudio-activities-PalettesActivity$PalettesFragment$1(Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 254
    iget-object p3, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1;->this$0:Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;

    iget-object p3, p3, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;->palettes:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 255
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1;->this$0:Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;->access$100(Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;)Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    .line 256
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;)V
    .locals 0

    .line 246
    sget-object p1, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->listener:Lcom/brakefield/infinitestudio/activities/PalettesActivity$OnPaletteSelectedListener;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->listener:Lcom/brakefield/infinitestudio/activities/PalettesActivity$OnPaletteSelectedListener;

    invoke-interface {p1, p3}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$OnPaletteSelectedListener;->onPaletteSelected(Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;)V

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1;->this$0:Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 239
    check-cast p3, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;)V

    return-void
.end method

.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;)Z
    .locals 7

    .line 251
    invoke-static {}, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->access$000()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    .line 252
    :cond_0
    iget-object p1, p3, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->localURL:Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1;->this$0:Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/brakefield/infinitestudio/R$string;->prompt_delete_item:I

    sget v3, Lcom/brakefield/infinitestudio/R$string;->delete:I

    sget v4, Lcom/brakefield/infinitestudio/R$string;->cancel:I

    new-instance v5, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p3, p1}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1;Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/brakefield/infinitestudio/Dialogs;->showAlert(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return p2
.end method

.method public bridge synthetic onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 239
    check-cast p3, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;)Z

    move-result p1

    return p1
.end method
