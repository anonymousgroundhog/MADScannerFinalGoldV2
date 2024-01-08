.class public final synthetic Lcom/brakefield/painter/ui/LayersBar$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/SlideGesture$Listener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/LayersBar;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/LayersBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$$ExternalSyntheticLambda4;->f$0:Lcom/brakefield/painter/ui/LayersBar;

    return-void
.end method


# virtual methods
.method public final onSlide(Lcom/brakefield/infinitestudio/gestures/SlideGesture;Landroid/graphics/PointF;F)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$$ExternalSyntheticLambda4;->f$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/brakefield/painter/ui/LayersBar;->lambda$setup$5$com-brakefield-painter-ui-LayersBar(Lcom/brakefield/infinitestudio/gestures/SlideGesture;Landroid/graphics/PointF;F)V

    return-void
.end method
