.class Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$5;
.super Ljava/lang/Object;
.source "HomeProjectsViewController.java"

# interfaces
.implements Lcom/brakefield/painter/ExportManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->getProjectOptions(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/PainterProjectStore$Project;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 389
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$5;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$5;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$5;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSavedToExternalStorage(Ljava/lang/String;)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$5;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->getSharedMessageHandler()Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/brakefield/painter/SharedMessageHandler;->launchExport(Ljava/lang/String;)V

    return-void
.end method

.method public onSavedToSharedStorage(Landroid/net/Uri;)V
    .locals 3

    .line 392
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$5;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$5;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v1}, Lcom/brakefield/painter/ui/SimpleUI;->getHoverContainer()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f120a68

    invoke-static {v0, v1, p1, v2}, Lcom/brakefield/painter/ShareManager;->showShareSnackBar(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I)V

    return-void
.end method
