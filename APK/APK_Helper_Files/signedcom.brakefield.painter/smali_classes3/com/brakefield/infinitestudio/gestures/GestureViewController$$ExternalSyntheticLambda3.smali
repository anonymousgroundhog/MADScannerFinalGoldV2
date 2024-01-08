.class public final synthetic Lcom/brakefield/infinitestudio/gestures/GestureViewController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/listeners/SingleTapListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

.field public final synthetic f$1:Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/gestures/GestureViewController;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController$$ExternalSyntheticLambda3;->f$0:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController$$ExternalSyntheticLambda3;->f$1:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onTap(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController$$ExternalSyntheticLambda3;->f$0:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController$$ExternalSyntheticLambda3;->f$1:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->lambda$setOnClickListener$3$com-brakefield-infinitestudio-gestures-GestureViewController(Landroid/view/View$OnClickListener;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
