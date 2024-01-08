.class public final synthetic Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/listeners/DoubleTapListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/MainView;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/MainView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda9;->f$0:Lcom/brakefield/painter/ui/MainView;

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda9;->f$0:Lcom/brakefield/painter/ui/MainView;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/ui/MainView;->lambda$setDoubleTapListener$4$com-brakefield-painter-ui-MainView(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
