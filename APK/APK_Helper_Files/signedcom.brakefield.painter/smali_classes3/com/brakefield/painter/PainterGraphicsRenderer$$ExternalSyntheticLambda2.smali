.class public final synthetic Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/PainterGraphicsRenderer;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/PainterGraphicsRenderer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/painter/PainterGraphicsRenderer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/painter/PainterGraphicsRenderer;

    invoke-virtual {v0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->lambda$renderResizeProject$3$com-brakefield-painter-PainterGraphicsRenderer()V

    return-void
.end method
