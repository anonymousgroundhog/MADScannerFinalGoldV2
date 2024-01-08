.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda7;->f$0:I

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda7;->f$0:I

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->lambda$show$8(ILjava/lang/String;Landroid/content/DialogInterface;)V

    return-void
.end method
