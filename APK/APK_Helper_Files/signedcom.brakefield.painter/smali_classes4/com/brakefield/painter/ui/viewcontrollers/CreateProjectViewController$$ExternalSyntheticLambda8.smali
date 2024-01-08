.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

.field public final synthetic f$1:Lcom/brakefield/infinitestudio/databinding/RenameBinding;

.field public final synthetic f$2:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;Lcom/brakefield/infinitestudio/databinding/RenameBinding;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda8;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda8;->f$1:Lcom/brakefield/infinitestudio/databinding/RenameBinding;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda8;->f$2:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda8;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda8;->f$1:Lcom/brakefield/infinitestudio/databinding/RenameBinding;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda8;->f$2:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->lambda$changeProjectName$9$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController(Lcom/brakefield/infinitestudio/databinding/RenameBinding;Landroid/widget/TextView;Landroid/content/DialogInterface;I)V

    return-void
.end method
