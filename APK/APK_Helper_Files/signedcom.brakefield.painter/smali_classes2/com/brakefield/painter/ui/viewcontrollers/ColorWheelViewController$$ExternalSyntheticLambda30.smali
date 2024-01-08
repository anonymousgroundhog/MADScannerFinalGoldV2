.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/UIManager$OnSliderProgressChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$OnOpacityChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$OnOpacityChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda30;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$OnOpacityChangeListener;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;FZ)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda30;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$OnOpacityChangeListener;

    invoke-static {v0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->lambda$setupView$22(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$OnOpacityChangeListener;Landroid/widget/SeekBar;FZ)V

    return-void
.end method
