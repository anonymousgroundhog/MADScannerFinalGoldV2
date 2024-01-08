.class public Lcom/brakefield/painter/ExportManager;
.super Ljava/lang/Object;
.source "ExportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ExportManager$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static saveFileToStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/brakefield/painter/ExportManager$Callback;)V
    .locals 8

    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 21
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string p0, "external"

    invoke-static {p0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object v2, v0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v7}, Lcom/brakefield/infinitestudio/FileManager;->copyFileToMediaStore(Ljava/io/File;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    if-eqz p0, :cond_1

    .line 25
    invoke-interface {p4, p0}, Lcom/brakefield/painter/ExportManager$Callback;->onSavedToSharedStorage(Landroid/net/Uri;)V

    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {p4, p1}, Lcom/brakefield/painter/ExportManager$Callback;->onSavedToExternalStorage(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
