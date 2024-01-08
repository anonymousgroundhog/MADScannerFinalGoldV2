.class public final synthetic Lcom/brakefield/painter/ui/MainViewX$12$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/MainViewX$12;

.field public final synthetic f$1:Lcom/brakefield/infinitestudio/sketchbook/Pointer;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/MainViewX$12;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$12$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/ui/MainViewX$12;

    iput-object p2, p0, Lcom/brakefield/painter/ui/MainViewX$12$$ExternalSyntheticLambda0;->f$1:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$12$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/ui/MainViewX$12;

    iget-object v1, p0, Lcom/brakefield/painter/ui/MainViewX$12$$ExternalSyntheticLambda0;->f$1:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/MainViewX$12;->lambda$onEnter$0$com-brakefield-painter-ui-MainViewX$12(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    return-void
.end method
