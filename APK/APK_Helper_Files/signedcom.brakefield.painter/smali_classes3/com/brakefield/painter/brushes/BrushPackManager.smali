.class public Lcom/brakefield/painter/brushes/BrushPackManager;
.super Ljava/lang/Object;
.source "BrushPackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/brushes/BrushPackManager$BrushesSection;,
        Lcom/brakefield/painter/brushes/BrushPackManager$BrushViewHolder;,
        Lcom/brakefield/painter/brushes/BrushPackManager$BrushPackCollectionViewDelegate;
    }
.end annotation


# static fields
.field private static final JSON_FOLDERS:Ljava/lang/String; = "folders"

.field private static final JSON_HIDDEN:Ljava/lang/String; = "hidden"

.field private static final JSON_ID:Ljava/lang/String; = "id"

.field private static final JSON_NAME:Ljava/lang/String; = "name"

.field private static final JSON_VERSION:Ljava/lang/String; = "version"

.field private static instance:Lcom/brakefield/painter/brushes/BrushPackManager;


# instance fields
.field private final calligraphyFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

.field private final chalkFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

.field private final charcoalFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

.field private final createNewFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

.field private final createdFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

.field private final dashedFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

.field private final downloadedFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

.field private final favoritesFolder:Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;

.field private final fillsFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

.field private final folders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;",
            ">;"
        }
    .end annotation
.end field

.field private final glowFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

.field private final harmonyFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

.field private final legacyFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

.field private final markersFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

.field private final miscellaneousFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

.field private final paintbrushesFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

.field private final pencilsFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

.field private final pensFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

.field private final screentoneFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

.field private selected:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

.field private final sprayersFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

.field private final texturesFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

.field private final watercolorFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->selected:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    .line 92
    new-instance v0, Lcom/brakefield/painter/brushes/brushfolders/WatercolorFolder;

    invoke-direct {v0}, Lcom/brakefield/painter/brushes/brushfolders/WatercolorFolder;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->watercolorFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 93
    new-instance v0, Lcom/brakefield/painter/brushes/brushfolders/HarmonyFolder;

    invoke-direct {v0}, Lcom/brakefield/painter/brushes/brushfolders/HarmonyFolder;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->harmonyFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 94
    new-instance v0, Lcom/brakefield/painter/brushes/brushfolders/UserCreatedFolder;

    invoke-direct {v0}, Lcom/brakefield/painter/brushes/brushfolders/UserCreatedFolder;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->createdFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 95
    new-instance v0, Lcom/brakefield/painter/brushes/brushfolders/DownloadFolder;

    invoke-direct {v0}, Lcom/brakefield/painter/brushes/brushfolders/DownloadFolder;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->downloadedFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 96
    new-instance v0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;

    invoke-direct {v0}, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->favoritesFolder:Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;

    .line 97
    new-instance v0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;

    invoke-direct {v0}, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->legacyFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 98
    new-instance v0, Lcom/brakefield/painter/brushes/brushfolders/CreateNewFolder;

    invoke-direct {v0}, Lcom/brakefield/painter/brushes/brushfolders/CreateNewFolder;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->createNewFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 99
    new-instance v0, Lcom/brakefield/painter/brushes/brushfolders/CalligraphyFolder;

    invoke-direct {v0}, Lcom/brakefield/painter/brushes/brushfolders/CalligraphyFolder;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->calligraphyFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 100
    new-instance v0, Lcom/brakefield/painter/brushes/brushfolders/ChalkFolder;

    invoke-direct {v0}, Lcom/brakefield/painter/brushes/brushfolders/ChalkFolder;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->chalkFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 101
    new-instance v0, Lcom/brakefield/painter/brushes/brushfolders/CharcoalFolder;

    invoke-direct {v0}, Lcom/brakefield/painter/brushes/brushfolders/CharcoalFolder;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->charcoalFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 102
    new-instance v0, Lcom/brakefield/painter/brushes/brushfolders/DesignFolder;

    invoke-direct {v0}, Lcom/brakefield/painter/brushes/brushfolders/DesignFolder;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->dashedFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 103
    new-instance v0, Lcom/brakefield/painter/brushes/brushfolders/FillsFolder;

    invoke-direct {v0}, Lcom/brakefield/painter/brushes/brushfolders/FillsFolder;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->fillsFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 104
    new-instance v0, Lcom/brakefield/painter/brushes/brushfolders/GlowFolder;

    invoke-direct {v0}, Lcom/brakefield/painter/brushes/brushfolders/GlowFolder;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->glowFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 105
    new-instance v0, Lcom/brakefield/painter/brushes/brushfolders/MarkerFolder;

    invoke-direct {v0}, Lcom/brakefield/painter/brushes/brushfolders/MarkerFolder;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->markersFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 106
    new-instance v0, Lcom/brakefield/painter/brushes/brushfolders/MiscellaneousFolder;

    invoke-direct {v0}, Lcom/brakefield/painter/brushes/brushfolders/MiscellaneousFolder;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->miscellaneousFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 107
    new-instance v0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;

    invoke-direct {v0}, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->paintbrushesFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 108
    new-instance v0, Lcom/brakefield/painter/brushes/brushfolders/PencilsFolder;

    invoke-direct {v0}, Lcom/brakefield/painter/brushes/brushfolders/PencilsFolder;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->pencilsFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 109
    new-instance v0, Lcom/brakefield/painter/brushes/brushfolders/PensFolder;

    invoke-direct {v0}, Lcom/brakefield/painter/brushes/brushfolders/PensFolder;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->pensFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 110
    new-instance v0, Lcom/brakefield/painter/brushes/brushfolders/ScreentoneFolder;

    invoke-direct {v0}, Lcom/brakefield/painter/brushes/brushfolders/ScreentoneFolder;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->screentoneFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 111
    new-instance v0, Lcom/brakefield/painter/brushes/brushfolders/SprayersFolder;

    invoke-direct {v0}, Lcom/brakefield/painter/brushes/brushfolders/SprayersFolder;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->sprayersFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 112
    new-instance v0, Lcom/brakefield/painter/brushes/brushfolders/TexturesFolder;

    invoke-direct {v0}, Lcom/brakefield/painter/brushes/brushfolders/TexturesFolder;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->texturesFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    return-void
