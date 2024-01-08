.class Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$3;
.super Ljava/lang/Object;
.source "HomeMainViewController.java"

# interfaces
.implements Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$OnProjectHistoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->getProjectOptions(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/PainterProjectStore$Project;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 231
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$3;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$3;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callDismiss()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$3;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    return-void
.end method

.method public onProjectRestore(Ljava/lang/String;)V
    .locals 2

    .line 234
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/PainterProjectStore;->getProject(Ljava/lang/String;)Lcom/brakefield/painter/PainterProjectStore$Project;

    move-result-object p1

    .line 235
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$3;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->access$200(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 236
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/brakefield/painter/PainterProjectStore;->insertProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;I)V

    .line 237
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$3;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;)Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    .line 238
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/PainterProjectStore;->save()V

    .line 239
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$3;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    return-void
.end method
