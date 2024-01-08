.class Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$2;
.super Ljava/lang/Object;
.source "CarouselLayoutManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->drawChild(ILcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 722
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$2;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    iput p2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 725
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$2;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->access$000(Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$2;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->access$000(Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$2;->val$position:I

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$2;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    invoke-virtual {v2, v1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->translatePosition(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, p1, v1, v2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemClickListener;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;II)V

    :cond_0
    return-void
.end method
