.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroid/app/Activity;Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda2;->f$2:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    return-void
.end method


# virtual methods
.method public final onSelected()V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda2;->f$2:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->lambda$getProjectFolderOptions$3$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController(Landroid/app/Activity;Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)V

    return-void
.end method
