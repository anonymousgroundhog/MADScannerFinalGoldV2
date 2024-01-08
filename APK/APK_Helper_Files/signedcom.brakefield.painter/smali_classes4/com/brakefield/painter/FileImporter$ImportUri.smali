.class public Lcom/brakefield/painter/FileImporter$ImportUri;
.super Ljava/lang/Object;
.source "FileImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/FileImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImportUri"
.end annotation


# instance fields
.field public final fileType:Ljava/lang/String;

.field public isCopy:Z

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/brakefield/painter/FileImporter$ImportUri;->uri:Landroid/net/Uri;

    .line 56
    iput-object p2, p0, Lcom/brakefield/painter/FileImporter$ImportUri;->fileType:Ljava/lang/String;

    .line 57
    iput-boolean p3, p0, Lcom/brakefield/painter/FileImporter$ImportUri;->isCopy:Z

    return-void
.end method


# virtual methods
.method public asFile()Ljava/io/File;
    .locals 2

    .line 66
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/brakefield/painter/FileImporter$ImportUri;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public finalize()V
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/brakefield/painter/FileImporter$ImportUri;->isCopy:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/brakefield/painter/FileImporter$ImportUri;->asFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/brakefield/painter/FileImporter$ImportUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
