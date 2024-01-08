.class public final synthetic Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/listeners/LongpressListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/MainViewX;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/MainViewX;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda11;->f$0:Lcom/brakefield/painter/ui/MainViewX;

    return-void
.end method


# virtual methods
.method public final onLongpress(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)Z
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda11;->f$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/ui/MainViewX;->lambda$setLongpressListener$6$com-brakefield-painter-ui-MainViewX(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)Z

    move-result p1

    return p1
.end method
