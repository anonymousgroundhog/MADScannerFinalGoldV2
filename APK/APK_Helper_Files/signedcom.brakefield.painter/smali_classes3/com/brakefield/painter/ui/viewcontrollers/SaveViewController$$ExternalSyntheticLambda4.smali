.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;

.field public final synthetic f$1:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic f$2:Lcom/brakefield/painter/ui/SimpleUI;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;Landroidx/appcompat/app/AlertDialog;Lcom/brakefield/painter/ui/SimpleUI;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda4;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda4;->f$1:Landroidx/appcompat/app/AlertDialog;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda4;->f$2:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda4;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda4;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda4;->f$1:Landroidx/appcompat/app/AlertDialog;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda4;->f$2:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda4;->f$3:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;->lambda$promptSave$7$com-brakefield-painter-ui-viewcontrollers-SaveViewController(Landroidx/appcompat/app/AlertDialog;Lcom/brakefield/painter/ui/SimpleUI;Ljava/lang/Runnable;Landroid/content/DialogInterface;)V

    return-void
.end method
