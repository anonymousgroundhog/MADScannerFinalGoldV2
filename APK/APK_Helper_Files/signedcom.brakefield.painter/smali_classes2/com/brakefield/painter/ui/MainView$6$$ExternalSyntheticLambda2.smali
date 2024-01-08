.class public final synthetic Lcom/brakefield/painter/ui/MainView$6$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/MainView$6;

.field public final synthetic f$1:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

.field public final synthetic f$2:Lcom/brakefield/infinitestudio/sketchbook/Pointer;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/MainView$6;Lcom/brakefield/infinitestudio/sketchbook/Pointer;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/MainView$6$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/painter/ui/MainView$6;

    iput-object p2, p0, Lcom/brakefield/painter/ui/MainView$6$$ExternalSyntheticLambda2;->f$1:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    iput-object p3, p0, Lcom/brakefield/painter/ui/MainView$6$$ExternalSyntheticLambda2;->f$2:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$6$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/painter/ui/MainView$6;

    iget-object v1, p0, Lcom/brakefield/painter/ui/MainView$6$$ExternalSyntheticLambda2;->f$1:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    iget-object v2, p0, Lcom/brakefield/painter/ui/MainView$6$$ExternalSyntheticLambda2;->f$2:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/MainView$6;->lambda$onMove$1$com-brakefield-painter-ui-MainView$6(Lcom/brakefield/infinitestudio/sketchbook/Pointer;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    return-void
.end method
