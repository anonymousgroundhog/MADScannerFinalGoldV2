.class Lcom/infinite/app/ui/Slider$1;
.super Ljava/lang/Object;
.source "Slider.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infinite/app/ui/Slider;->bindProgressChangeListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infinite/app/ui/Slider;

.field final synthetic val$listener:Lcom/infinite/app/ui/interactions/FloatChangeInteraction;


# direct methods
.method constructor <init>(Lcom/infinite/app/ui/Slider;Lcom/infinite/app/ui/interactions/FloatChangeInteraction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/infinite/app/ui/Slider$1;->this$0:Lcom/infinite/app/ui/Slider;

    iput-object p2, p0, Lcom/infinite/app/ui/Slider$1;->val$listener:Lcom/infinite/app/ui/interactions/FloatChangeInteraction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 75
    iget-object p3, p0, Lcom/infinite/app/ui/Slider$1;->val$listener:Lcom/infinite/app/ui/interactions/FloatChangeInteraction;

    iget-object v0, p0, Lcom/infinite/app/ui/Slider$1;->this$0:Lcom/infinite/app/ui/Slider;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    invoke-static {v0, p2, p1}, Lcom/infinite/app/ui/Slider;->access$000(Lcom/infinite/app/ui/Slider;II)F

    move-result p1

    iget-object p2, p0, Lcom/infinite/app/ui/Slider$1;->this$0:Lcom/infinite/app/ui/Slider;

    iget-wide v0, p2, Lcom/infinite/app/ui/Slider;->target:J

    invoke-virtual {p3, p1, v0, v1}, Lcom/infinite/app/ui/interactions/FloatChangeInteraction;->onValueChanged(FJ)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
