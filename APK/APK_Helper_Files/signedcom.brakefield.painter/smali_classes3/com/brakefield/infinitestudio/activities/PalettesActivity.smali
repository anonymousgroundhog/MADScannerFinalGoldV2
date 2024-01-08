.class public Lcom/brakefield/infinitestudio/activities/PalettesActivity;
.super Lcom/brakefield/infinitestudio/activities/MasterActivity;
.source "PalettesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/activities/PalettesActivity$LocalPalettesFragment;,
        Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;,
        Lcom/brakefield/infinitestudio/activities/PalettesActivity$OnPaletteSelectedListener;,
        Lcom/brakefield/infinitestudio/activities/PalettesActivity$UploadPaletteTask;,
        Lcom/brakefield/infinitestudio/activities/PalettesActivity$PopularPalettesFragment;,
        Lcom/brakefield/infinitestudio/activities/PalettesActivity$NewestPalettesFragment;,
        Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment;
    }
.end annotation


# static fields
.field private static final defaultPalettes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;",
            ">;"
        }
    .end annotation
.end field

.field public static listener:Lcom/brakefield/infinitestudio/activities/PalettesActivity$OnPaletteSelectedListener;

.field protected static selectedPage:I

.field public static session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;


# instance fields
.field private binding:Lcom/brakefield/infinitestudio/databinding/ActivityPalettesBinding;

.field private importIntentLaunchers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

