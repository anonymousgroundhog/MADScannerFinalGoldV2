.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;

.field public final synthetic f$1:Lcom/brakefield/painter/databinding/ExportViewControllerBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;Lcom/brakefield/painter/databinding/ExportViewControllerBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$$ExternalSyntheticLambda1;->f$1:Lcom/brakefield/painter/databinding/ExportViewControllerBinding;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$$ExternalSyntheticLambda1;->f$1:Lcom/brakefield/painter/databinding/ExportViewControllerBinding;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->lambda$show$0$com-brakefield-painter-ui-viewcontrollers-ExportViewController(Lcom/brakefield/painter/databinding/ExportViewControllerBinding;Landroid/widget/SeekBar;IZ)V

    return-void
.end method
