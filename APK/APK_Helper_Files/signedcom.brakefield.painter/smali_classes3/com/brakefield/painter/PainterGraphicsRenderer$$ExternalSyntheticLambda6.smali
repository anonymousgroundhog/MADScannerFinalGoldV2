.class public final synthetic Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/ImageView;

.field public final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda6;->f$0:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda6;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda6;->f$0:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda6;->f$1:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/brakefield/painter/PainterGraphicsRenderer;->lambda$renderUpdateBrushPreview$7(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method
