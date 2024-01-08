.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/SimpleUI;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda6;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda6;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;->lambda$promptSave$5(Lcom/brakefield/painter/ui/SimpleUI;Ljava/lang/Runnable;)V

    return-void
.end method
