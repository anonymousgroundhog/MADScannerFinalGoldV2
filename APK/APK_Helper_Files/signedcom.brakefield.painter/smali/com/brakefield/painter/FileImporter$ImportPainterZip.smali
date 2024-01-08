.class Lcom/brakefield/painter/FileImporter$ImportPainterZip;
.super Ljava/lang/Object;
.source "FileImporter.java"

# interfaces
.implements Lcom/brakefield/painter/FileImporter$ImportFileHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/FileImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImportPainterZip"
.end annotation


# static fields
.field private static final EXTENSION:Ljava/lang/String; = "przp"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/FileImporter$1;)V
    .locals 0

    .line 204
    invoke-direct {p0}, Lcom/brakefield/painter/FileImporter$ImportPainterZip;-><init>()V

    return-void
.end method

.method private process(Lcom/brakefield/painter/nativeobjs/PainterZipNative;)V
    .locals 11

    .line 221
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushPackManager;->getInstance()Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object v0

    .line 222
    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/PainterZipNative;->getBrushFolderCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    if-nez v3, :cond_0

    .line 225
    invoke-virtual {v0}, Lcom/brakefield/painter/brushes/BrushPackManager;->setupIfNeeded()V

    .line 228
    :cond_0
    :try_start_0
    invoke-virtual {p1, v3}, Lcom/brakefield/painter/nativeobjs/PainterZipNative;->getBrushFolderAt(I)Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;

    move-result-object v4

    .line 229
    new-instance v5, Lcom/brakefield/painter/brushes/brushfolders/CustomBrushFolder;

    invoke-direct {v5}, Lcom/brakefield/painter/brushes/brushfolders/CustomBrushFolder;-><init>()V

    .line 230
    invoke-virtual {v4}, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/brakefield/painter/brushes/brushfolders/CustomBrushFolder;->name:Ljava/lang/String;

    .line 231
    invoke-virtual {v4}, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/brakefield/painter/brushes/brushfolders/CustomBrushFolder;->displayName:Ljava/lang/String;

    .line 232
    invoke-virtual {v4}, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->getBrushCount()I

    move-result v6

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    .line 234
    new-instance v8, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    invoke-virtual {v4, v7}, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->getBrushId(I)I

    move-result v9

    invoke-virtual {v4, v7}, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->getBrushName(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v5, v9, v10}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    .line 235
    invoke-virtual {v5, v8}, Lcom/brakefield/painter/brushes/brushfolders/CustomBrushFolder;->add(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 237
    :cond_1
    invoke-virtual {v5}, Lcom/brakefield/painter/brushes/brushfolders/CustomBrushFolder;->save()V

    .line 238
    invoke-virtual {v0, v5}, Lcom/brakefield/painter/brushes/BrushPackManager;->addFolder(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public handle(Landroid/content/Context;Lcom/brakefield/painter/FileImporter$ImportUri;Lcom/brakefield/painter/FileImporter$UriHandler;Lcom/brakefield/painter/FileImporter$MessageHandler;)V
    .locals 0

    .line 210
    invoke-virtual {p2}, Lcom/brakefield/painter/FileImporter$ImportUri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/painter/nativeobjs/PainterZipNative;->load(Ljava/lang/String;)Lcom/brakefield/painter/nativeobjs/PainterZipNative;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 211
    invoke-direct {p0, p1}, Lcom/brakefield/painter/FileImporter$ImportPainterZip;->process(Lcom/brakefield/painter/nativeobjs/PainterZipNative;)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 214
    invoke-interface {p3, p2}, Lcom/brakefield/painter/FileImporter$UriHandler;->handleUri(Lcom/brakefield/painter/FileImporter$ImportUri;)V

    const p1, 0x7f12018b

    .line 215
    invoke-interface {p4, p1}, Lcom/brakefield/painter/FileImporter$MessageHandler;->show(I)V

    goto :goto_1

    :cond_2
    const p1, 0x7f120189

    .line 217
    invoke-interface {p4, p1}, Lcom/brakefield/painter/FileImporter$MessageHandler;->show(I)V

    :goto_1
    return-void
.end method

.method public handles(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "przp"

    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
