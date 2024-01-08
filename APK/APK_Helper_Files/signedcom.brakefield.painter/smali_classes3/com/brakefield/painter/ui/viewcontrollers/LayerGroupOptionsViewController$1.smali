.class Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$1;
.super Ljava/lang/Object;
.source "LayerGroupOptionsViewController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;

.field final synthetic val$layerId:I

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;ILcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;

    iput p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$1;->val$layerId:I

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 59
    iget p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$1;->val$layerId:I

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/brakefield/painter/PainterLib;->setLayerOpacity(IF)V

    .line 60
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 67
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->updateLayers()V

    return-void
.end method
