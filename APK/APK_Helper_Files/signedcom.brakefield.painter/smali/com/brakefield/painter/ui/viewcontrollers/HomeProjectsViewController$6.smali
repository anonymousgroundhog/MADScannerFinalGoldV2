.class Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$6;
.super Ljava/lang/Object;
.source "HomeProjectsViewController.java"

# interfaces
.implements Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$OnProjectHistoryListener;


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

.field final synthetic val$project:Lcom/brakefield/painter/PainterProjectStore$Project;

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Lcom/brakefield/painter/PainterProjectStore$Project;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 416
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$6;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$6;->val$project:Lcom/brakefield/painter/PainterProjectStore$Project;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$6;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callDismiss()V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$6;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    return-void
.end method

.method public onProjectRestore(Ljava/lang/String;)V
    .locals 3

    .line 419
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$6;->val$project:Lcom/brakefield/painter/PainterProjectStore$Project;

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/PainterProjectStore;->indexOfProject(Ljava/lang/Object;)I

    move-result v0

    .line 420
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v1

    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/brakefield/painter/PainterProjectStore;->getProject(Ljava/lang/String;)Lcom/brakefield/painter/PainterProjectStore$Project;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/brakefield/painter/PainterProjectStore;->insertProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;I)V

    .line 421
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$6;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;)Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    .line 422
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/PainterProjectStore;->save()V

    .line 423
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$6;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    return-void
.end method
