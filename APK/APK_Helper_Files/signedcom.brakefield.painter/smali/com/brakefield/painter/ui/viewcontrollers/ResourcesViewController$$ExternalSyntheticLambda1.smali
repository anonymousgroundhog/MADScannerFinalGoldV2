.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$$ExternalSyntheticLambda1;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final processUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$$ExternalSyntheticLambda1;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->lambda$getView$3$com-brakefield-painter-ui-viewcontrollers-ResourcesViewController(Landroid/app/Activity;Landroid/view/View;Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
