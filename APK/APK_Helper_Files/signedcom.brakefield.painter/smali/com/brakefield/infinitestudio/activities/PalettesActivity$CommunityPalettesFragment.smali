.class public Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment;
.super Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;
.source "PalettesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/PalettesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommunityPalettesFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment$getPalettesTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 316
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 319
    sget v0, Lcom/brakefield/infinitestudio/R$string;->community:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public populatePalettes()V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment;->palettes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 324
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment;->palettes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    sget-object v0, Lcom/brakefield/infinitestudio/color/ColourLovers;->newestPalettes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment;->palettes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    :cond_0
    new-instance v0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment$getPalettesTask;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment$getPalettesTask;-><init>(Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment$getPalettesTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method
