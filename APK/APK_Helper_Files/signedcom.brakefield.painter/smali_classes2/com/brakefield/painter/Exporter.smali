.class public Lcom/brakefield/painter/Exporter;
.super Ljava/lang/Object;
.source "Exporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/Exporter$Type;
    }
.end annotation


# static fields
.field private static final PREF_EXPORTER_JPEG_QUALITY:Ljava/lang/String; = "PREF_EXPORTER_JPEG_QUALITY"

.field private static final PREF_EXPORTER_KEEP_BACKGROUND:Ljava/lang/String; = "PREF_EXPORTER_KEEP_BACKGROUND"

.field private static final PREF_EXPORTER_PROJECT_HISTORY:Ljava/lang/String; = "PREF_EXPORTER_PROJECT_HISTORY"

.field private static final PREF_EXPORTER_PROJECT_TIMELAPSE:Ljava/lang/String; = "PREF_EXPORTER_PROJECT_TIMELAPSE"

.field private static final PREF_EXPORTER_TYPE:Ljava/lang/String; = "PREF_EXPORTER_TYPE"


# instance fields
.field public keepBackground:Z

.field public name:Ljava/lang/String;

.field private final prefs:Landroid/content/SharedPreferences;

.field public quality:I

.field public saveProjectHistory:Z

.field public saveProjectTimelapse:Z

.field public type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lcom/brakefield/painter/Exporter;->type:I

    .line 40
    iput-boolean v0, p0, Lcom/brakefield/painter/Exporter;->keepBackground:Z

    const/16 v1, 0x64

    .line 41
    iput v1, p0, Lcom/brakefield/painter/Exporter;->quality:I

    .line 42
    iput-boolean v0, p0, Lcom/brakefield/painter/Exporter;->saveProjectHistory:Z

    .line 43
    iput-boolean v0, p0, Lcom/brakefield/painter/Exporter;->saveProjectTimelapse:Z

    .line 48
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/Exporter;->prefs:Landroid/content/SharedPreferences;

    .line 49
    invoke-direct {p0}, Lcom/brakefield/painter/Exporter;->loadPrefs()V

    return-void
.end method

.method private loadPrefs()V
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/brakefield/painter/Exporter;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "PREF_EXPORTER_TYPE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/brakefield/painter/Exporter;->type:I

    .line 240
    iget-object v0, p0, Lcom/brakefield/painter/Exporter;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "PREF_EXPORTER_KEEP_BACKGROUND"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/brakefield/painter/Exporter;->keepBackground:Z

    .line 241
    iget-object v0, p0, Lcom/brakefield/painter/Exporter;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "PREF_EXPORTER_JPEG_QUALITY"

    const/16 v3, 0x64

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/brakefield/painter/Exporter;->quality:I

    .line 242
    iget-object v0, p0, Lcom/brakefield/painter/Exporter;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "PREF_EXPORTER_PROJECT_HISTORY"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/brakefield/painter/Exporter;->saveProjectHistory:Z

    .line 243
    iget-object v0, p0, Lcom/brakefield/painter/Exporter;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "PREF_EXPORTER_PROJECT_TIMELAPSE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/brakefield/painter/Exporter;->saveProjectTimelapse:Z

    return-void
.end method

