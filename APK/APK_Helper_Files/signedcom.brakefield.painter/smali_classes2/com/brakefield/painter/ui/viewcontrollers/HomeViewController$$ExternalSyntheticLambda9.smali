.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda9;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;

    iput p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda9;->f$1:I

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda9;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;

    iget v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda9;->f$1:I

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->lambda$getView$7$com-brakefield-painter-ui-viewcontrollers-HomeViewController(I)V

    return-void
.end method
