.class public final synthetic Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/listeners/LongpressListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/MainView;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/MainView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda6;->f$0:Lcom/brakefield/painter/ui/MainView;

    return-void
.end method


# virtual methods
.method public final onLongpress(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)Z
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda6;->f$0:Lcom/brakefield/painter/ui/MainView;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/ui/MainView;->lambda$setLongpressListener$6$com-brakefield-painter-ui-MainView(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)Z

    move-result p1

    return p1
.end method
