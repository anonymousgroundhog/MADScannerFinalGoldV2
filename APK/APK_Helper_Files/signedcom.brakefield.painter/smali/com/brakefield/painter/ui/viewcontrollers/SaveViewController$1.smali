.class Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$1;
.super Ljava/lang/Object;
.source "SaveViewController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;->promptSave(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;

.field final synthetic val$positiveButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$1;->val$positiveButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;)Lcom/brakefield/painter/databinding/SaveViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SaveViewControllerBinding;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 102
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$1;->val$positiveButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setActivated(Z)V

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/brakefield/infinitestudio/FileManager;->directoryExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "preview"

    if-eqz v2, :cond_1

    .line 115
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 117
    :cond_1
    invoke-static {p1, v3}, Lcom/brakefield/infinitestudio/ProjectZip;->getFile(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_2

    .line 118
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 122
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;)Lcom/brakefield/painter/databinding/SaveViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SaveViewControllerBinding;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;)Lcom/brakefield/painter/databinding/SaveViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SaveViewControllerBinding;->imageView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    goto :goto_1

    .line 125
    :cond_3
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;)Lcom/brakefield/painter/databinding/SaveViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SaveViewControllerBinding;->imageView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    :goto_1
    return-void

    .line 103
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$1;->val$positiveButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setActivated(Z)V

    .line 104
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;)Lcom/brakefield/painter/databinding/SaveViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SaveViewControllerBinding;->imageView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setGone(Landroid/view/View;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
