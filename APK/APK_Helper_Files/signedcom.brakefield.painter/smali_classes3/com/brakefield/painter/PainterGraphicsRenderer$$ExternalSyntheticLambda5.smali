.class public final synthetic Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/PainterGraphicsRenderer;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/PainterGraphicsRenderer;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda5;->f$0:Lcom/brakefield/painter/PainterGraphicsRenderer;

    iput-object p2, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda5;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda5;->f$0:Lcom/brakefield/painter/PainterGraphicsRenderer;

    iget-object v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda5;->f$1:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/painter/PainterGraphicsRenderer;->lambda$renderSaveBrush$5$com-brakefield-painter-PainterGraphicsRenderer(Landroid/net/Uri;Landroid/view/View;)V

    return-void
.end method
