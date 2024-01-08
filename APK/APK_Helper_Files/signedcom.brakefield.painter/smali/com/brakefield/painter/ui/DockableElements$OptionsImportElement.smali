.class public Lcom/brakefield/painter/ui/DockableElements$OptionsImportElement;
.super Lcom/brakefield/painter/ui/DockableElements$DockableElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionsImportElement"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1806
    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;-><init>()V

    return-void
.end method

.method static synthetic lambda$handleClick$0(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/FileImporter$ImportUri;)V
    .locals 1

    .line 1824
    iget-object v0, p2, Lcom/brakefield/painter/FileImporter$ImportUri;->fileType:Ljava/lang/String;

    invoke-static {v0}, Lcom/brakefield/painter/FileImporter;->isImageFileType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1825
    iget-object p2, p2, Lcom/brakefield/painter/FileImporter$ImportUri;->uri:Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->showImageImportOptionsForProject(Landroid/app/Activity;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$handleClick$1(Landroid/view/View;I)V
    .locals 1

    .line 1828
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$handleClick$2(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 1823
    new-instance p3, Lcom/brakefield/painter/ui/DockableElements$OptionsImportElement$$ExternalSyntheticLambda1;

    invoke-direct {p3, p1, p0}, Lcom/brakefield/painter/ui/DockableElements$OptionsImportElement$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    new-instance p1, Lcom/brakefield/painter/ui/DockableElements$OptionsImportElement$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2}, Lcom/brakefield/painter/ui/DockableElements$OptionsImportElement$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    invoke-static {p0, p4, p3, p1}, Lcom/brakefield/painter/FileImporter;->processUri(Landroid/content/Context;Landroid/net/Uri;Lcom/brakefield/painter/FileImporter$UriHandler;Lcom/brakefield/painter/FileImporter$MessageHandler;)V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0xcb

    return v0
.end method

.method public getResourceId()I
    .locals 1

    const v0, 0x7f08027a

    return v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    const v0, 0x7f120211

    .line 1814
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUIBindingKey()I
    .locals 1

    const v0, 0x7f1206db

    return v0
.end method

.method protected handleClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 2

    .line 1822
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getImportIntentLaunchers()Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    move-result-object v0

    new-instance v1, Lcom/brakefield/painter/ui/DockableElements$OptionsImportElement$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3}, Lcom/brakefield/painter/ui/DockableElements$OptionsImportElement$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V

    invoke-static {p1, p3, v0, v1}, Lcom/brakefield/infinitestudio/ImportOptions;->showOptions(Landroid/app/Activity;Landroid/view/View;Lcom/brakefield/infinitestudio/ImportIntentLaunchers;Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;)V

    .line 1830
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    return-void
.end method
