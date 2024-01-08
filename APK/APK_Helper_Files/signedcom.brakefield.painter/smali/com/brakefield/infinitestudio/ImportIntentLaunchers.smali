.class public Lcom/brakefield/infinitestudio/ImportIntentLaunchers;
.super Ljava/lang/Object;
.source "ImportIntentLaunchers.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ImportIntentLaunchers$GetImageFromGallery;,
        Lcom/brakefield/infinitestudio/ImportIntentLaunchers$GetImageFromCamera;,
        Lcom/brakefield/infinitestudio/ImportIntentLaunchers$GetFile;,
        Lcom/brakefield/infinitestudio/ImportIntentLaunchers$GetImageFromSearch;,
        Lcom/brakefield/infinitestudio/ImportIntentLaunchers$GetImageFromClipboard;,
        Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;,
        Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ParseResultUri;,
        Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ParseResultOutputFileUri;
    }
.end annotation


# instance fields
.field private callback:Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;

.field private cameraLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private clipboardLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final context:Landroid/content/Context;

.field private filesLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private galleryLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private imageSearchLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final registry:Landroidx/activity/result/ActivityResultRegistry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/activity/result/ActivityResultRegistry;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->registry:Landroidx/activity/result/ActivityResultRegistry;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->contentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private getExtraOutputFileUri()Landroid/net/Uri;
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->context:Landroid/content/Context;

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getOutputFileForIntents()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->getFileProviderUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getFileProviderUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public static getUriFromIntentData(Landroid/content/ContentResolver;Landroid/content/Intent;)Landroid/net/Uri;
    .locals 3

    .line 104
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.extra.STREAM"

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    if-eqz v0, :cond_2

    .line 109
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x1

    .line 110
    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0

    :cond_2
    return-object v1
.end method

.method private processUri(Landroid/net/Uri;Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 99
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->context:Landroid/content/Context;

    invoke-interface {p2, v0, p1}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;->processUri(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getFile()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->filesLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->getExtraOutputFileUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public getImageFromCamera()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->cameraLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->getExtraOutputFileUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public getImageFromClipboard()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->clipboardLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->getExtraOutputFileUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public getImageFromGallery()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->galleryLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->getExtraOutputFileUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public getImageFromSearch()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->imageSearchLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->getExtraOutputFileUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$onCreate$0$com-brakefield-infinitestudio-ImportIntentLaunchers(Landroid/net/Uri;)V
    .locals 1

    .line 0
    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->callback:Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;

    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->processUri(Landroid/net/Uri;Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onCreate$1$com-brakefield-infinitestudio-ImportIntentLaunchers(Landroid/net/Uri;)V
    .locals 1

    .line 0
    if-eqz p1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->callback:Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;

    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->processUri(Landroid/net/Uri;Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onCreate$2$com-brakefield-infinitestudio-ImportIntentLaunchers(Landroid/net/Uri;)V
    .locals 1

    .line 0
    if-eqz p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->callback:Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;

    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->processUri(Landroid/net/Uri;Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onCreate$3$com-brakefield-infinitestudio-ImportIntentLaunchers(Landroid/net/Uri;)V
    .locals 1

    .line 0
    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->callback:Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;

    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->processUri(Landroid/net/Uri;Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onCreate$4$com-brakefield-infinitestudio-ImportIntentLaunchers(Landroid/net/Uri;)V
    .locals 1

    .line 0
    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->callback:Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;

    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->processUri(Landroid/net/Uri;Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->registry:Landroidx/activity/result/ActivityResultRegistry;

    const-class v1, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$GetImageFromGallery;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$GetImageFromGallery;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->contentResolver:Landroid/content/ContentResolver;

    invoke-direct {v2, v3}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$GetImageFromGallery;-><init>(Landroid/content/ContentResolver;)V

    new-instance v3, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->galleryLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 54
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->registry:Landroidx/activity/result/ActivityResultRegistry;

    const-class v1, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$GetImageFromCamera;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$GetImageFromCamera;

    invoke-direct {v2}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$GetImageFromCamera;-><init>()V

    new-instance v3, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->cameraLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 57
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->registry:Landroidx/activity/result/ActivityResultRegistry;

    const-class v1, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$GetFile;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$GetFile;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->contentResolver:Landroid/content/ContentResolver;

    invoke-direct {v2, v3}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$GetFile;-><init>(Landroid/content/ContentResolver;)V

    new-instance v3, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->filesLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 60
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->registry:Landroidx/activity/result/ActivityResultRegistry;

    const-class v1, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$GetImageFromSearch;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$GetImageFromSearch;

    invoke-direct {v2}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$GetImageFromSearch;-><init>()V

    new-instance v3, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->imageSearchLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 63
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->registry:Landroidx/activity/result/ActivityResultRegistry;

    const-class v1, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$GetImageFromClipboard;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$GetImageFromClipboard;

    invoke-direct {v2}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$GetImageFromClipboard;-><init>()V

    new-instance v3, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->clipboardLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public setCallback(Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->callback:Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;

    return-void
.end method
