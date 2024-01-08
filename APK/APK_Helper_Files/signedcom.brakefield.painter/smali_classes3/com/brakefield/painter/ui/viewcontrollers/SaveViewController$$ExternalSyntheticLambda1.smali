.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;

.field public final synthetic f$1:Lcom/brakefield/painter/ui/SimpleUI;

.field public final synthetic f$2:Ljava/lang/Runnable;

.field public final synthetic f$3:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;Lcom/brakefield/painter/ui/SimpleUI;Ljava/lang/Runnable;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda1;->f$1:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda1;->f$3:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda1;->f$1:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda1;->f$3:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;->lambda$promptSave$6$com-brakefield-painter-ui-viewcontrollers-SaveViewController(Lcom/brakefield/painter/ui/SimpleUI;Ljava/lang/Runnable;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
