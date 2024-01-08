.class Lcom/brakefield/painter/FileImporter$ImportColorPalette;
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
    name = "ImportColorPalette"
.end annotation


# static fields
.field private static final EXTENSION:Ljava/lang/String; = "clrs"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/FileImporter$1;)V
    .locals 0

    .line 244
    invoke-direct {p0}, Lcom/brakefield/painter/FileImporter$ImportColorPalette;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/content/Context;Lcom/brakefield/painter/FileImporter$ImportUri;Lcom/brakefield/painter/FileImporter$UriHandler;Lcom/brakefield/painter/FileImporter$MessageHandler;)V
    .locals 0

    .line 250
    invoke-virtual {p2}, Lcom/brakefield/painter/FileImporter$ImportUri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->importPaletteFile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 251
    invoke-interface {p3, p2}, Lcom/brakefield/painter/FileImporter$UriHandler;->handleUri(Lcom/brakefield/painter/FileImporter$ImportUri;)V

    const p1, 0x7f12018b

    .line 252
    invoke-interface {p4, p1}, Lcom/brakefield/painter/FileImporter$MessageHandler;->show(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f120189

    .line 254
    invoke-interface {p4, p1}, Lcom/brakefield/painter/FileImporter$MessageHandler;->show(I)V

    :goto_0
    return-void
.end method

.method public handles(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "clrs"

    .line 247
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