.field private final localPalettesFragment:Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->defaultPalettes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/MasterActivity;-><init>()V

    .line 95
    new-instance v0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$LocalPalettesFragment;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$LocalPalettesFragment;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->localPalettesFragment:Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 77
    sget-object v0, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->defaultPalettes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic lambda$bindMainContent$0(Ljava/util/List;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    .line 125
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/brakefield/infinitestudio/ui/TabFragment;

    .line 126
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/TabFragment;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method

.method public static processUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/brakefield/infinitestudio/utils/Result;
    .locals 10

    const-string v0, "."

    .line 174
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x2e

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 177
    :try_start_0
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v4, "_display_name"

    .line 178
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 179
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 180
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 183
    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 185
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getCachePath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "temp"

    .line 186
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Lcom/brakefield/infinitestudio/FileManager;->getNewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 189
    :try_start_2
    invoke-static {v5, v0}, Lcom/brakefield/infinitestudio/FileManager;->getFileOutputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 190
    :try_start_3
    invoke-static {p0, v4}, Lcom/brakefield/infinitestudio/FileManager;->copyStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 191
    new-instance v6, Ljava/io/File;

    invoke-static {v5, v0}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_0

    .line 192
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_0
    if-eqz p0, :cond_1

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_1
    if-eqz v1, :cond_5

    .line 193
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v4, :cond_2

    .line 188
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_8
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz p0, :cond_3

    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p0

    :try_start_a
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p0

    if-eqz v1, :cond_4

    .line 177
    :try_start_b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    :try_start_c
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception p0

    .line 194
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_3
    move p0, v3

    goto :goto_4

    :cond_6
    const/4 p0, 0x0

    .line 198
    :goto_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    .line 200
    sget p0, Lcom/brakefield/infinitestudio/R$string;->file_import_failed:I

    invoke-static {p0}, Lcom/brakefield/infinitestudio/utils/Result;->Failed(I)Lcom/brakefield/infinitestudio/utils/Result;

    move-result-object p0

    return-object p0

    .line 202
    :cond_7
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clrs"

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    .line 206
    sget-object p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->listener:Lcom/brakefield/infinitestudio/activities/PalettesActivity$OnPaletteSelectedListener;

    invoke-interface {p0, p1}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$OnPaletteSelectedListener;->onPaletteFileImported(Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/brakefield/infinitestudio/utils/Result;->Success()Lcom/brakefield/infinitestudio/utils/Result;

    move-result-object p0

    return-object p0

    .line 211
    :cond_8
    sget-object v0, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->listener:Lcom/brakefield/infinitestudio/activities/PalettesActivity$OnPaletteSelectedListener;

    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$OnPaletteSelectedListener;->onPaletteImageImported(Ljava/lang/String;)V

    if-eqz p0, :cond_9

    .line 212
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 214
    :cond_9
    invoke-static {}, Lcom/brakefield/infinitestudio/utils/Result;->Success()Lcom/brakefield/infinitestudio/utils/Result;

    move-result-object p0

    return-object p0
.end method

.method public static sendPaletteToInfiniteStudioAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 495
    new-instance v0, Lcom/brakefield/infinitestudio/account/UserInfoCache;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/account/UserInfoCache;-><init>(Landroid/content/Context;)V

    .line 496
    sget-object v0, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/brakefield/infinitestudio/account/LoginActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "REGISTER_NEW_USER_KEY"

    const/4 v0, 0x1

    .line 498
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 499
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 501
    :cond_0
    new-instance v0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$UploadPaletteTask;

    sget-object v1, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-direct {v0, p0, v1, p2}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$UploadPaletteTask;-><init>(Landroid/content/Context;Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;Ljava/lang/String;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$UploadPaletteTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method


# virtual methods
.method addImportButton()V
    .locals 5

    .line 149
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 150
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTopBarIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 151
    sget v1, Lcom/brakefield/infinitestudio/R$drawable;->add:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 153
    new-instance v1, Lcom/brakefield/infinitestudio/activities/PalettesActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/activities/PalettesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/brakefield/infinitestudio/R$dimen;->button_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/brakefield/infinitestudio/R$dimen;->button_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    .line 161
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 163
    invoke-virtual {p0, v0, v1}, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->addTitleBarContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    new-instance v0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;-><init>(Landroid/content/Context;Landroidx/activity/result/ActivityResultRegistry;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->importIntentLaunchers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    .line 166
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->importIntentLaunchers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method protected bindMainContent(Landroid/view/ViewGroup;)V
    .locals 4

    .line 105
    sget-object v0, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->defaultPalettes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 106
    sget-object v1, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->listener:Lcom/brakefield/infinitestudio/activities/PalettesActivity$OnPaletteSelectedListener;

    invoke-interface {v1}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$OnPaletteSelectedListener;->getDefaultPalettes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/databinding/ActivityPalettesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/brakefield/infinitestudio/databinding/ActivityPalettesBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityPalettesBinding;

    .line 110
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->localPalettesFragment:Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->getTabs()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityPalettesBinding;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/databinding/ActivityPalettesBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v2, Lcom/brakefield/infinitestudio/activities/PalettesActivity$1;

    invoke-direct {v2, p0, p0, p1}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$1;-><init>(Lcom/brakefield/infinitestudio/activities/PalettesActivity;Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 124
    new-instance v1, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityPalettesBinding;

    iget-object v2, v2, Lcom/brakefield/infinitestudio/databinding/ActivityPalettesBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v3, Lcom/brakefield/infinitestudio/activities/PalettesActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 127
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 129
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityPalettesBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ActivityPalettesBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/brakefield/infinitestudio/ui/ZoomOutPageTransformer;

    invoke-direct {v1}, Lcom/brakefield/infinitestudio/ui/ZoomOutPageTransformer;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 131
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityPalettesBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ActivityPalettesBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/brakefield/infinitestudio/activities/PalettesActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$2;-><init>(Lcom/brakefield/infinitestudio/activities/PalettesActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 140
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityPalettesBinding;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/databinding/ActivityPalettesBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    sget v0, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->selectedPage:I

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 142
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->addImportButton()V

    .line 144
    invoke-static {p0}, Lcom/brakefield/infinitestudio/utils/NetworkUtils;->checkNetworkOrNotifyUser(Landroid/content/Context;)V

    return-void
.end method

.method protected getTitleText()Ljava/lang/String;
    .locals 1

    .line 99
    sget v0, Lcom/brakefield/infinitestudio/R$string;->palette:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$addImportButton$1$com-brakefield-infinitestudio-activities-PalettesActivity(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 155
    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->processUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/brakefield/infinitestudio/utils/Result;

    .line 156
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->localPalettesFragment:Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;->populatePalettes()V

    return-void
.end method

.method synthetic lambda$addImportButton$2$com-brakefield-infinitestudio-activities-PalettesActivity(Landroid/view/View;)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->importIntentLaunchers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    new-instance v1, Lcom/brakefield/infinitestudio/activities/PalettesActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/infinitestudio/activities/PalettesActivity;)V

    invoke-static {p0, p1, v0, v1}, Lcom/brakefield/infinitestudio/ImportOptions;->showOptions(Landroid/app/Activity;Landroid/view/View;Lcom/brakefield/infinitestudio/ImportIntentLaunchers;Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;)V

    return-void
.end method
