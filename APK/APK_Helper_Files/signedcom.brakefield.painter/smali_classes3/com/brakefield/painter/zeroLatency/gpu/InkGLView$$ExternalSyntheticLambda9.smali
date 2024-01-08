.class public final synthetic Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;

.field public final synthetic f$1:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda9;->f$0:Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;

    iput-object p2, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda9;->f$1:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda9;->f$0:Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;

    iget-object v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda9;->f$1:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->lambda$onTouchFinger$3$com-brakefield-painter-zeroLatency-gpu-InkGLView(Landroid/view/MotionEvent;)V

    return-void
.end method
