.class Lcom/brakefield/painter/experiments/MockValueProvider$1;
.super Landroid/os/Handler;
.source "MockValueProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/experiments/MockValueProvider;->changeValuesDelayed(Lcom/brakefield/painter/experiments/Values;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/experiments/MockValueProvider;

.field final synthetic val$values:Lcom/brakefield/painter/experiments/Values;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/experiments/MockValueProvider;Landroid/os/Looper;Lcom/brakefield/painter/experiments/Values;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/brakefield/painter/experiments/MockValueProvider$1;->this$0:Lcom/brakefield/painter/experiments/MockValueProvider;

    iput-object p3, p0, Lcom/brakefield/painter/experiments/MockValueProvider$1;->val$values:Lcom/brakefield/painter/experiments/Values;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 27
    iget-object p1, p0, Lcom/brakefield/painter/experiments/MockValueProvider$1;->this$0:Lcom/brakefield/painter/experiments/MockValueProvider;

    iget-object v0, p0, Lcom/brakefield/painter/experiments/MockValueProvider$1;->val$values:Lcom/brakefield/painter/experiments/Values;

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/experiments/MockValueProvider;->updateValues(Lcom/brakefield/painter/experiments/Values;)V

    const-string p1, "--------- Mock Values 4 ----------"

    .line 29
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    .line 30
    iget-object p1, p0, Lcom/brakefield/painter/experiments/MockValueProvider$1;->val$values:Lcom/brakefield/painter/experiments/Values;

    invoke-virtual {p1}, Lcom/brakefield/painter/experiments/Values;->log()V

    return-void
.end method
