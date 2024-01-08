.class Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$3;
.super Ljava/lang/Object;
.source "CarouselLayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->scrollToPosition(I)V
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

    .line 761
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$3;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    iput p2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 764
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$3;->this$0:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$3;->val$position:I

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->scrollToPosition(I)V

    return-void
.end method
