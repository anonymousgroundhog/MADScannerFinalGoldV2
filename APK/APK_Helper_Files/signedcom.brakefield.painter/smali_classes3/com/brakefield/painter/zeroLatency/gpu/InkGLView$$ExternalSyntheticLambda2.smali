.class public final synthetic Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;

    iput p2, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;

    iget v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda2;->f$1:I

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->lambda$surfaceChanged$0$com-brakefield-painter-zeroLatency-gpu-InkGLView(I)V

    return-void
.end method
