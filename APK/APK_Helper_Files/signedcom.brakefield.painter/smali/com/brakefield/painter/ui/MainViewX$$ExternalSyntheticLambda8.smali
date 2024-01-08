.class public final synthetic Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/MainViewX;

.field public final synthetic f$1:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/MainViewX;Lcom/brakefield/infinitestudio/sketchbook/Pointer;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda8;->f$0:Lcom/brakefield/painter/ui/MainViewX;

    iput-object p2, p0, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda8;->f$1:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    iput p3, p0, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda8;->f$2:I

    iput p4, p0, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda8;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda8;->f$0:Lcom/brakefield/painter/ui/MainViewX;

    iget-object v1, p0, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda8;->f$1:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    iget v2, p0, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda8;->f$2:I

    iget v3, p0, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda8;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/brakefield/painter/ui/MainViewX;->lambda$move$8$com-brakefield-painter-ui-MainViewX(Lcom/brakefield/infinitestudio/sketchbook/Pointer;II)V

    return-void
.end method
