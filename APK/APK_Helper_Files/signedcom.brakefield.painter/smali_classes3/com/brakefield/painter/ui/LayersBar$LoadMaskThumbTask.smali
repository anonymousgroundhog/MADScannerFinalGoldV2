.class Lcom/brakefield/painter/ui/LayersBar$LoadMaskThumbTask;
.super Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;
.source "LayersBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/LayersBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMaskThumbTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/LayersBar;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/LayersBar;Lcom/brakefield/painter/ui/LayersBar$LayerRef;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LoadMaskThumbTask;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    .line 633
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;-><init>(Lcom/brakefield/painter/ui/LayersBar;Lcom/brakefield/painter/ui/LayersBar$LayerRef;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 631
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/LayersBar$LoadMaskThumbTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 637
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LoadMaskThumbTask;->layer:Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->refreshMaskThumb()V

    const/4 p1, 0x0

    return-object p1
.end method

.method getId()I
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LoadMaskThumbTask;->layer:Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    invoke-static {v0}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$1000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 631
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/LayersBar$LoadMaskThumbTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 642
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LoadMaskThumbTask;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LoadMaskThumbTask;->layer:Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    invoke-static {v0}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/brakefield/painter/ui/LayersBar;->access$600(Lcom/brakefield/painter/ui/LayersBar;I)Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 644
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LoadMaskThumbTask;->layer:Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    invoke-static {v0}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$900(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$902(Lcom/brakefield/painter/ui/LayersBar$LayerRef;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 645
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LoadMaskThumbTask;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v0, p1}, Lcom/brakefield/painter/ui/LayersBar;->access$800(Lcom/brakefield/painter/ui/LayersBar;Lcom/brakefield/painter/ui/LayersBar$LayerRef;)V

    .line 647
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/LayersBar$LoadMaskThumbTask;->runNextTask()V

    return-void
.end method
