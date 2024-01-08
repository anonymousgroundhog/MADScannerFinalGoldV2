.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

.field public final synthetic f$1:Lcom/brakefield/painter/PainterProjectStore$Project;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Lcom/brakefield/painter/PainterProjectStore$Project;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda19;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda19;->f$1:Lcom/brakefield/painter/PainterProjectStore$Project;

    return-void
.end method


# virtual methods
.method public final onSelected()V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda19;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda19;->f$1:Lcom/brakefield/painter/PainterProjectStore$Project;

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->lambda$getProjectOptions$9$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController(Lcom/brakefield/painter/PainterProjectStore$Project;)V

    return-void
.end method
