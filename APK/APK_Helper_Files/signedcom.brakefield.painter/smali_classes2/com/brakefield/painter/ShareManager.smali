.class public Lcom/brakefield/painter/ShareManager;
.super Ljava/lang/Object;
.source "ShareManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ShareManager$UploadArtworkTask;,
        Lcom/brakefield/painter/ShareManager$UploadPatternTask;,
        Lcom/brakefield/painter/ShareManager$UploadBrushTask;,
        Lcom/brakefield/painter/ShareManager$UploadPaletteTask;,
        Lcom/brakefield/painter/ShareManager$UploadUserProfileImageTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissUploadDialog(Lcom/brakefield/infinitestudio/account/UploadDialog;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/account/UploadDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/account/UploadDialog;->finish()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$launchShareOptions$3(Landroid/app/Activity;Ljava/io/File;)V
    .locals 0

    .line 410
    invoke-static {p0, p1}, Lcom/brakefield/painter/ShareManager;->sendToInstagram(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method static synthetic lambda$launchShareOptions$4(Landroid/app/Activity;Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    sget-object v0, Lcom/brakefield/painter/ui/cZ/JtBOMbAc;->jyoDYNPBR:Ljava/lang/String;

    .line 412
    invoke-static {p0, v0, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 413
    new-instance v0, Landroidx/print/PrintHelper;

    invoke-direct {v0, p0}, Landroidx/print/PrintHelper;-><init>(Landroid/content/Context;)V

    const p0, 0x7f120045

    .line 415
    :try_start_0
    invoke-static {p0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroidx/print/PrintHelper;->printBitmap(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 417
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$launchShareOptions$5(Landroid/app/Activity;Ljava/io/File;)V
    .locals 0

    .line 420
    invoke-static {p0, p1}, Lcom/brakefield/painter/ShareManager;->sendToOther(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method static synthetic lambda$sendArtworkToInfiniteStudioAccount$0(Landroid/app/Activity;Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;Ljava/io/File;Landroid/view/View;)V
    .locals 1

    .line 85
    new-instance p3, Lcom/brakefield/painter/ShareManager$UploadArtworkTask;

    invoke-direct {p3, p0, p1}, Lcom/brakefield/painter/ShareManager$UploadArtworkTask;-><init>(Landroid/content/Context;Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/io/File;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-virtual {p3, p0, p1}, Lcom/brakefield/painter/ShareManager$UploadArtworkTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic lambda$showShareSnackBar$6(Landroid/content/Context;Landroid/net/Uri;Landroid/view/View;)V
    .locals 0

    .line 440
    invoke-static {p0, p1}, Lcom/brakefield/painter/ShareManager;->sendToOther(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic lambda$showUploadPolicy$1(Landroid/app/Activity;Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 102
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 103
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p3, "PREF_COMMUNITY_ACCEPTED_TERMS"

    const/4 p4, 0x1

    invoke-interface {p0, p3, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p1, :cond_0

    .line 104
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$showUploadPolicy$2(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public static launchShareOptions(Landroid/app/Activity;Ljava/io/File;)V
    .locals 6

    .line 393
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".psd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 394
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".pntr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 395
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".prbr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 396
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 397
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v1, Lcom/google/api/client/extensions/android/http/tr/rffuYzZsQ;->nVlIQoVhmNNP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 398
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->isEducationVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    invoke-static {p0, p1}, Lcom/brakefield/painter/ShareManager;->sendToOther(Landroid/content/Context;Ljava/io/File;)V

    return-void

    .line 407
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 408
    new-instance v1, Lcom/brakefield/infinitestudio/CustomDialog;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 410
    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    new-instance v3, Lcom/brakefield/painter/ShareManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lcom/brakefield/painter/ShareManager$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;Ljava/io/File;)V

    const-string v4, "Instagram"

    const v5, 0x7f080478

    invoke-direct {v2, v4, v5, v3}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    const v3, 0x7f120a02

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/ShareManager$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p1}, Lcom/brakefield/painter/ShareManager$$ExternalSyntheticLambda2;-><init>(Landroid/app/Activity;Ljava/io/File;)V

    const v5, 0x7f080420

    invoke-direct {v2, v3, v5, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    new-instance v3, Lcom/brakefield/painter/ShareManager$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Lcom/brakefield/painter/ShareManager$$ExternalSyntheticLambda3;-><init>(Landroid/app/Activity;Ljava/io/File;)V

    const-string p0, ""

    const p1, 0x7f0802c6

    invoke-direct {v2, p0, p1, v3}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/CustomDialog;->show()V

    .line 423
    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/CustomDialog;->setOptions(Ljava/util/List;)V

    return-void

    .line 399
    :cond_2
    :goto_0
    invoke-static {p0, p1}, Lcom/brakefield/painter/ShareManager;->sendToOther(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method public static launchShareOptions(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 3

    const-string/jumbo p2, "preview_full.jpg"

    .line 370
    :try_start_0
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/FileManager;->directoryExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v1, "preview_full"

    if-eqz v0, :cond_0

    .line 371
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 372
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getCachePath()Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-static {p1, v1, v0, p2}, Lcom/brakefield/infinitestudio/FileManager;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 375
    :cond_0
    invoke-static {p1, v1}, Lcom/brakefield/infinitestudio/ProjectZip;->getFile(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 377
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 378
    :try_start_2
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 377
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 383
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 386
    :cond_1
    :goto_1
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getCachePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    invoke-static {p0, p1}, Lcom/brakefield/painter/ShareManager;->launchShareOptions(Landroid/app/Activity;Ljava/io/File;)V

    return-void
.end method

.method public static launchUploadDialog(Landroid/content/Context;)Lcom/brakefield/infinitestudio/account/UploadDialog;
    .locals 1

    .line 427
    new-instance v0, Lcom/brakefield/infinitestudio/account/UploadDialog;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/account/UploadDialog;-><init>(Landroid/content/Context;)V

    .line 428
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/account/UploadDialog;->show()V

    return-object v0
.end method

.method public static sendArtworkToInfiniteStudioAccount(Landroid/app/Activity;Ljava/io/File;)V
    .locals 5

    .line 74
    new-instance v0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getUserSession()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;-><init>(J)V

    .line 75
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->isUserLoggedIn()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 77
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/brakefield/infinitestudio/account/LoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "REGISTER_NEW_USER_KEY"

    .line 78
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "PREF_COMMUNITY_ACCEPTED_TERMS"

    const/4 v4, 0x0

    .line 84
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    new-instance v1, Lcom/brakefield/painter/ShareManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1}, Lcom/brakefield/painter/ShareManager$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;Ljava/io/File;)V

    invoke-static {p0, v1}, Lcom/brakefield/painter/ShareManager;->showUploadPolicy(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 87
    :cond_1
    new-instance v1, Lcom/brakefield/painter/ShareManager$UploadArtworkTask;

    invoke-direct {v1, p0, v0}, Lcom/brakefield/painter/ShareManager$UploadArtworkTask;-><init>(Landroid/content/Context;Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v2, [Ljava/io/File;

    aput-object p1, v0, v4

    invoke-virtual {v1, p0, v0}, Lcom/brakefield/painter/ShareManager$UploadArtworkTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method public static sendBrushToInfiniteStudioAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 126
    new-instance v0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getUserSession()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;-><init>(J)V

    .line 127
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->isUserLoggedIn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/brakefield/infinitestudio/account/LoginActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "REGISTER_NEW_USER_KEY"

    const/4 v0, 0x1

    .line 129
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 132
    :cond_0
    new-instance v1, Lcom/brakefield/painter/ShareManager$UploadBrushTask;

    invoke-direct {v1, p0, v0, p2}, Lcom/brakefield/painter/ShareManager$UploadBrushTask;-><init>(Landroid/content/Context;Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;Ljava/lang/String;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lcom/brakefield/painter/ShareManager$UploadBrushTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method public static sendPaletteToInfiniteStudioAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 138
    new-instance v0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getUserSession()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;-><init>(J)V

    .line 139
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->isUserLoggedIn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/brakefield/infinitestudio/account/LoginActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "REGISTER_NEW_USER_KEY"

    const/4 v0, 0x1

    .line 141
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 144
    :cond_0
    new-instance v1, Lcom/brakefield/painter/ShareManager$UploadPaletteTask;

    invoke-direct {v1, p0, v0, p2}, Lcom/brakefield/painter/ShareManager$UploadPaletteTask;-><init>(Landroid/content/Context;Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;Ljava/lang/String;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lcom/brakefield/painter/ShareManager$UploadPaletteTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method public static sendPatternToInfiniteStudioAccount(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    .line 114
    new-instance v0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getUserSession()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;-><init>(J)V

    .line 115
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->isUserLoggedIn()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 116
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/brakefield/infinitestudio/account/LoginActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "REGISTER_NEW_USER_KEY"

    .line 117
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 120
    :cond_0
    new-instance v1, Lcom/brakefield/painter/ShareManager$UploadPatternTask;

    invoke-direct {v1, p0, v0, p2}, Lcom/brakefield/painter/ShareManager$UploadPatternTask;-><init>(Landroid/content/Context;Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;Ljava/lang/String;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p2, v2, [Ljava/io/File;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-virtual {v1, p0, p2}, Lcom/brakefield/painter/ShareManager$UploadPatternTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method public static sendToInstagram(Landroid/content/Context;Ljava/io/File;)V
    .locals 5

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.instagram.android"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const v0, 0x7f1201eb

    .line 48
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.SEND"

    .line 51
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    const-string v1, "android.intent.extra.TEXT"

    .line 54
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.STREAM"

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Artwork"

    const-string v4, "Created in Infinite Painter"

    .line 55
    invoke-static {v1, p1, v3, v4}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    const-string p1, "image/jpeg"

    .line 61
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 65
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "market://details?id=com.instagram.android"

    .line 67
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public static sendToOther(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    sget-object v1, Lorg/ejml/sparse/csc/decomposition/qr/pB/syaLyE;->VZCwQ:Ljava/lang/String;

    .line 173
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.TEXT"

    const-string v1, "#infinitepainter"

    .line 174
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x7f120a8b

    .line 175
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendToOther(Landroid/content/Context;Ljava/io/File;)V
    .locals 3

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "image/*"

    .line 162
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v1, "com.brakefield.painter.provider"

    .line 163
    invoke-static {p0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.extra.STREAM"

    .line 164
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.TEXT"

    const-string v1, "#infinitepainter"

    .line 165
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x7f120a8b

    .line 166
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendUserProfileImageToInfiniteStudioAccount(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public static showShareSnackBar(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I)V
    .locals 1

    const/4 v0, 0x0

    .line 439
    invoke-static {p1, p3, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    const p3, 0x7f120a8b

    .line 440
    invoke-static {p3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/brakefield/painter/ShareManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2}, Lcom/brakefield/painter/ShareManager$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {p1, p3, v0}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 441
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->themeSnackbar(Lcom/google/android/material/snackbar/Snackbar;)V

    .line 442
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public static showUploadPolicy(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 94
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00b5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v2, 0x7f120020

    .line 100
    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ShareManager$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1, v1}, Lcom/brakefield/painter/ShareManager$$ExternalSyntheticLambda5;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const p0, 0x7f1200f9

    .line 107
    invoke-static {p0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/brakefield/painter/ShareManager$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/brakefield/painter/ShareManager$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 109
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
