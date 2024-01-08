.class Lcom/brakefield/infinitestudio/ui/UIManager$2;
.super Ljava/lang/Object;
.source "UIManager.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/UIManager$2;->val$listener:Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/UIManager$2;->val$listener:Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

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
