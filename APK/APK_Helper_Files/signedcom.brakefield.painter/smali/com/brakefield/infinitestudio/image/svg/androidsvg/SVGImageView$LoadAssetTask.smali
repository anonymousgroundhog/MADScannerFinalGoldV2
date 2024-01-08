.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadAssetTask;
.super Landroid/os/AsyncTask;
.source "SVGImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAssetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Picture;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private filename:Ljava/lang/String;

.field final synthetic this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadAssetTask;->this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 224
    iput-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadAssetTask;->context:Landroid/content/Context;

    .line 225
    iput-object p3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadAssetTask;->filename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Picture;
    .locals 3

    const-string p1, "SVGImageView"

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadAssetTask;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadAssetTask;->filename:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->getFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;

    move-result-object p1
    :try_end_0
    .catch Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to load asset file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadAssetTask;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 241
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "File not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadAssetTask;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error loading file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadAssetTask;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 217
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadAssetTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Picture;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Picture;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadAssetTask;->this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;->access$100(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;)V

    .line 254
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadAssetTask;->this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;

    new-instance v1, Landroid/graphics/drawable/PictureDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 217
    check-cast p1, Landroid/graphics/Picture;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadAssetTask;->onPostExecute(Landroid/graphics/Picture;)V

    return-void
.end method