.method private saveImage(Landroid/content/Context;Landroid/view/View;Lcom/brakefield/painter/SharedMessageHandler;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 205
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "image/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p8

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getSharedPicturesDirectory()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v1, p3

    move-object v2, p5

    invoke-static/range {v1 .. v6}, Lcom/brakefield/infinitestudio/FileManager;->getContentUriFromMediaStore(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p5

    .line 208
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Landroid/net/Uri;

    invoke-virtual {p3, p8}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p3

    .line 209
    invoke-virtual {p4, p6, p7, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const p4, 0x7f120a6a

    .line 210
    invoke-static {p1, p2, p5, p4}, Lcom/brakefield/painter/ShareManager;->showShareSnackBar(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getExportPath()Ljava/lang/String;

    move-result-object p2

    const-string p8, ""

    invoke-static {p2, p8}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 213
    new-instance p8, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p8, p2, p5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 215
    invoke-virtual {p4, p6, p7, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 216
    invoke-virtual {p8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/brakefield/infinitestudio/FileManager;->updateGallery(Landroid/content/Context;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/brakefield/painter/SharedMessageHandler;->launchExport(Ljava/lang/String;)V

    move-object p3, p2

    .line 219
    :goto_0
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method private savePrefs()V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/brakefield/painter/Exporter;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREF_EXPORTER_TYPE"

    .line 230
    iget v2, p0, Lcom/brakefield/painter/Exporter;->type:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "PREF_EXPORTER_KEEP_BACKGROUND"

    .line 231
    iget-boolean v2, p0, Lcom/brakefield/painter/Exporter;->keepBackground:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "PREF_EXPORTER_JPEG_QUALITY"

    .line 232
    iget v2, p0, Lcom/brakefield/painter/Exporter;->quality:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "PREF_EXPORTER_PROJECT_HISTORY"

    .line 233
    iget-boolean v2, p0, Lcom/brakefield/painter/Exporter;->saveProjectHistory:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "PREF_EXPORTER_PROJECT_TIMELAPSE"

    .line 234
    iget-boolean v2, p0, Lcom/brakefield/painter/Exporter;->saveProjectTimelapse:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 235
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public run(Landroid/content/Context;Landroid/view/View;Lcom/brakefield/painter/SharedMessageHandler;)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v11, p3

    .line 54
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/painter/Exporter;->savePrefs()V

    .line 56
    iget v0, v10, Lcom/brakefield/painter/Exporter;->type:I

    const-string v4, "Projects"

    const-string v5, "application/com.brakefield.painter.pntr"

    const-string v6, ".pntr"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    .line 182
    :pswitch_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getExportPath()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v10, Lcom/brakefield/painter/Exporter;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCurrentProjectDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCurrentProjectName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lcom/brakefield/painter/PainterLib;->shareProjectAsTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getSharedDocumentsDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/brakefield/painter/Exporter$4;

    invoke-direct {v4, v10, v11, v2, v3}, Lcom/brakefield/painter/Exporter$4;-><init>(Lcom/brakefield/painter/Exporter;Lcom/brakefield/painter/SharedMessageHandler;Landroid/content/Context;Landroid/view/View;)V

    invoke-static {v2, v0, v5, v1, v4}, Lcom/brakefield/painter/ExportManager;->saveFileToStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/brakefield/painter/ExportManager$Callback;)V

    goto/16 :goto_7

    .line 163
    :pswitch_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getExportPath()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v10, Lcom/brakefield/painter/Exporter;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCurrentProjectDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCurrentProjectName()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, v10, Lcom/brakefield/painter/Exporter;->saveProjectHistory:Z

    iget-boolean v8, v10, Lcom/brakefield/painter/Exporter;->saveProjectTimelapse:Z

    invoke-static {v0, v1, v6, v7, v8}, Lcom/brakefield/painter/PainterLib;->shareProject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getSharedDocumentsDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/brakefield/painter/Exporter$3;

    invoke-direct {v4, v10, v11, v2, v3}, Lcom/brakefield/painter/Exporter$3;-><init>(Lcom/brakefield/painter/Exporter;Lcom/brakefield/painter/SharedMessageHandler;Landroid/content/Context;Landroid/view/View;)V

    invoke-static {v2, v0, v5, v1, v4}, Lcom/brakefield/painter/ExportManager;->saveFileToStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/brakefield/painter/ExportManager$Callback;)V

    goto/16 :goto_7

    .line 109
    :pswitch_2
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getExportPath()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v10, Lcom/brakefield/painter/Exporter;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getImageWidth()I

    move-result v0

    .line 111
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getImageHeight()I

    move-result v6

    mul-int v8, v0, v6

    .line 114
    :try_start_0
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getExportPath()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Lcom/brakefield/painter/Exporter;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/brakefield/infinitestudio/FileManager;->getFileOutputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :try_start_1
    new-instance v9, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v9, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v12, 0x0

    .line 117
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->numberOfLayers()I

    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v15, ".png"

    if-ge v12, v13, :cond_1

    .line 119
    :try_start_3
    invoke-static {v12}, Lcom/brakefield/painter/PainterLib;->getLayerId(I)I

    move-result v13

    .line 120
    invoke-static {v13}, Lcom/brakefield/painter/PainterLib;->getLayerWithId(I)[I

    move-result-object v13

    .line 122
    array-length v1, v13

    if-ne v1, v8, :cond_0

    .line 123
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v0, v6, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 124
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getRotation()F

    move-result v13

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isFlipped()Z

    move-result v7

    invoke-static {v1, v13, v7}, Lcom/brakefield/painter/BitmapOrientator;->apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 126
    new-instance v7, Ljava/util/zip/ZipEntry;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Layer "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v9, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 128
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v13, 0x64

    invoke-virtual {v1, v7, v13, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 129
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    .line 133
    invoke-static {v1, v7}, Lcom/brakefield/painter/PainterLib;->getImage(FZ)[I

    move-result-object v1

    .line 135
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v6, v7}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 136
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getRotation()F

    move-result v1

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isFlipped()Z

    move-result v6

    invoke-static {v0, v1, v6}, Lcom/brakefield/painter/BitmapOrientator;->apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    new-instance v1, Ljava/util/zip/ZipEntry;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v10, Lcom/brakefield/painter/Exporter;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v9, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 140
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v0, v1, v6, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 141
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    :try_start_4
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v5, :cond_3

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 114
    :try_start_6
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v6, v0

    :try_start_7
    invoke-virtual {v1, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v5, :cond_2

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v5, v0

    :try_start_9
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    :cond_3
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getSharedDocumentsDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Zipped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/brakefield/painter/Exporter$2;

    invoke-direct {v1, v10, v11, v2, v3}, Lcom/brakefield/painter/Exporter$2;-><init>(Lcom/brakefield/painter/Exporter;Lcom/brakefield/painter/SharedMessageHandler;Landroid/content/Context;Landroid/view/View;)V

    const-string v3, "application/zip"

    invoke-static {v2, v4, v3, v0, v1}, Lcom/brakefield/painter/ExportManager;->saveFileToStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/brakefield/painter/ExportManager$Callback;)V

    goto/16 :goto_7

    .line 90
    :pswitch_3
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getExportPath()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v10, Lcom/brakefield/painter/Exporter;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".psd"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->savePSD(Ljava/lang/String;)V

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getSharedDocumentsDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Photoshop"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/brakefield/painter/Exporter$1;

    invoke-direct {v4, v10, v11, v2, v3}, Lcom/brakefield/painter/Exporter$1;-><init>(Lcom/brakefield/painter/Exporter;Lcom/brakefield/painter/SharedMessageHandler;Landroid/content/Context;Landroid/view/View;)V

    const-string v3, "application/photoshop"

    invoke-static {v2, v0, v3, v1, v4}, Lcom/brakefield/painter/ExportManager;->saveFileToStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/brakefield/painter/ExportManager$Callback;)V

    goto :goto_7

    .line 61
    :pswitch_4
    iget-boolean v1, v10, Lcom/brakefield/painter/Exporter;->keepBackground:Z

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    move v7, v4

    goto :goto_4

    :cond_4
    move v7, v1

    .line 64
    :goto_4
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getImageWidth()I

    move-result v0

    .line 65
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getImageHeight()I

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 67
    invoke-static {v4, v7}, Lcom/brakefield/painter/PainterLib;->getImage(FZ)[I

    move-result-object v4

    .line 69
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getRotation()F

    move-result v1

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isFlipped()Z

    move-result v4

    invoke-static {v0, v1, v4}, Lcom/brakefield/painter/BitmapOrientator;->apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 72
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 73
    iget v1, v10, Lcom/brakefield/painter/Exporter;->type:I

    const/4 v4, 0x4

    if-nez v1, :cond_5

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_5

    :cond_5
    if-ne v1, v4, :cond_6

    .line 74
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    :cond_6
    :goto_5
    move-object v7, v0

    :try_start_a
    const-string v0, "jpg"

    .line 78
    iget v1, v10, Lcom/brakefield/painter/Exporter;->type:I

    if-nez v1, :cond_7

    const-string/jumbo v0, "png"

    goto :goto_6

    :cond_7
    if-ne v1, v4, :cond_8

    const-string/jumbo v0, "webp"

    :cond_8
    :goto_6
    move-object v9, v0

    .line 81
    iget-object v6, v10, Lcom/brakefield/painter/Exporter;->name:Ljava/lang/String;

    iget v8, v10, Lcom/brakefield/painter/Exporter;->quality:I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v9}, Lcom/brakefield/painter/Exporter;->saveImage(Landroid/content/Context;Landroid/view/View;Lcom/brakefield/painter/SharedMessageHandler;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 199
    :goto_7
    invoke-interface/range {p3 .. p3}, Lcom/brakefield/painter/SharedMessageHandler;->dismissProgress()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
