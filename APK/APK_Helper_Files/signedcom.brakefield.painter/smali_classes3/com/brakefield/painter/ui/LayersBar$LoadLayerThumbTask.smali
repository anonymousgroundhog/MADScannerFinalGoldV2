.class Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;
.super Landroid/os/AsyncTask;
.source "LayersBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/LayersBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadLayerThumbTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field layer:Lcom/brakefield/painter/ui/LayersBar$LayerRef;

.field final synthetic this$0:Lcom/brakefield/painter/ui/LayersBar;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/LayersBar;Lcom/brakefield/painter/ui/LayersBar$LayerRef;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 602
    iput-object p2, p0, Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;->layer:Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 599
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 606
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;->layer:Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->refreshLayerThumb()V

    const/4 p1, 0x0

    return-object p1
.end method

.method getId()I
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;->layer:Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    invoke-static {v0}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 599
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 611
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;->layer:Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    invoke-static {v0}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/brakefield/painter/ui/LayersBar;->access$600(Lcom/brakefield/painter/ui/LayersBar;I)Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 613
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;->layer:Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    invoke-static {v0}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$700(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$702(Lcom/brakefield/painter/ui/LayersBar$LayerRef;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 614
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v0, p1}, Lcom/brakefield/painter/ui/LayersBar;->access$800(Lcom/brakefield/painter/ui/LayersBar;Lcom/brakefield/painter/ui/LayersBar$LayerRef;)V

    .line 616
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;->runNextTask()V

    return-void
.end method

.method runNextTask()V
    .locals 3

    .line 619
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/brakefield/painter/ui/LayersBar;->access$402(Lcom/brakefield/painter/ui/LayersBar;Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;)Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;

    .line 620
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/LayersBar;->access$500(Lcom/brakefield/painter/ui/LayersBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/LayersBar;->access$500(Lcom/brakefield/painter/ui/LayersBar;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;

    .line 622
    iget-object v2, p0, Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v2, v0}, Lcom/brakefield/painter/ui/LayersBar;->access$402(Lcom/brakefield/painter/ui/LayersBar;Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;)Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;

    .line 623
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
