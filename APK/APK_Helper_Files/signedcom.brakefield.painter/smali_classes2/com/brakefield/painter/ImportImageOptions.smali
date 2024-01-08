.class public Lcom/brakefield/painter/ImportImageOptions;
.super Ljava/lang/Object;
.source "ImportImageOptions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAddImageAsLayerOption(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/net/Uri;)Lcom/brakefield/infinitestudio/MenuOption;
    .locals 3

    .line 51
    new-instance v0, Lcom/brakefield/infinitestudio/MenuOption;

    const v1, 0x7f120232

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/ImportImageOptions$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p0, p2}, Lcom/brakefield/painter/ImportImageOptions$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/net/Uri;)V

    const p0, 0x7f08027f

    invoke-direct {v0, v1, p0, v2}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    return-object v0
.end method

.method private static getAddImageAsReferenceOption(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/net/Uri;)Lcom/brakefield/infinitestudio/MenuOption;
    .locals 3

    .line 61
    new-instance v0, Lcom/brakefield/infinitestudio/MenuOption;

    const v1, 0x7f120a41

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/ImportImageOptions$$ExternalSyntheticLambda1;

    invoke-direct {v2, p2, p1, p0}, Lcom/brakefield/painter/ImportImageOptions$$ExternalSyntheticLambda1;-><init>(Landroid/net/Uri;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    const p0, 0x7f080438

    invoke-direct {v0, v1, p0, v2}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    return-object v0
.end method

.method public static handleUri(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/net/Uri;)V
    .locals 3

    .line 25
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 26
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 27
    :try_start_0
    invoke-static {p0, p2}, Lcom/brakefield/infinitestudio/FileManager;->resolveInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .line 28
    :try_start_1
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 29
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    .line 27
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 32
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 34
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 35
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_2

    .line 39
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    new-instance v1, Lcom/brakefield/infinitestudio/CustomDialog;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-static {p0, p1, p2}, Lcom/brakefield/painter/ImportImageOptions;->getAddImageAsLayerOption(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/net/Uri;)Lcom/brakefield/infinitestudio/MenuOption;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-static {p0, p1, p2}, Lcom/brakefield/painter/ImportImageOptions;->getAddImageAsReferenceOption(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/net/Uri;)Lcom/brakefield/infinitestudio/MenuOption;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/CustomDialog;->show()V

    .line 46
    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/CustomDialog;->setOptions(Ljava/util/List;)V

    const p0, 0x7f120210

    .line 47
    invoke-static {p0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/brakefield/infinitestudio/CustomDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    return-void
.end method

.method static synthetic lambda$getAddImageAsLayerOption$0(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->atMaxLayers(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 53
    sput p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->importType:I

    .line 54
    sput-object p2, Lcom/brakefield/painter/PainterGraphicsRenderer;->importImage:Landroid/net/Uri;

    .line 55
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$getAddImageAsReferenceOption$1(Landroid/net/Uri;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V
    .locals 0

    .line 62
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->importReference:Ljava/lang/String;

    .line 63
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 64
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method
