.class Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$1;
.super Ljava/lang/Object;
.source "CarouselLayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

.field final synthetic val$pendingTasks:Ljava/util/Queue;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 554
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$1;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$1;->val$pendingTasks:Ljava/util/Queue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 557
    :goto_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$1;->val$pendingTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$1;->val$pendingTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method
