.class Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetThumbTask;
.super Landroid/os/AsyncTask;
.source "ExportedItemsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetThumbTask"
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
.field contentResolver:Landroid/content/ContentResolver;

.field filename:Ljava/lang/String;

.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetThumbTask;->this$0:Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 219
    iput-object p2, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetThumbTask;->imageView:Landroid/widget/ImageView;

    .line 220
    iput-object p3, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetThumbTask;->filename:Ljava/lang/String;

    .line 221
    iput-object p4, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetThumbTask;->contentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 1

    .line 227
    :try_start_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetThumbTask;->contentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetThumbTask;->filename:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;->getThumbnail(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 230
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 212
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetThumbTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 237
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetThumbTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetThumbTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 212
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetThumbTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
