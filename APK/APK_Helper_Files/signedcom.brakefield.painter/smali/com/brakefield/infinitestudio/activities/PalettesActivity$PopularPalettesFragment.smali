.class public Lcom/brakefield/infinitestudio/activities/PalettesActivity$PopularPalettesFragment;
.super Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;
.source "PalettesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/PalettesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PopularPalettesFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 450
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 453
    sget v0, Lcom/brakefield/infinitestudio/R$string;->popular:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$populatePalettes$0$com-brakefield-infinitestudio-activities-PalettesActivity$PopularPalettesFragment(Landroid/view/View;)V
    .locals 2

    .line 461
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PopularPalettesFragment;->palettes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 462
    sget-object p1, Lcom/brakefield/infinitestudio/color/ColourLovers;->popularPalettes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PopularPalettesFragment;->palettes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 463
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PopularPalettesFragment;->refresh()V

    return-void
.end method

.method public populatePalettes()V
    .locals 3

    .line 457
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PopularPalettesFragment;->palettes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 458
    sget-object v0, Lcom/brakefield/infinitestudio/color/ColourLovers;->popularPalettes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    sget-object v0, Lcom/brakefield/infinitestudio/color/ColourLovers;->popularPalettes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PopularPalettesFragment;->palettes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 460
    :cond_0
    new-instance v0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PopularPalettesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PopularPalettesFragment$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/activities/PalettesActivity$PopularPalettesFragment;)V

    invoke-static {v0}, Lcom/brakefield/infinitestudio/color/ColourLovers;->populatePopularPalettes(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
