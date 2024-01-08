.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroid/app/Activity;

.field public final synthetic f$3:Lcom/brakefield/painter/PainterProjectStore$Project;

.field public final synthetic f$4:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic f$5:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;Landroid/view/View;Landroid/app/Activity;Lcom/brakefield/painter/PainterProjectStore$Project;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2$$ExternalSyntheticLambda2;->f$2:Landroid/app/Activity;

    iput-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2$$ExternalSyntheticLambda2;->f$3:Lcom/brakefield/painter/PainterProjectStore$Project;

    iput-object p5, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2$$ExternalSyntheticLambda2;->f$4:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p6, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2$$ExternalSyntheticLambda2;->f$5:Lcom/brakefield/painter/ui/SimpleUI;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2$$ExternalSyntheticLambda2;->f$2:Landroid/app/Activity;

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2$$ExternalSyntheticLambda2;->f$3:Lcom/brakefield/painter/PainterProjectStore$Project;

    iget-object v4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2$$ExternalSyntheticLambda2;->f$4:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2$$ExternalSyntheticLambda2;->f$5:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->lambda$onItemClick$1$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController$2(Landroid/view/View;Landroid/app/Activity;Lcom/brakefield/painter/PainterProjectStore$Project;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-void
.end method
