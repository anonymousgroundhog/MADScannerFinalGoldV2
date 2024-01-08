.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadURITask;
.super Landroid/os/AsyncTask;
.source "SVGImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadURITask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/io/InputStream;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Picture;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;


# direct methods
.method private constructor <init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadURITask;->this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$1;)V
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadURITask;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/io/InputStream;)Landroid/graphics/Picture;
    .locals 5

    const-string v0, "Parse error loading URI: "

    const/4 v1, 0x0

    .line 266
    :try_start_0
    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->getFromInputStream(Ljava/io/InputStream;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    move-result-object v2

    .line 267
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;

    move-result-object v0
    :try_end_0
    .catch Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :try_start_1
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    const-string v3, "SVGImageView"

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    :try_start_3
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_4
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 280
    :catch_3
    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 260
    check-cast p1, [Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadURITask;->doInBackground([Ljava/io/InputStream;)Landroid/graphics/Picture;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Picture;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadURITask;->this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;->access$100(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;)V

    .line 288
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadURITask;->this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;

    new-instance v1, Landroid/graphics/drawable/PictureDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 260
    check-cast p1, Landroid/graphics/Picture;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadURITask;->onPostExecute(Landroid/graphics/Picture;)V

    return-void
.end method
