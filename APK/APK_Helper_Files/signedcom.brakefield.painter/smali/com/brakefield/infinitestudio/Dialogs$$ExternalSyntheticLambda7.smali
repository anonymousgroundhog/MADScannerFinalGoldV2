.class public final synthetic Lcom/brakefield/infinitestudio/Dialogs$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/ui/components/OnChange;

.field public final synthetic f$1:Lcom/brakefield/infinitestudio/databinding/RenameBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;Lcom/brakefield/infinitestudio/databinding/RenameBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/Dialogs$$ExternalSyntheticLambda7;->f$0:Lcom/brakefield/infinitestudio/ui/components/OnChange;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/Dialogs$$ExternalSyntheticLambda7;->f$1:Lcom/brakefield/infinitestudio/databinding/RenameBinding;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/Dialogs$$ExternalSyntheticLambda7;->f$0:Lcom/brakefield/infinitestudio/ui/components/OnChange;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/Dialogs$$ExternalSyntheticLambda7;->f$1:Lcom/brakefield/infinitestudio/databinding/RenameBinding;

    invoke-static {v0, v1, p1, p2}, Lcom/brakefield/infinitestudio/Dialogs;->lambda$showInputDialog$0(Lcom/brakefield/infinitestudio/ui/components/OnChange;Lcom/brakefield/infinitestudio/databinding/RenameBinding;Landroid/content/DialogInterface;I)V

    return-void
.end method
