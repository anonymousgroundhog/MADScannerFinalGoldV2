.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadResourceTask;
.super Landroid/os/AsyncTask;
.source "SVGImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadResourceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Picture;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private resourceId:I

.field final synthetic this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;Landroid/content/Context;I)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadResourceTask;->this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 189
    iput-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadResourceTask;->context:Landroid/content/Context;

    .line 190
    iput p3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadResourceTask;->resourceId:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Picture;
    .locals 1

    .line 197
    :try_start_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadResourceTask;->context:Landroid/content/Context;

    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadResourceTask;->resourceId:I

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->getFromResource(Landroid/content/Context;I)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;

    move-result-object p1
    :try_end_0
    .catch Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 202
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadResourceTask;->resourceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Error loading resource 0x%x: %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SVGImageView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 182
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadResourceTask;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Picture;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Picture;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadResourceTask;->this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;->access$100(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;)V

    .line 211
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadResourceTask;->this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;

    new-instance v1, Landroid/graphics/drawable/PictureDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 182
    check-cast p1, Landroid/graphics/Picture;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGImageView$LoadResourceTask;->onPostExecute(Landroid/graphics/Picture;)V

    return-void
.end method
