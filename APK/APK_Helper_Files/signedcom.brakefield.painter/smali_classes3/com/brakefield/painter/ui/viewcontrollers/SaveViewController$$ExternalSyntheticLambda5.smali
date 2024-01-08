.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda5;->f$0:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda5;->f$0:Landroidx/appcompat/app/AlertDialog;

    invoke-static {v0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;->lambda$promptSave$8(Landroidx/appcompat/app/AlertDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
