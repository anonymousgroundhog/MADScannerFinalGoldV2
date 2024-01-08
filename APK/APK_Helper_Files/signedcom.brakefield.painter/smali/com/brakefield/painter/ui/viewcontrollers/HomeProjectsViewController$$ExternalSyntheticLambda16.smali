.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

.field public final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic f$2:Landroid/app/Activity;

.field public final synthetic f$3:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroidx/recyclerview/widget/RecyclerView;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda16;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda16;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda16;->f$2:Landroid/app/Activity;

    iput-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda16;->f$3:Lcom/brakefield/painter/ui/SimpleUI;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 4

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda16;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda16;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda16;->f$2:Landroid/app/Activity;

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda16;->f$3:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, v1, v2, v3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->lambda$animateFromEditor$1$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController(Landroidx/recyclerview/widget/RecyclerView;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Z

    move-result v0

    return v0
.end method
