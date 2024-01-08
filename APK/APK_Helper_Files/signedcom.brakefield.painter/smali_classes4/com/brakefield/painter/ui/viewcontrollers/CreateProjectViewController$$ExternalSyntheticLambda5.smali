.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/components/OnChange;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda5;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    return-void
.end method


# virtual methods
.method public final change(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda5;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->lambda$setupTitleBar$6$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController(Landroid/net/Uri;)V

    return-void
.end method
