.class Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetProjectThumbTask;
.super Landroid/os/AsyncTask;
.source "ExportedItemsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetProjectThumbTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field filename:Ljava/lang/String;

.field imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 247
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 248
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetProjectThumbTask;->imageView:Landroid/widget/ImageView;

    .line 249
    iput-object p2, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetProjectThumbTask;->filename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 2

    .line 254
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetProjectThumbTask;->filename:Ljava/lang/String;

    const-string v0, "preview"

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ProjectZip;->searchZipForFile(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    .line 256
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 259
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 242
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetProjectThumbTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetProjectThumbTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetProjectThumbTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 242
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetProjectThumbTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
