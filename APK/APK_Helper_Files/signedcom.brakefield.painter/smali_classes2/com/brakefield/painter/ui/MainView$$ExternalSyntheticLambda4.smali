.class public final synthetic Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/MainView;

.field public final synthetic f$1:Lcom/brakefield/infinitestudio/sketchbook/Pointer;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/MainView;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda4;->f$0:Lcom/brakefield/painter/ui/MainView;

    iput-object p2, p0, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda4;->f$1:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda4;->f$0:Lcom/brakefield/painter/ui/MainView;

    iget-object v1, p0, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda4;->f$1:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/MainView;->lambda$up$9$com-brakefield-painter-ui-MainView(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    return-void
.end method
