.class Lcom/brakefield/painter/ui/SimpleUI$1;
.super Ljava/lang/Object;
.source "SimpleUI.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/SimpleUI;->setupUndoHistorySlider(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field prevIndex:I

.field final synthetic this$0:Lcom/brakefield/painter/ui/SimpleUI;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 733
    iput-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI$1;->this$0:Lcom/brakefield/painter/ui/SimpleUI;

    iput p2, p0, Lcom/brakefield/painter/ui/SimpleUI$1;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 734
    iput p2, p0, Lcom/brakefield/painter/ui/SimpleUI$1;->prevIndex:I

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_2

    .line 738
    iget p1, p0, Lcom/brakefield/painter/ui/SimpleUI$1;->prevIndex:I

    sub-int p1, p2, p1

    .line 739
    iput p2, p0, Lcom/brakefield/painter/ui/SimpleUI$1;->prevIndex:I

    .line 740
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/4 p3, 0x0

    if-gez p1, :cond_0

    :goto_0
    if-ge p3, p2, :cond_1

    .line 743
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->setUndo()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    :goto_1
    if-ge p3, p2, :cond_1

    .line 747
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->setRedo()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 750
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI$1;->this$0:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    :cond_2
    return-void
.end method