.end method

.method private canRestore()Z
    .locals 4

    .line 414
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 415
    iget-boolean v2, v1, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->hidden:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    .line 416
    :cond_1
    invoke-virtual {v1}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->canRestore()Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private findSelectedFolder()V
    .locals 4

    .line 164
    new-instance v0, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushType()I

    move-result v1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushCustomName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->selected:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-virtual {v1, v0}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->has(Lcom/brakefield/painter/brushes/brushfolders/Brush;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 167
    invoke-virtual {v2, v0}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->has(Lcom/brakefield/painter/brushes/brushfolders/Brush;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    iput-object v2, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->selected:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->selected:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-virtual {v1, v0}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->set(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    return-void
.end method

.method private getFoldersJSON()Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 444
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 446
    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 448
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "name"

    .line 449
    iget-object v5, v2, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "id"

    .line 450
    invoke-virtual {v2}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "hidden"

    .line 451
    iget-boolean v2, v2, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->hidden:Z

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 453
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/brakefield/painter/brushes/BrushPackManager;
    .locals 1

    .line 117
    sget-object v0, Lcom/brakefield/painter/brushes/BrushPackManager;->instance:Lcom/brakefield/painter/brushes/BrushPackManager;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/brakefield/painter/brushes/BrushPackManager;

    invoke-direct {v0}, Lcom/brakefield/painter/brushes/BrushPackManager;-><init>()V

    sput-object v0, Lcom/brakefield/painter/brushes/BrushPackManager;->instance:Lcom/brakefield/painter/brushes/BrushPackManager;

    .line 119
    :cond_0
    sget-object v0, Lcom/brakefield/painter/brushes/BrushPackManager;->instance:Lcom/brakefield/painter/brushes/BrushPackManager;

    return-object v0
.end method

.method static synthetic lambda$duplicateBrush$2(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 2

    .line 581
    new-instance v0, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    .line 582
    invoke-virtual {p0, v0, p2}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->insert(Lcom/brakefield/painter/brushes/brushfolders/Brush;I)V

    .line 583
    invoke-virtual {p0}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->save()V

    .line 584
    invoke-virtual {p0}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->refresh()V

    .line 585
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$duplicateBrush$3(Landroid/view/View;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 1

    .line 580
    new-instance v0, Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;Ljava/lang/String;ILjava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$shareFolder$0(Landroid/app/Activity;Landroid/net/Uri;Landroid/view/View;)V
    .locals 0

    .line 383
    invoke-static {p0, p1}, Lcom/brakefield/painter/ShareManager;->sendToOther(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic lambda$shareFolder$1(Landroid/view/View;Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 2

    const v0, 0x7f120a68

    .line 381
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    const v0, 0x7f120a8b

    .line 382
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 385
    invoke-static {p0}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->themeSnackbar(Lcom/google/android/material/snackbar/Snackbar;)V

    .line 386
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method private setupFolders()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->createNewFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->favoritesFolder:Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->createdFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->downloadedFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->pencilsFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->pensFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->calligraphyFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->markersFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->paintbrushesFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->watercolorFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->sprayersFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->chalkFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->charcoalFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->dashedFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->fillsFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->glowFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->miscellaneousFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->screentoneFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->texturesFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->harmonyFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->legacyFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->paintbrushesFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    iput-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->selected:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 153
    invoke-virtual {p0}, Lcom/brakefield/painter/brushes/BrushPackManager;->load()V

    .line 155
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 156
    invoke-virtual {v1}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->init()V

    .line 157
    invoke-virtual {v1}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->refresh()V

    goto :goto_0

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/painter/brushes/BrushPackManager;->findSelectedFolder()V

    return-void
.end method

.method private toJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 435
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "version"

    const/4 v2, 0x1

    .line 437
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "folders"

    .line 438
    invoke-direct {p0}, Lcom/brakefield/painter/brushes/BrushPackManager;->getFoldersJSON()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public addFolder(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 544
    invoke-virtual {p0}, Lcom/brakefield/painter/brushes/BrushPackManager;->save()V

    return-void
.end method

.method public canRemoveBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)Z
    .locals 1

    .line 264
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/brushes/BrushPackManager;->selectedFolderHasDefaultBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->selected:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->downloadedFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->createdFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public createNewFolder(Ljava/lang/String;)V
    .locals 2

    .line 217
    new-instance v0, Lcom/brakefield/painter/brushes/brushfolders/CustomBrushFolder;

    invoke-direct {v0}, Lcom/brakefield/painter/brushes/brushfolders/CustomBrushFolder;-><init>()V

    .line 218
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/brushes/BrushPackManager;->getNewBrushFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/brakefield/painter/brushes/brushfolders/CustomBrushFolder;->name:Ljava/lang/String;

    .line 219
    iput-object p1, v0, Lcom/brakefield/painter/brushes/brushfolders/CustomBrushFolder;->displayName:Ljava/lang/String;

    .line 220
    invoke-virtual {v0}, Lcom/brakefield/painter/brushes/brushfolders/CustomBrushFolder;->init()V

    .line 221
    invoke-virtual {v0}, Lcom/brakefield/painter/brushes/brushfolders/CustomBrushFolder;->save()V

    .line 222
    iget-object p1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 223
    iput-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->selected:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 224
    invoke-virtual {p0}, Lcom/brakefield/painter/brushes/BrushPackManager;->save()V

    return-void
.end method

.method public deleteBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->selected:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->deleteBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    .line 557
    iget-object p1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->selected:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->save()V

    return-void
.end method

.method public deleteFolder(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V
    .locals 1

    .line 402
    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->delete()V

    .line 403
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 404
    invoke-virtual {p0}, Lcom/brakefield/painter/brushes/BrushPackManager;->save()V

    return-void
.end method

.method public duplicateBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 6

    .line 562
    iget-object v2, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->selected:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 564
    iget-object v0, v2, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->brushes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    const-string v0, "Custom"

    .line 567
    invoke-virtual {p0, v0}, Lcom/brakefield/painter/brushes/BrushPackManager;->getNewBrushName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 569
    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/brakefield/painter/PainterLib;->setBrushType(ILjava/lang/String;)V

    .line 570
    invoke-static {v3}, Lcom/brakefield/painter/PainterLib;->createBrush(Ljava/lang/String;)V

    .line 571
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->saveBrush()V

    .line 573
    invoke-static {v1, v3}, Lcom/brakefield/painter/PainterLib;->setBrushType(ILjava/lang/String;)V

    .line 574
    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setCurrentBrushDisplayName(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 576
    sput-boolean p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveBrushPreview:Z

    .line 580
    new-instance p1, Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda0;

    move-object v0, p1

    move-object v1, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;Ljava/lang/String;ILjava/lang/Runnable;)V

    sput-object p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->endRenderListener:Ljava/lang/Runnable;

    return-void
.end method

.method public getCurrentBrush()Lcom/brakefield/painter/brushes/brushfolders/Brush;
    .locals 4

    .line 233
    new-instance v0, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->selected:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushType()I

    move-result v2

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushCustomName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    return-object v0
.end method

.method public getFolders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    return-object v0
.end method

.method public getNewBrushFolderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 606
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getCustomBrushFoldersPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".json"

    invoke-static {v0, p1, v1}, Lcom/brakefield/infinitestudio/FileManager;->getNewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 607
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNewBrushName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 622
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getCreatedBrushesPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".json"

    invoke-static {v0, p1, v1}, Lcom/brakefield/infinitestudio/FileManager;->getNewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 623
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedFolder()Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->selected:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    return-object v0
.end method

.method public hasHiddenFolders()Z
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 242
    iget-boolean v1, v1, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->hidden:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hideBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->selected:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->hide(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    .line 205
    iget-object p1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->selected:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->save()V

    return-void
.end method

.method public hideFolder(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V
    .locals 1

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p1, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->hidden:Z

    .line 229
    invoke-virtual {p0}, Lcom/brakefield/painter/brushes/BrushPackManager;->save()V

    return-void
.end method

.method public isFavoriteBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)Z
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->favoritesFolder:Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->has(Lcom/brakefield/painter/brushes/brushfolders/Brush;)Z

    move-result p1

    return p1
.end method

.method public isLastBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)Z
    .locals 4

    .line 612
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 613
    invoke-virtual {v3, p1}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->has(Lcom/brakefield/painter/brushes/brushfolders/Brush;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-gt v2, p1, :cond_2

    move v1, p1

    :cond_2
    return v1
.end method

.method public isSelectedFolder(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)Z
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->selected:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public launchBrushHeadResourcesDialog(Landroid/app/Activity;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;)V
    .locals 1

    .line 635
    sput-object p2, Lcom/brakefield/painter/activities/BrushHeadResourcesActivity;->listener:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;

    .line 636
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/brakefield/painter/activities/BrushHeadResourcesActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 637
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public launchBrushTextureResourcesDialog(Landroid/app/Activity;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;)V
    .locals 1

    .line 641
    sput-object p2, Lcom/brakefield/painter/activities/BrushTextureResourcesActivity;->listener:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;

    .line 642
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/brakefield/painter/activities/BrushTextureResourcesActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 643
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public load()V
    .locals 11

    const-string v0, "hidden"

    .line 461
    :try_start_0
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getBrushFoldersPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "folders.json"

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/FileManager;->getFileInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 467
    :cond_0
    new-instance v4, Lorg/json/JSONTokener;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string/jumbo v4, "version"

    .line 469
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "folders"

    .line 471
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 473
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    .line 475
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 477
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "name"

    .line 479
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "id"

    .line 480
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 482
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 483
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    goto :goto_2

    :cond_1
    move v7, v5

    .line 486
    :goto_2
    invoke-static {v8, v9}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolderManager;->getFolder(Ljava/lang/String;I)Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    move-result-object v8

    .line 487
    iput-boolean v7, v8, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->hidden:Z

    .line 488
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 495
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 496
    iget-object v3, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    move v7, v5

    .line 498
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, -0x1

    if-ge v7, v8, :cond_4

    .line 499
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 500
    invoke-virtual {v6}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->getId()I

    move-result v10

    invoke-virtual {v8}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->getId()I

    move-result v8

    if-ne v10, v8, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    move v7, v9

    :goto_5
    if-le v7, v9, :cond_5

    .line 507
    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 508
    iget-boolean v8, v8, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->hidden:Z

    iput-boolean v8, v6, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->hidden:Z

    .line 509
    invoke-interface {v4, v7, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 511
    :cond_5
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 516
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 517
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 520
    :cond_7
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 521
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 522
    iget-object v4, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 525
    :cond_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_a

    .line 527
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_9

    .line 461
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_8
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 528
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_9
    return-void
.end method

.method public refreshCreatedFolder()V
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->createdFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-virtual {v0}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->load()V

    return-void
.end method

.method public refreshDownloadedFolder()V
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->downloadedFolder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-virtual {v0}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->load()V

    return-void
.end method

.method public refreshSelectedFolder()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->selected:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    invoke-virtual {v0}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->refresh()V

    return-void
.end method

.method public removeBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V
    .locals 3

    .line 590
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->selected:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->deleteBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    .line 591
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->selected:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-virtual {v0}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->save()V

    .line 592
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 593
    invoke-virtual {v1, p1}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->hasDefaultBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    invoke-virtual {v1, p1}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->unhide(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    .line 595
    invoke-virtual {v1}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->save()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public renameBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;Ljava/lang/String;)V
    .locals 0

    .line 601
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->setDisplayName(Ljava/lang/String;)V

    return-void
.end method

.method public restoreFolder(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V
    .locals 0

    .line 408
    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->restore()V

    .line 409
    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->save()V

    .line 410
    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->refresh()V

    return-void
.end method

.method public save()V
    .locals 3

    .line 533
    :try_start_0
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getBrushFoldersPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "folders.json"

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFileOutputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 535
    :try_start_2
    invoke-direct {p0}, Lcom/brakefield/painter/brushes/BrushPackManager;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    .line 536
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 537
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 533
    :try_start_5
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 538
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method

.method public selectBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->selected:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->select(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    return-void
.end method

.method public selectFolder(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->selected:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    return-void
.end method

.method public selectedFolderHasBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)Z
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->selected:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->has(Lcom/brakefield/painter/brushes/brushfolders/Brush;)Z

    move-result p1

    return p1
.end method

.method public selectedFolderHasDefaultBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)Z
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->selected:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->hasDefaultBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)Z

    move-result p1

    return p1
.end method

.method public setupIfNeeded()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/brakefield/painter/brushes/BrushPackManager;->setupFolders()V

    :cond_0
    return-void
.end method

.method public shareFolder(Landroid/app/Activity;Landroid/view/View;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V
    .locals 7

    .line 361
    new-instance v0, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;

    invoke-direct {v0}, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;-><init>()V

    .line 362
    iget-object v1, p3, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->setName(Ljava/lang/String;)V

    .line 363
    iget-object v1, p3, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->setDisplayName(Ljava/lang/String;)V

    .line 364
    iget-object v1, p3, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->brushes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    .line 365
    invoke-virtual {v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getId()I

    move-result v3

    invoke-virtual {v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v2}, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->addBrush(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_0
    new-instance v1, Lcom/brakefield/painter/nativeobjs/PainterZipNative;

    invoke-direct {v1}, Lcom/brakefield/painter/nativeobjs/PainterZipNative;-><init>()V

    .line 369
    invoke-virtual {v1, v0}, Lcom/brakefield/painter/nativeobjs/PainterZipNative;->addBrushFolder(Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;)V

    .line 371
    iget-object p3, p3, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->displayName:Ljava/lang/String;

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getExportPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p3, v0}, Lcom/brakefield/painter/nativeobjs/PainterZipNative;->save(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 374
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p3, v0, :cond_1

    .line 377
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/com.brakefield.painter.przp"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getSharedDocumentsDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "Brush Packs"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 p3, 0x0

    sget-object p3, Landroidx/constraintlayout/motion/widget/Opu/AFxbOaHHHN;->aMJzGTRsT:Ljava/lang/String;

    invoke-static {p3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/brakefield/infinitestudio/FileManager;->copyFileToMediaStore(Ljava/io/File;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    .line 378
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    if-eqz p3, :cond_2

    .line 380
    new-instance v0, Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, p1, p3}, Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;Landroid/app/Activity;Landroid/net/Uri;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 390
    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.SEND"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "file/*"

    .line 391
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "com.brakefield.painter.provider"

    .line 392
    invoke-static {p1, p3, v6}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    const-string v0, "android.intent.extra.STREAM"

    .line 393
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p3, "android.intent.extra.TEXT"

    const-string v0, "#infinitepainter"

    .line 394
    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p3, 0x7f120a8b

    .line 395
    invoke-static {p3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public shouldHideBrushView(Lcom/brakefield/painter/brushes/brushfolders/Brush;)Z
    .locals 4

    .line 647
    iget-boolean v0, p1, Lcom/brakefield/painter/brushes/brushfolders/Brush;->hidden:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->selected:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    instance-of v2, v0, Lcom/brakefield/painter/brushes/brushfolders/DownloadFolder;

    if-nez v2, :cond_1

    instance-of v0, v0, Lcom/brakefield/painter/brushes/brushfolders/UserCreatedFolder;

    if-eqz v0, :cond_3

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 650
    iget-object v3, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->selected:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, p1}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->has(Lcom/brakefield/painter/brushes/brushfolders/Brush;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public showAllBrushFolders()V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->hidden:Z

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/painter/brushes/BrushPackManager;->save()V

    return-void
.end method

.method public showFavorties()Z
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->favoritesFolder:Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;

    iget-boolean v0, v0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->hidden:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public swapBrushInFolderWithNewName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 548
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 549
    iget-object v1, v1, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->brushes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    .line 550
    invoke-virtual {v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, p2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->setName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toggleFavoriteBrush()V
    .locals 2

    .line 181
    invoke-virtual {p0}, Lcom/brakefield/painter/brushes/BrushPackManager;->getCurrentBrush()Lcom/brakefield/painter/brushes/brushfolders/Brush;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->favoritesFolder:Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;

    invoke-virtual {v1, v0}, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->has(Lcom/brakefield/painter/brushes/brushfolders/Brush;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->favoritesFolder:Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;

    invoke-virtual {v1, v0}, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->remove(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    goto :goto_0

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->favoritesFolder:Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;

    invoke-virtual {v1, v0}, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->add(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    .line 186
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager;->favoritesFolder:Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;

    invoke-virtual {v0}, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->save()V

    return-void
.end method
