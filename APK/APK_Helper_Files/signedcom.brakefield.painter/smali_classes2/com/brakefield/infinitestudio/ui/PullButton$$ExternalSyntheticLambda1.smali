.class public final synthetic Lcom/brakefield/infinitestudio/ui/PullButton$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/ui/PullButton;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/ui/PullButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/infinitestudio/ui/PullButton;

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/infinitestudio/ui/PullButton;->lambda$setupListeners$0$com-brakefield-infinitestudio-ui-PullButton(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
