.class public Lcom/brakefield/infinitestudio/activities/PalettesActivity$LocalPalettesFragment;
.super Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;
.source "PalettesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/PalettesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalPalettesFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 468
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 471
    sget v0, Lcom/brakefield/infinitestudio/R$string;->saved:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public populatePalettes()V
    .locals 7

    .line 475
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getColorPalettesPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/FileManager;->getFilesSorted(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 476
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    .line 478
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 479
    invoke-static {v4}, Lcom/brakefield/infinitestudio/color/ColorBook;->load(Ljava/lang/String;)Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 481
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getColorPalettesPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->localURL:Ljava/lang/String;

    .line 482
    iget-object v4, v5, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->colors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$LocalPalettesFragment;->palettes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 487
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$LocalPalettesFragment;->palettes:Ljava/util/List;

    invoke-static {}, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->access$000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 488
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$LocalPalettesFragment;->palettes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 489
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$LocalPalettesFragment;->refresh()V

    return-void
.end method
