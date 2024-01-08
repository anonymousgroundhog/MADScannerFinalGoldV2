.class public final synthetic Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/sketchbook/Camera$ZoomConstraint;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/PainterGraphicsRenderer;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/PainterGraphicsRenderer;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda4;->f$0:Lcom/brakefield/painter/PainterGraphicsRenderer;

    iput p2, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda4;->f$1:F

    return-void
.end method


# virtual methods
.method public final getMaxZoom()F
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda4;->f$0:Lcom/brakefield/painter/PainterGraphicsRenderer;

    iget v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda4;->f$1:F

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/PainterGraphicsRenderer;->lambda$renderLoadProject$4$com-brakefield-painter-PainterGraphicsRenderer(F)F

    move-result v0

    return v0
.end method
